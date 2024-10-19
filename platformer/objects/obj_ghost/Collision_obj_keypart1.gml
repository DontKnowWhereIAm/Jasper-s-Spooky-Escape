/// @description Insert description here
// You can write your code in this editor

obj_controller.key_parts += 1
audio_play_sound(snd_ding, 1, false)
part_particles_create(ps, x, y, pt_star, 15);
instance_destroy(other)