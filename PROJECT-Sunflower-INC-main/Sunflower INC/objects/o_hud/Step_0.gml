if instance_exists(o_player){
player_hp = o_player.hp;
player_max_hp = o_player.max_hp;
player_hp = o_player.hp;
cure_uses = o_player.cure_uses;
weapon = o_player.weapon;
blaster = o_player.blaster;
}
else{
player_hp = 0;
cure_uses = 0;
}