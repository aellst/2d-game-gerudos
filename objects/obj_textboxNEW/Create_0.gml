depth = -999

//"chat Stella" is made up of the following structs

chatStella = [];

var message1_s = {
	text: "Hi! Party at mine, you coming?",
	sender: "gray"
	}
var message2_s = {
	text: "When?",
	sender: "blue"
	}
var message3_s = {
	text: "Tonight!",
	sender: "gray"
	}
var message4_s = {
	text: "Yes, tonight, when?",
	sender: "blue"
	}
	
array_push(chatStella, message1_s);
array_push(chatStella, message2_s);
array_push(chatStella, message3_s);
array_push(chatStella, message4_s);

//textbox parameters
textbox_width = 379;
textbox_height = 57;
border = 8; 
line_sep = 36;
line_width = textbox_width - border*2;
txtb_img = 0;
txtb_img_spd = 30/60;
txtb_spr = menuBackground;
text_x_offset = [];
text_y_offset = [];

//text
page = 0; 
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;
