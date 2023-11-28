function player_state_roll(){
//Movimento

h_speed = lengthdir_x(input_magnitude * speed_roll, input_direction);
v_speed = lengthdir_y(input_magnitude * speed_roll, input_direction);

move_distance_remn = max(0, move_distance_remn - speed_roll);



//Atualizar sprite
sprite_index = sprite_roll;
var _total_frames = sprite_get_number(sprite_index)/4;
image_index = (CARDINAL_DIR * _total_frames) + min(((1 - (move_distance_remn/distance_roll)) * (_total_frames)), _total_frames -1);

//Muder estado

if (move_distance_remn <=0){
state = player_state_loose;
}}


