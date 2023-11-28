alpha += alpha_spd;
alpha = clamp(alpha,0,1);

if(keyboard_check_pressed(vk_space) && alpha >=1){
game_restart();
}