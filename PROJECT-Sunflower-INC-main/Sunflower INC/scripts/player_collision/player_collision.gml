function player_collision(){

//Colisões
#region
if (place_meeting(x + h_speed, y, o_wall) ){
col = true;
h_speed = 0;
}
if (place_meeting(x, y + v_speed, o_wall) ){
col = true;
v_speed = 0;
}
#endregion

else col = false;

}