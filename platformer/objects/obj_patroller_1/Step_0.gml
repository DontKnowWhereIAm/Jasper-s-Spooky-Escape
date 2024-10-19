/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_ghost)) {

	    if (distance_to_object(obj_ghost) < attack_range) {
	        path_end();
	        direction = point_direction(x, y, obj_ghost.x, obj_ghost.y);
	        speed = hsp;
			
			
	    }
	
}