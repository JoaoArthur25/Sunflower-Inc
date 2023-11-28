#region Input Controls
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right= keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

key_interact = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"));
key_weapon_change = keyboard_check_pressed(ord("C"));
key_attack = keyboard_check(ord("X")) || mouse_check_button(mb_left);
key_roll = keyboard_check(vk_shift);
key_cure = keyboard_check_pressed(ord("V"));
#endregion

input_direction = point_direction(0,0, key_right - key_left, key_down - key_up);
input_magnitude = ( key_right - key_left != 0 || key_down - key_up !=0);


if (!global.game_paused) {
	if (key_cure && hp < max_hp && cure_uses > 0) {
	audio_play_sound(snd_heal,-1000,false);
    hp = min(hp + cure_amount, max_hp);
    cure_uses--;
}

if (key_weapon_change) {
    if (weapon == blaster) {
        weapon = sword;
    } else {
        weapon = blaster;
    }
}

    script_execute(state);

    center_y = y + center_y_offset;
    aim_dir = point_direction(x, center_y, mouse_x, mouse_y);

    if (shoot_timer > 0) {
        shoot_timer--;
    }

    if (key_attack && state == player_state_loose && shoot_timer <= 0) {
        shoot_timer = weapon.cd;

        
            var _x_offset = lengthdir_x(weapon.length + weapon_offset, aim_dir);
            var _y_offset = lengthdir_y(weapon.length + weapon_offset, aim_dir);
            var _bullet_inst = instance_create_depth(x + _x_offset, center_y + _y_offset, depth-100, weapon.bullet);
            audio_play_sound(snd_gunfire, 0, false);
            
            with(_bullet_inst) {
                dir = other.aim_dir;
            }
    }

    player_collision();
    x += h_speed;
    y += v_speed;
    depth = -bbox_bottom;
}

invulnerable = max(invulnerable - 1, 0);
flash = max(flash - 0.05, 0);
