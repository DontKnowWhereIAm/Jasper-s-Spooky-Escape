/// @description Insert description here
// You can write your code in this editor
obj_controller.coins += 1
obj_controller.coins_goal = 5
instance_destroy(other)

if(obj_controller.coins >= obj_controller.coins_goal) {
	var key_x = room_width / 2
	var key_y = room_height / 2
	
	instance_create_layer(key_x, key_y, "Instances", obj_keypart3);
}