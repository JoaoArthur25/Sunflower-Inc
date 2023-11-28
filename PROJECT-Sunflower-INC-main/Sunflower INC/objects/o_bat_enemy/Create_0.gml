// Inherit the parent event
event_inherited();

hp = 15;
spd = 2;
dir = 0
h_speed = 0;
v_speed = 0;
shoot_cooldown = 100; 
current_cooldown = 0;
shoot_distance = 120;   
shoot_timer = 0;
weapon = ds_map_create();
weapon[? "bullet"] = o_bat_bullet;
aim_dir = 0;


face = 1;

//State Machines
state = States2.FOLLOW