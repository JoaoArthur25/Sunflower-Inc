if cd_1 == true {var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

draw_set_alpha(alpha * alpha_max);
draw_rectangle_color(_cam_x,_cam_y, _cam_x + _cam_w, _cam_y + _cam_h, #000000,  #000000,  #000000,  #000000, false);


//Desenhar o texto
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(alpha);
	draw_set_font(fnt_game_over);
	draw_text_transformed(_cam_x + _cam_w/2, _cam_y + _cam_h/2 - 25, "Press Space to", 2,2,0);
	draw_text_transformed(_cam_x + _cam_w/2, _cam_y + _cam_h/2 + 25, "Return to menu", 2,2,0);


	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_alpha(1);}