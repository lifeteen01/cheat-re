#include "world_render_bindings.hpp"
namespace rust_internal_re {
WorldDrawOutput bind_world_meter_output(re::ReVector<WorldDrawCommand> &records, Address module,
                                        RendererBackgroundBackend &background,
                                        DrawMetersContext &context,
                                        re::ReFunction<void(const WorldDrawCommand &)> font_image,
                                        DrawShapesMath math) {
    return bind_renderer_world_output(
        records, context.image, background,
        bind_draw_meters_world(context, [&context, module, font_image = re::re_move(font_image),
                                         math = re::re_move(math)](const WorldDrawCommand &command) {
            draw_shapes_world(context.image, module, context.store, context.resources, command,
                              font_image, {}, math);
        }));
}
DrawShapesMath bind_draw_shapes_math(Snapshot &image, const UnityMathEnvironment &env,
                                     const UnityMathEffects &api) {
    const auto scalar = [&image, env, api](Rva role, float value) {
        const auto result = unity_math_scalar(image, role, value, 0, env, api);
        if (result.status != GameBaseStatus::complete)
            __builtin_trap();
        return result.value;
    };
    return {[scalar](float value) { return scalar(0x2e0198, value); },
            [scalar](float value) { return scalar(0x2dff68, value); }};
}
WorldDrawOutput bind_world_shape_output(re::ReVector<WorldDrawCommand> &records, Snapshot &image,
                                        Address module, RendererBackgroundBackend &background,
                                        DrawCoreStore &store, const DrawShapesResources &resources,
                                        re::ReFunction<void(const WorldDrawCommand &)> font_image,
                                        DrawShapesMath math) {
    return bind_renderer_world_output(
        records, image, background,
        [&image, module, &store, &resources, font_image = re::re_move(font_image),
         math = re::re_move(math)](const WorldDrawCommand &command) {
            draw_shapes_world(image, module, store, resources, command, font_image, {}, math);
        });
}
} // namespace rust_internal_re
