enum States2 {
    FOLLOW,
    SHOOT
}
if (!global.game_paused) {
if instance_exists(o_player){
var distance_to_player = point_distance(x, y, o_player.x, o_player.y);
}
else{
	var distance_to_player = 0;
}

switch (state) {
    case States2.FOLLOW:
        if (instance_exists(o_player)) {
            dir = point_direction(x, y, o_player.x, o_player.y);
            h_speed = lengthdir_x(spd, dir);
            v_speed = lengthdir_y(spd, dir);

            if (distance_to_player < shoot_distance && !collision_line(x, y, o_player.x, o_player.y, o_wall, false, true)) {
                state = States.SHOOT;
            }
        }
        break;

    case States2.SHOOT:
        if (distance_to_player < shoot_distance) {
        if (shoot_timer <= 0 && instance_exists(o_player)) {
            aim_dir = point_direction(x,y, o_player.x,o_player.y);
            shoot_timer = shoot_cooldown;
            audio_play_sound(snd_monster_sht, 0, false);

            // Loop para criar três balas (frente e diagonais)
            for (var i=-1; i<=1; i++) {
                var _bullet_inst = instance_create_depth(x, y, depth-100, weapon[? "bullet"]);
                var angle = aim_dir + (i * 15); // Adiciona 15 graus para a diagonal esquerda, subtrai 15 para a direita e 0 para frente

                with (_bullet_inst) {
                   
                    h_speed = lengthdir_x(spd, angle); 
                    v_speed = lengthdir_y(spd, angle); 
                }
            }
        }else {
                shoot_timer--;
            }
        } else {
            state = States2.FOLLOW;
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

event_inherited();