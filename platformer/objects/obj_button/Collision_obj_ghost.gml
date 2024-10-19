/// @description Insert description here
// You can write your code in this editor

var btn = id;
sprite_index = spr_button_push
with (obj_door) {
    if (door_id == btn.button_id) {  // 'other' refers to the button
        is_open = true;  // Toggle the door state
        sprite_index = spr_door_open;  // Change sprite
		//audio_play_sound(snd_button, 1, false)
    }
}