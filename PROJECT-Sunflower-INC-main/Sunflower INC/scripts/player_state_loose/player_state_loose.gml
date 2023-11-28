
function player_state_loose(){
h_speed = lengthdir_x(input_magnitude * speed_walk, input_direction);
v_speed = lengthdir_y(input_magnitude * speed_walk, input_direction)



//Atualizar estado do sprite

var _old_sprite = sprite_index;

/*antigo
direction = input_direction;
*/

direction = aim_dir;

if (input_magnitude != 0){
	sprite_index = sprite_run;
}
else{sprite_index = sprite_idle}

if(_old_sprite !=sprite_index){
	local_frame = 0;
}

//Atualizar estado da imagem
PlayerAnimationSprite()

 if (key_roll && roll_cooldown <= 0) {
        state = player_state_roll;
        move_distance_remn = distance_roll;

      
        roll_cooldown = 60; 
    }

    
    if (roll_cooldown > 0) {
        roll_cooldown--;
    }


}