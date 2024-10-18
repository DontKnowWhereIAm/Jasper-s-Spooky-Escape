	
	
if (instance_place(x, y, obj_ladder)) {
	if(keyboard_check(vk_up) or keyboard_check(vk_down)) {
		climbing = true;
		vspeed = 0;
		gravity = 0;
		sprite_index = spr_ghost_idle;
	}
} else {
	climbing = false;
	sprite_index = spr_ghost_idle;
	
}	

if (climbing) {
	gravity = 0;
	if (keyboard_check(vk_up)) {
		y -= climb_speed;
	}
	
	if (keyboard_check(vk_down)) {
		y += climb_speed;
	}
	if(instance_place(x, y + 1, obj_block)) {
		climbing = false;
		sprite_index = spr_ghost_idle;
	} 
} else {
	
	// Weapon retrieval logic
	if (keyboard_check_pressed(ord("Z"))) {
		instance_create_layer(x, y, "Instances", obj_weapon);
	}

	// Horizontal movement with hspeed
	if (keyboard_check(vk_left) and !instance_place(x - ghost_speed, y, obj_block)) {
		var door = instance_place(x - ghost_speed, y, obj_door);
		if (door == noone || door.is_open) {
			if (character_can_move(-ghost_speed, 0)) {
		        x -= ghost_speed;
		        image_xscale = -1;  // Face left
			}
		}

	}
	if (keyboard_check(vk_right) and !instance_place(x + ghost_speed, y, obj_block)) {
		var door = instance_place(x + ghost_speed, y, obj_door);
		if (door == noone || door.is_open) {
			if (character_can_move(ghost_speed, 0)) {
		        x += ghost_speed;
		        image_xscale = 1;  // Face right
			}
		}
	}
	
	
	x += hspeed

	// Jumping logic
	if (canJump && keyboard_check(vk_up)) {
        if (instance_place(x, y + 1, obj_block) || instance_place(x, y + 1, obj_movable_block)) {
            vspeed = -jump_height;
        }
    }

	// Gravity logic
	if (instance_place(x, y + 1, obj_block) || instance_place(x, y + 1, obj_movable_block)) {
		 gravity = 0
	} else {
		gravity = 0.45
	}
	
	// Limit vertical speed
	if (vspeed > 12) {
	vspeed =  12;
	}
	
	if(keyboard_check(vk_up)) {
		if(instance_place(x, y+1, obj_block)) {
			vspeed = jump_height;
		}
	}
	
	
}
	




	
