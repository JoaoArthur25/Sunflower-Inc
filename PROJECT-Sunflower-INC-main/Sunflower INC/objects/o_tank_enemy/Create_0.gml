event_inherited();

hp = 20; 
spd = 1;  
charge_spd = 6;  
charge_duration = 60;  
current_charge_time = 0; 
dir = 0;  
h_speed = 0;
v_speed = 0;
stunned_timer = 0;

charge_distance = 200;  
charging = false;  
charge_cooldown = 150;  
charge_timer = charge_cooldown;

face = 1;

state = States3.STOPPED;
enum States3 {
    STOPPED,
    CHARGE,
    STUNNED
}