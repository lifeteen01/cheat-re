#include "renderer_helpers_world.hpp"
namespace rust_internal_re {
WorldDrawOutput bind_renderer_world_output(re::ReVector<WorldDrawCommand>& records,Snapshot& im,
    RendererBackgroundBackend& background,re::ReFunction<void(const WorldDrawCommand&)> consume) {
    return {records,re::re_move(consume),[&im,&background](Rva){return renderer_background_392198(im,background);}};
}
WorldPlayerBackend bind_renderer_helpers_world(Snapshot& im,WorldLabelFonts& fonts,RendererBackgroundBackend& background,
    RendererIconState& icons,RendererIconBackend& icon_backend,WorldPlayerBackend output) {
    output.label_fonts=&fonts;
    output.background_draw_list_392198=[&](WorldLabelFonts& f){
        (void)renderer_background_392198(im,background);
        const auto ctx=im.read<Address>(0x405b28);if(!ctx){ __builtin_trap(); }
        const auto font=im.read<Address>(*ctx+0x3c28);if(!font){ __builtin_trap(); }
        const auto nominal=im.read<float>(*font+0x14);if(!nominal){ __builtin_trap(); }
        const auto shared_size=im.read<float>(0x248ed0);if(!shared_size){ __builtin_trap(); }
        f.current_405b28_3c28=*font;f.fonts[*font].nominal_14=*nominal;
        f.current_size_248ed0=*shared_size;
    };
    output.measure_font_3a3874=[&](const WorldFontMeasureRequest& q){
        return renderer_measure_3a3874(read_renderer_font(im,q.font),{q.size,q.maximum_width,q.wrap_width,q.text,{}}).size;
    };
    output.draw.measure_38f79c=[&](re::ReStringView text){
        const auto ctx=im.read<Address>(0x405b28);if(!ctx){ __builtin_trap(); }
        return renderer_measure_38f79c(im,*ctx,text).size;
    };
    if(!icon_backend.background_392198)icon_backend.background_392198=[&](){return renderer_background_392198(im,background);};
    output.icon_2cc8d0=[&](re::ReStringView key,Vec2 position,float size){return renderer_icon_2cc8d0(key,position,size,icons,icon_backend);};
    return output;
}
re::ReArray<WorldPlayerLabel,6> prepare_renderer_world_labels(re::ReVector<RendererWidget> list,
    const re::ReArray<re::ReString,6>& text,re::ReOptional<ReU32> held) {
    constexpr re::ReArray<Rva,6> find{0x2ee154,0x2ee1d0,0x2ee24c,0x2ee2c8,0x2ee344,0x2ee0d8};
    for(ReUSize i=0;i<find.size();++i)set_renderer_widget_text(list,find[i],text[i],i==1?held:re::re_nullopt);
    if(list.size()<6){ __builtin_trap(); }
    re::ReArray<WorldPlayerLabel,6> output;
    for(ReUSize i=0;i<6;++i)output[i]={list[i].key,list[i].text,list[i].side,list[i].icon_64};
    return output;
}
RendererWorldLabelPreparer make_renderer_world_label_preparer(re::ReVector<RendererWidget> widgets) {
    return [widgets=re::re_move(widgets)](const re::ReArray<re::ReString,6>& text,re::ReOptional<ReU32> held){return prepare_renderer_world_labels(widgets,text,held);};
}
} // namespace rust_internal_re
