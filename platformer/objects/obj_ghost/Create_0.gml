/// @description Insert description here
// You can write your code in this editor
gravity_direction = 270
climbing = false
climb_speed = 4


grabTarget = noone

canJump = true;

ps = part_system_create();
pt_star = part_type_create();

// Set particle type properties
part_type_shape(pt_star, pt_shape_star);
part_type_size(pt_star, 0.2, 0.5, 0, 0); 
part_type_speed(pt_star, 1, 2, 0, 0);  // Randomize speed
part_type_direction(pt_star, 0, 360, 0, 0);  // Emit in all directions
part_type_life(pt_star, 30, 60);  // Lifetime between 30 to 60 frames