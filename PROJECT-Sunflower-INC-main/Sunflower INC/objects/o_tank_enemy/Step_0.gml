if (!global.game_paused) {
	
if instance_exists(o_player){
var distance_to_player = point_distance(x, y, o_player.x, o_player.y);



switch (state) {
    case States3.STOPPED:
        dir = point_direction(x, y, o_player.x, o_player.y);
        h_speed = lengthdir_x(spd, dir);
        v_speed = lengthdir_y(spd, dir);

        if (distance_to_player < charge_distance && charge_timer <= 0) {
            state = States3.CHARGE;
            charging = true;
            h_speed = lengthdir_x(charge_spd, dir);
            v_speed = lengthdir_y(charge_spd, dir);
            charge_timer = charge_cooldown;
        }

        charge_timer--;
        break;

    case States3.CHARGE:
    current_charge_time++;

    if (place_meeting(x + h_speed, y, o_wall) || place_meeting(x, y + v_speed, o_wall) || current_charge_time > charge_duration) {
        h_speed = 0;
        v_speed = 0;
        stunned_timer = 40;  
        state = States3.STUNNED;
        current_charge_time = 0;  
    }
    break;


    case States3.STUNNED:
        stunned_timer--;

        if (stunned_timer <= 0) {
            state = States3.STOPPED;
        }
        break;
}

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


    x += h_speed;
    y += v_speed;
}
}
else{
}

event_inherited();