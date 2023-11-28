enum States {
    FOLLOW,
    SHOOT
}
if instance_exists(o_player){
var distance_to_player = point_distance(x, y, o_player.x, o_player.y);
}
else{
	var distance_to_player = 0;
}
if (!global.game_paused) {
switch (state) {
    case States.FOLLOW:
        if (instance_exists(o_player)) {
            dir = point_direction(x, y, o_player.x, o_player.y);
            h_speed = lengthdir_x(spd, dir);
            v_speed = lengthdir_y(spd, dir);

            if (distance_to_player < shoot_distance && !collision_line(x, y, o_player.x, o_player.y, o_wall, false, true)) {
                state = States.SHOOT;
            }
        }
        break;

    case States.SHOOT:
        if (distance_to_player < shoot_distance) {
            if (shoot_timer <= 0 && instance_exists(o_player)) {
                var aim_dir = point_direction(x,y, o_player.x,o_player.y);
                shoot_timer = shoot_cooldown;

                var _bullet_inst = instance_create_depth(x, y, depth-100, weapon[? "bullet"]);
                audio_play_sound(snd_slime_sht, 0, false);

                with (_bullet_inst) {

                    h_speed = lengthdir_x(spd, aim_dir);
                    v_speed = lengthdir_y(spd, aim_dir);
                }
            } else {
                shoot_timer--;
            }
        } else {
            state = States.FOLLOW;
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
var _dieEvent = true;

if(hp == 1 && _dieEvent == true){
	instance_create_depth(x + 10, y + 10, depth, o_green_slime_small);
	instance_create_depth(x - 10, y - 10, depth, o_green_slime_small);
	hp--;
	_dieEvent = false;
}

event_inherited();
