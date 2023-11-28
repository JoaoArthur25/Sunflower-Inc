function player_state_damaged(){

h_speed = lengthdir_x(5,direction - 180);
v_speed = lengthdir_y(5,direction - 180);

move_distance_remaining = max(0, move_distance_remaining - 5);
player_collision();

sprite_index = s_JadenDamage;



if (move_distance_remaining<=0){
state = player_state_loose;
}

}