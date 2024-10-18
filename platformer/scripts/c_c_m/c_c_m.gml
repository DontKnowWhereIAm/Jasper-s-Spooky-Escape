// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character_can_move(vx, vy){
	var _vx = argument0;
	var _vy = argument1;

	// Check for collision with a movable block
	with (instance_place(x + _vx, y + _vy, obj_movable_block)) {
	    // If the block can also move in the same direction, allow the movement
	    if (!place_meeting(x + _vx, y + _vy, obj_block)) {
	        x += _vx;  // Move the block
	        y += _vy;
	        return true;
	    }
	}

	// If no block is obstructing, allow the player to move
	if (!place_meeting(x + _vx, y + _vy, obj_block)) {
	    return true;
	}

	// If blocked and unable to push, return false
	return false;
}