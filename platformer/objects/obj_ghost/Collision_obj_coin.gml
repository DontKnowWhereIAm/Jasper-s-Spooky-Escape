/// @description Insert description here
// You can write your code in this editor
obj_controller.coins += 1
instance_destroy(other)

if(obj_controller.coins == 5) {
	var key_x = room_width / 2
	var key_y = room_height / 2
	
	instance_create_layer(key_x, key_y, "Instances", obj_keypart3);
}