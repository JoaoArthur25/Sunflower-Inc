//state machine

switch (state)
{
	case 0:
	
	break;
	
}


// Seguir o jogador
if (instance_exists(o_player)) {
    dir = point_direction(x, y, o_player.x, o_player.y);
}
else{dir = 0;}


h_speed = lengthdir_x(spd, dir);
v_speed = lengthdir_y(spd, dir);

if (h_speed > 0) {
    face = 1;
} else {
    face = -1;	
}

image_xscale = face;

if (place_meeting(x + h_speed, y, o_wall) || place_meeting(x + h_speed, y, o_enemy_parent)) {
    h_speed = 0;
}

if (place_meeting(x, y + v_speed, o_wall) || place_meeting(x, y + v_speed, o_enemy_parent)) {
    v_speed = 0;
}
if (!global.game_paused){
x += h_speed;
y += v_speed;
}


event_inherited();

