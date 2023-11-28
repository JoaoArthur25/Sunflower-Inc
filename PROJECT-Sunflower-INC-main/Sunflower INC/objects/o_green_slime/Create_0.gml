// Inherit the parent event
event_inherited();

hp = 8;
spd = 3;
dir = 0
h_speed = 0;
v_speed = 0;
shoot_cooldown = 60; 
current_cooldown = 0;
shoot_distance = 200;   
shoot_timer = 0;
weapon = ds_map_create();
weapon[? "bullet"] = o_monster_bullet;
aim_dir = 0;


face = 1;

//State Machines
state = States.FOLLOW;
