function hurt_player(_direction, _force, _damage){

if (o_player.invulnerable<= 0)
{
o_player.hp = max(0, o_player.hp - _damage);	

if (o_player.hp>0){
with(o_player){
	
	state = player_state_damaged;
	direction = _direction - 180;
	move_distance_remaining = _force;
	screen_shake(5,10);
	flash = 0.7;
	invulnerable = 60;
	
	
}
}

else{
instance_destroy(o_player);
instance_create_depth(0,0, -1000, o_game_over_screen);
}
}



}