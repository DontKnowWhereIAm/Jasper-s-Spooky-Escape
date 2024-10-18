	
	
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
		if (character_can_move(-ghost_speed, 0)) {
        x -= ghost_speed;
        image_xscale = -1;  // Face left
		}

	}
	if (keyboard_check(vk_right) and !instance_place(x + ghost_speed, y, obj_block) and !instance_place(x + ghost_speed, y, obj_movable_block)) {
		if (character_can_move(ghost_speed, 0)) {
	        x += ghost_speed;
	        image_xscale = 1;  // Face right
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
	
	// Check if player is in a regular state 
/*if (state == States.Regular) {
		var bestDistance = maxGrabDistance
		grabTarget = noone;

		// Looks for closest movable object in range
		with obj_movable_block{
				var thisDistance = point_distance(x,y,other.x,other.y);
			
				if (thisDistance < bestDistance) {
					bestDistance = thisDistance
					other.grabTarget = id 
					show_debug_message("grabTarget is working");
				}
		}
} 

#region controls 

if keyboard_check_pressed(ord("E")) {
	//#region push to stop/start
	show_debug_message("E is working");
    if (state == States.Pushing)
		// Switches back to regular state
        state = States.Regular;
	
		 
	        with (grabTarget) {
	            hspeed = 0;
	            vspeed = 0;
	        }
	} else if (instance_place(x - 1, y, obj_movable_block) or instance_place(x + 1, y, obj_movable_block)) {
		// Pushing state
		state = States.Pushing;
        grabDirection = GrabAxis.horizontal	
		show_debug_message("grab is working");
	}
//	#endregion



// Adjusts Y position if the player is on top of movable block
//if (instance_place(x, y + 1, obj_movable_block)) {
   // y = obj_movable_block.bbox_top - sprite_height; 
//}



#region pushing
//If pushing, transfer the player's speed to the object they're pushing
if (state == States.Pushing and instance_exists(grabTarget)) {
	with (grabTarget) {
		// Moves object if path is clear 
		if (!place_meeting(x + other.hspeed, y, obj_block) and !place_meeting(x + other.hspeed, y, obj_movable_block)) {
			hspeed = other.hspeed
			vspeed = other.vspeed
		} else {
			hspeed = 0 // Stops movement if path is blocked
			vspeed = 0
		}
	}
}
 
#endregion*/




	
