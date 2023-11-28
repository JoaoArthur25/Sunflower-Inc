
audio_stop_sound(snd_combat_song);
cd_1 = true;
alpha += alpha_spd;
alpha = clamp(alpha,0,1);

if(keyboard_check_pressed(vk_space) && alpha >=1){
game_restart();
}


