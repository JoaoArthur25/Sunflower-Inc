var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);

draw_sprite(spr_jaden_hp, 0, _cam_x + 10, _cam_y + 10);

for(var _i = 0; _i<player_max_hp; _i++){


var _img = 2;
if _i + 1 <= player_hp {
 _img = 1;
}

var _sep = 6;

draw_sprite(spr_jaden_hp, _img, _cam_x + 10 +_sep*_i, _cam_y + 10 )
}


for(var _j = 0; _j<3; _j++){


var _img = 1;
if _j + 1 <= cure_uses {
 _img = 0;
}

var _sep = 20;

draw_sprite(spr_stimulant, _img, _cam_x + 10 +_sep*_j, _cam_y + 42 )
}

if (weapon == blaster){
	draw_sprite(spr_weapon_sheet, 0, _cam_x + 76, _cam_y + 10 );
}
else{
	draw_sprite(spr_weapon_sheet, 1, _cam_x + 76, _cam_y + 10 );
}