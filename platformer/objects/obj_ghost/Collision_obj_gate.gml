/// checks to see if game completable


if obj_controller.key_parts == 4{
	shader_reset()
	audio_stop_sound(snd_back);
	room_goto(rm_win)
}