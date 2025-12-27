accept_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]);

//setup
if setup == false
	{
	
	setup = true;
	draw_set_font(font_random);
	draw_set_valign(fa_top);
	
		//loop through the pages
		for(var p = 0; p < page_number; p++)
		{
			
			//find how many characters are on each page and store that number in the "text_length" array
			text_length[p] = string_length(text[p]);
		
			//get the x position for the textbox
				//gray box
				text_x_offset[p] = 1179
		}
	
	}

//chat loop (THIS IS SO NOT WORKING!!!! ...yet, i hope -.-)
for (var i = 0; i < array_lenght(chatStella); i++) //i have to make it so that the argument of array_lenght is depending on which chat is being pressed
	{
		//gray message
		txtb_img += txtb_img_spd;
		txtb_spr_w = sprite_get_width(txtb_spr[page]);
		txtb_spr_h = sprite_get_height(txtb_spr[page]);
		
			//draw the textbox
			var txtb_w = string_width(chatStella[message1_s.text] + border*2); //again, i have to make the array item be in a variable that changes
			draw_sprite_ext(txtb_spr, txtb_img, textbox_x + text_x_offset[page], textbox_y + text_y_offset[page], txtb_w/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);
			
			//draw the text
			var _drawtext = string_copy(chatStella[message1_s.text], 1, draw_char);
			draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + text_y_offset[page] + border, _drawtext, line_sep, line_width)
		
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