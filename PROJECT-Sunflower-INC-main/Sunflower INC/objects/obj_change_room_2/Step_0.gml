
if (!instance_exists(o_textbox) && !instance_exists(obj_intro_pt2)){
	audio_stop_sound(snd_dialogue_song);
	room_goto(rm01);
}
