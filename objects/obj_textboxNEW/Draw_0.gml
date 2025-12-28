accept_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 439;

var _current_y = textbox_y;
var _spacing = 10;

x_pos_gray = 1179;
y_pos = 439;
x_pos_blue = 378;
y_pos_blue = 337;


//setup
if setup == false
	{
	
	setup = true;
	draw_set_font(font_random);
	draw_set_valign(fa_top);
	
		////loop through the pages
		//for(var p = 0; p < page_number; p++)
		//{
			
		//	//find how many characters are on each page and store that number in the "text_length" array
		//	text_length[p] = string_length(text[p]);
		
		//	//get the x position for the textbox
		//		//gray box
		//		text_x_offset[p] = 1179
		//}
	
	}

//chat loop (IT WORKS!! very messy sorry i tried many different things, i will clean it up when it's fully done)
for (var i = visible_count - 1; i >= 0; i--) //i have to make it so that the argument of array_lenght is depending on which chat is being pressed
	{
		var _struct = chatStella[i];
		//txtb_img += txtb_img_spd;
		txtb_spr_w_gray = sprite_get_width(txtb_spr_gray);
		txtb_spr_w_blue = sprite_get_width(txtb_spr_blue);
		txtb_spr_h_gray = sprite_get_height(txtb_spr_gray);
		txtb_spr_h_blue = sprite_get_height(txtb_spr_blue);
		
		var _is_gray = (_struct.sender == "gray");
		var _spr = _is_gray ? txtb_spr_gray : txtb_spr_blue;
		var _x_pos = textbox_x + (_is_gray ? x_pos_gray : x_pos_blue);	
		
		var _txt_w = string_width(_struct.line) + border*2;
		var _txt_h = string_height(_struct.line) + border*2;
		
		var _left_edge = _x_pos;
		
		if _is_gray {
			_left_edge = _x_pos - _txt_w; }
		
		
		//var _final_y = textbox_y + draw_y_cursor;
		//if draw_y_cursor > limit {
		//	_final_y -= (draw_y_cursor - limit); }
		
		_current_y -= _txt_h;
		
		//draw the textbox
		draw_sprite_ext(_spr, 0, _x_pos, _current_y, _txt_w/txtb_spr_w_gray, _txt_h/txtb_spr_h_gray, 0, c_white, 1);
				
		//draw the text
		draw_set_halign(fa_left);				
		draw_text(_left_edge + border, _current_y + border, _struct.line);
		
		_current_y -= _spacing;
		
		
		////draw the textbox
		//var txtb_w = string_width(chatStella[message1_s.text] + border*2); //again, i have to make the array item be in a variable that changes
		//draw_sprite_ext(txtb_spr, txtb_img, textbox_x + text_x_offset[page], textbox_y + text_y_offset[page], txtb_w/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);
			
		////draw the text
		//var _drawtext = string_copy(chatStella[message1_s.text], 1, draw_char);
		//draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + text_y_offset[page] + border, _drawtext, line_sep, line_width)
		
	}


////draw the options
//	var _op_space = 45;
//	var _op_bord = 12;
//	for (var op = 0; op < option_number; op++)
//		{
//		//the option box
//		var _o_w = string_width(option[op]) +_op_bord*2;
//		draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x + 48, _txtb_y - _op_space*option_number + _op_space*op, _o_w/txtb_spr_w, (_op_space-1)/txtb_spr_h, 0, c_white, 1);
		
//		//the arrow
//		if option_pos == op
//			{
//			draw_sprite(spr_textbox_arrow, 0, _txtb_x,  _txtb_y - _op_space*option_number + _op_space*op);
//			}
		
//		//the option text
//		draw_text(_txtb_x + 48 + _op_bord, _txtb_y - _op_space*option_number + _op_space*op + 2, option[op]);
//		}
	
////draw textbox
//var _txtb_x = textbox_x + text_x_offset[page];
//var _txtb_y = textbox_y;
//txtb_img += txtb_img_spd;
//txtb_spr_w = sprite_get_width(txtb_spr[page]);
//txtb_spr_h = sprite_get_height(txtb_spr[page]);
	
////draw messages
//for (var i = 0; i < array_length(messages); i++) {
	
//	var message1 = messages[i];
	
//	if sender == self
//		{
//		//draw right
//		}
//	else
//		{
//		//draw left
//		}
	
//	}