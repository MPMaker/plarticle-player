///ui_draw_blured(x,y,left,top,width,height)
//argument4 = round(argument4);
//argument5 = round(argument5);
/*
if (argument4 = 0 || argument5 = 0)
 return 0;

surface_reset_target();

surface_set_target(ui_shared_surface());
if shader_is_compiled(shaBlur){
shader_set(shaBlur);
shader_set_uniform_f(global.shaBlur_texelSize, texture_get_texel_width(global.atexture), 0);
}
d3d_transform_stack_push();
d3d_transform_set_identity();
draw_enable_alphablend(false);
draw_surface_part_ext(application_surface, argument2, argument3, argument4, argument5, argument2, argument3, 1, 1, $ffffff, 1);
draw_enable_alphablend(true);
d3d_transform_stack_pop();
shader_reset();
surface_reset_target();

surface_set_target(application_surface);

if shader_is_compiled(shaBlur){
shader_set(shaBlur);
shader_set_uniform_f(global.shaBlur_texelSize, 0, texture_get_texel_height(global.atexture));
}
draw_surface_part_ext(ui_shared_surface(), argument2, argument3, argument4, argument5, argument0, argument1, 1 / __sx, 1 / __sy, $cccccc, draw_get_alpha());
shader_reset();
