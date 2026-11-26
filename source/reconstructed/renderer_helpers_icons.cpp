#include "renderer_helpers_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class F>void need(const F& f,Rva at,Rva target){if(!f){ __builtin_trap(); }}
bool valid(Address object,RendererIconBackend& b,Rva at){if(!sample_pointer_range(object))return false;need(b.implicit_2ccc0c,at,0x2ccc0c);return b.implicit_2ccc0c(object);}
}
bool renderer_bundle_2cc8ac_2ccb6c(RendererIconState& state,RendererIconBackend& b) {
    if(state.bundle_3d6168&&valid(state.bundle_3d6168,b,0x2cc8bc))return true;
    state.bundle_3d6168=0;
    if(state.attempted_3d6161)return false;
    state.attempted_3d6161=true;
    need(b.embedded_bundle_375c08,0x2ccbaf,0x375c08);
    const auto object=b.embedded_bundle_375c08(0x35c0,0x21514e,0);
    if(object&&valid(object,b,0x2ccbbf)){state.bundle_3d6168=object;return true;}
    return false;
}
bool renderer_load_icon_2ccd14(re::ReStringView key,RendererIcon& output,RendererIconState& state,RendererIconBackend& b) {
    if(!renderer_bundle_2cc8ac_2ccb6c(state,b))return false;
    const auto nul=key.find('\0');if(nul!=re::ReStringView::npos)key=key.substr(0,nul);
    const auto path=re::ReString("assets/_iconstage/")+re::ReString(key)+".png";
    need(b.runtime_type_2ccbdc,0x2ccddc,0x2ccbdc);const auto type=b.runtime_type_2ccbdc("Texture2D","UnityEngine");
    need(b.load_asset_2caf28,0x2ccdfa,0x2caf28);const auto object=b.load_asset_2caf28(state.bundle_3d6168,path,type);
    if(!object||!valid(object,b,0x2cce0a))return false;
    need(b.width_2cae88,0x2cce16,0x2cae88);const float width=float(b.width_2cae88(object));
    need(b.height_2cae08,0x2cce25,0x2cae08);const float height=float(b.height_2cae08(object));
    // [C] Both dimensions are queried before either positivity gate.
    if(0>=width||0>=height)return false;
    output.width=width;output.ready=true;output.height=height;output.texture=object;return true;
}
bool renderer_draw_icon_2cca48(const RendererIcon& icon,Vec2 center,float requested,RendererIconBackend& b) {
    float width=requested,height=requested;
    if(!(requested>0)){width=icon.width;height=icon.height;}
    width*=0.5f;height*=0.5f;
    need(b.background_392198,0x2ccaa1,0x392198);const auto list=b.background_392198();
    need(b.image_3a0168,0x2ccb3c,0x3a0168);
    b.image_3a0168({list,icon.texture,{center.x-width,center.y-height},{center.x+width,center.y+height},{0,0},{1,1},0xffffffff});return true;
}
bool renderer_icon_2cc8d0(re::ReOptional<re::ReStringView> input,Vec2 center,float size,RendererIconState& state,RendererIconBackend& b) {
    if(!state.enabled_3d6160||!input||input->empty()||input->front()==0)return false;
    const auto key=re::ReString(input->substr(0,input->find('\0')));
    if(auto entry=state.cache.find(key);bool(entry)) {
        if(!(**entry).ready)return false; // [C] Negative cache entries are permanent until cache reset.
        if(sample_pointer_range((**entry).texture)&&valid((**entry).texture,b,0x2cc976))return renderer_draw_icon_2cca48(**entry,center,size,b);
        state.cache.erase(key);
    }
    RendererIcon loaded;
    if(!renderer_load_icon_2ccd14(key,loaded,state,b)){state.cache.insert(key,RendererIcon{});return false;}
    state.cache.insert(key,loaded);
    auto inserted_entry=state.cache.find(key);
    // [C]2cca12..2cca40 is after the first RET and immediately draws a newly loaded icon.
    return renderer_draw_icon_2cca48(**inserted_entry,center,size,b);
}
} // namespace rust_internal_re
