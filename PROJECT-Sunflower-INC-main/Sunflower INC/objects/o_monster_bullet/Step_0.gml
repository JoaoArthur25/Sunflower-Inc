
if (!global.game_paused){
x += h_speed;
y += v_speed;
}






//Destruir
if (destroy == true){
	instance_destroy();
	}

if (place_meeting(x, y, o_solid_wall) || place_meeting(x, y, o_sword_swing)){
destroy = true;
}

if (point_distance(xstart,ystart,x,y)> max_distance){
	destroy = true;
	}
	
if (place_meeting(x, y, o_player)) {
    hurt_player(point_direction(x, y, o_player.x, o_player.y), 5, 1);  // ajuste conforme a quantidade de dano desejada
    instance_destroy();
}
