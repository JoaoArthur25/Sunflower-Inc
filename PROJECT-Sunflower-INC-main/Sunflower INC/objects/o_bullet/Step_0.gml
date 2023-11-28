//Mover bala

h_speed = lengthdir_x(spd,dir);
v_speed = lengthdir_y(spd,dir);

if (!global.game_paused){x += h_speed;
y += v_speed;
}






//Destruir
if (destroy == true){
	instance_destroy();
	}

if (place_meeting(x, y, o_solid_wall)){
destroy = true;
}

if (point_distance(xstart,ystart,x,y)> max_distance){
	destroy = true;
	}
	

