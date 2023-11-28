//Receber dano
if place_meeting(x, y, o_enemy_take_damage){
	flash_alpha = 1;

 
	var _inst_list = ds_list_create();
	instance_place_list(x, y, o_enemy_take_damage, _inst_list, false);
	
	for(var i = 0; i<ds_list_size(_inst_list); i++){
	
	
	var _inst = ds_list_find_value(_inst_list, i);
	
	//Receber dano de uma instância específica

	hp -= _inst.damage;
	
	_inst.destroy = true;
	}
	ds_list_destroy(_inst_list)

	
}
	if (flash_alpha>0){
	flash_alpha -= 0.05;
	}

//Morte 

if (hp<=0){
instance_destroy();
}