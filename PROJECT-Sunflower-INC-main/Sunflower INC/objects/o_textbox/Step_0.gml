var _confirm = keyboard_check_pressed(key_interact);

text_progress = min(text_progress + text_spd, text_length);


if (input_delay >0){
input_delay--
exit;
}

if(text_progress == text_length){
if(_confirm){
	audio_play_sound(snd_beep,0,false);
	next();
}
}

else if(_confirm){
text_progress = text_length;
}