//Desenhar a arma atrás
if(aim_dir >=0 && aim_dir<180){
	draw_weapon()
}

if ((invulnerable != 0) && ((invulnerable mod 8 <2) == 0) && (flash==0)){
	
}
else{
//Desenhar o jogador
draw_self();
}

//Desenhar a arma na frente
if(aim_dir >=180 && aim_dir<360){
	draw_weapon()
}