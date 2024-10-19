/// @description Insert description here
// You can write your code in this editor
shader_set(myShader);
shader_set_uniform_f(time_location, current_time);  // Example of passing a uniform
draw_self();  // Draw the object with the shader effect
shader_reset();

part_type_destroy(pt_star);
part_system_destroy(ps);