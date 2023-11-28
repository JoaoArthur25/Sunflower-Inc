	state = player_state_loose;
	enum Weapons {
    GUN,
    SWORD,
}

	
	move_distance_remaining = 15;
	invulnerable = 0;
	flash = 0;
	hp = 5;
	max_hp = 5;
	cure_amount = 2; 
	cure_uses = 3;
	
	col = false;

	image_speed = 0;

	h_speed = 0;
	v_speed = 0;
	roll_cooldown = 0;

	speed_walk = 2.25;
	speed_roll = 4;
	distance_roll = 70;

	sprite_roll = s_JadenRoll;
	sprite_run = s_JadenRun;
	sprite_idle = s_Jaden;



local_frame = 0;

//Sprite control extra
	center_y_offset = -8;
	center_y =  y + center_y_offset;

	weapon_offset = 4;
	aim_dir = 0;
	
	//Arma
	
	shoot_timer = 0;
	sword_damage = 1;


	blaster = {
	cd : 30,
	sprite: s_blaster,
	bullet: o_bullet,
	length:	sprite_get_bbox_right(s_blaster)
	}
	
	sword = {
    cd : 15,
	sprite: s_sword,
	bullet: o_sword_swing,
	length:	sprite_get_bbox_right(s_sword)
}

	
weapon = blaster

knockback_duration = 10; 
knockback_speed = 5;     
knockback_direction = 0; 
create = true;