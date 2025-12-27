depth = -999

//textbox parameters
textbox_width = 890;
textbox_height = 122;
border = 8; 
line_sep = 36;
line_width = textbox_width - border*2;
txtb_img = 0;
txtb_img_spd = 30/60;


//text
page = 0; 
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
draw_char = 0;
text_spd = 0.5;
text_x_offset = [];

//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;

//effects
scr_set_default_for_text()
last_free_space = 0;
