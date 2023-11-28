if (!instance_exists(o_green_slime_small)&&!instance_exists(o_green_slime)&&!instance_exists(o_slime)&&!instance_exists(o_slime_small)){
instance_destroy(o_player);
instance_destroy(o_game);
instance_destroy(o_camera);
audio_stop_sound(snd_combat_song);
cd_1 = true;
alpha += alpha_spd;
alpha = clamp(alpha,0,1);

if(keyboard_check_pressed(vk_space) && alpha >=1){
room_goto(rm01_dialogue);
instance_destroy();
}
}

