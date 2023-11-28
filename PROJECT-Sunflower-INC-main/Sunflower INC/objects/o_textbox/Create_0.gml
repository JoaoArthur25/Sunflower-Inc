key_interact = vk_space;
max_input_delay = 5;
input_delay = max_input_delay;

margin = 16;
padding = 8;
width = display_get_gui_width() - margin/2;
height = sprite_height;

x = (display_get_gui_width() - width) /2;
y = (display_get_gui_height() - height - margin);

//text 

text_font = fnt_text;
text_color = #ffffff;

text_spd = 0.9;
text_x = padding;
text_y = padding * 3;

text_width = width - padding * 2;

// Portrait
portrait_x = padding;
portrait_y = padding;

speaker_x = padding;
speaker_y = 0;
speaker_font = fnt_name;
speaker_color = #181830;



actions = [];
current_action = -1;


text = "";
text_progress = 0;
text_length = 0;

portrait_sprite = -1;
portrait_width = sprite_get_width(spr_portrait);
portrait_height = sprite_get_height(spr_portrait);
portrait_side = PORTRAIT_SIDE.LEFT;

enum PORTRAIT_SIDE {
	LEFT,
	RIGHT
}

speaker_name = "";
speaker_width = sprite_get_width(spr_name);
speaker_height = sprite_get_height(spr_name);

setTopic = function(topic){
actions = global.topics[$ topic]
current_action = -1;

next();
}

next = function(){
current_action++;
if(current_action >= array_length(actions)){
instance_destroy();
}
else{
actions[current_action].act(id);	
}
}

setText = function(_new_text) {
text = _new_text
text_length = string_length(_new_text);
text_progress = 0;
}