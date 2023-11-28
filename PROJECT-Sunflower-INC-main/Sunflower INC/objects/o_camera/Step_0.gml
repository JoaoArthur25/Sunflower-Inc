
//Atualizar destino
if(instance_exists(follow)){
x_to = follow.x;
y_to = follow.y;
}

//atualizar posição do objeto

x += (x_to - x)/15;
y += (y_to - y)/15;

x = clamp(x, view_width,  room_width  - view_width);
y = clamp(y, view_height, room_height - view_height);

//Shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);

shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));

camera_set_view_pos(cam, x-view_width, y-view_height);



