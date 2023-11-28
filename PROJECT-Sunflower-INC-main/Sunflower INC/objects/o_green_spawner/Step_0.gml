spawn_counter++; 

if (spawn_counter >= spawn_rate) {
    instance_create_layer(x, y, "Instances", enemy_to_spawn); // Cria o inimigo na posição x, y
    spawn_counter = 0; 
	spawn_limit--;
}

if (spawn_limit == 0){
instance_destroy();
}