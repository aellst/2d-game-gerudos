accept_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left);

var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

textbox_x = _cam_x;
textbox_y = _cam_y + 439;

//textbox_x = camera_get_view_x(view_camera[0]);
//textbox_y = camera_get_view_y(view_camera[0]) + 439;

//var _current_y = textbox_y;
var _current_y = textbox_y + scroll_offset;
var _spacing = 10;
var _max_bubble_w = 500;
var _line_sep = 40;

//var _chat_bottom_limit = _cam_y + (_cam_h * 0.8);
//var _current_y = _chat_bottom_limit + scroll_offset;


y_pos = 439;

y_pos_blue = 337;

//setup
if setup == false
{
	setup = true;
	draw_set_font(font_random);
	draw_set_valign(fa_top);
}

var _total_history_h = 0;

var _sw_gray = sprite_get_width(txtb_spr_gray);
var _sh_gray = sprite_get_height(txtb_spr_gray);
var _sw_blue = sprite_get_width(txtb_spr_blue);
var _sh_blue = sprite_get_height(txtb_spr_blue);

if (chat_active) {
	//----------------chat loop (IT WORKS!! very messy sorry i tried many different things, i will clean it up when it's fully done)
	for (var i = visible_count - 1; i >= 0; i--) 
		{
			var _struct = chatDan[i];
		
			//txtb_img += txtb_img_spd;
			txtb_spr_w_gray = sprite_get_width(txtb_spr_gray);
			txtb_spr_w_blue = sprite_get_width(txtb_spr_blue);
			txtb_spr_h_gray = sprite_get_height(txtb_spr_gray);
			txtb_spr_h_blue = sprite_get_height(txtb_spr_blue);
		
			var _is_gray = (_struct.sender == "gray");
			var _is_red = (_struct.sender == "red");
			var _spr = txtb_spr_blue;
			if (_is_gray) _spr = txtb_spr_gray;
			if (_is_red) _spr = txtb_spr_red;
		
			//var _x_pos = textbox_x + (_is_gray ? x_pos_gray : x_pos_blue);	
		
			var _txt_w = string_width_ext(_struct.line, _line_sep, _max_bubble_w) + border*2
			//var _txt_w = string_width(_struct.line) + border*2;
			var _txt_h = string_height_ext(_struct.line, _line_sep, _max_bubble_w) + border*2;
			//var _txt_h = string_height(_struct.line) + border*2;
		
			var _x_pos = textbox_x + x_pos_blue;
			if (_is_gray) _x_pos = textbox_x + x_pos_gray;
			if (_is_red) _x_pos = textbox_x + x_pos_red;
		
			var _anchor_x = textbox_x + (_is_gray ? x_pos_gray : x_pos_blue);
			//var _left_edge = _is_gray ? (_x_pos - _txt_w) : _x_pos;
			var _left_edge = _x_pos;
			if _is_gray { _left_edge = _x_pos - _txt_w; }
			else if _is_red {_left_edge = _x_pos - (_txt_w/2); }
		
			//if _is_gray {
			//	_left_edge = _x_pos - _txt_w; }
			
			_current_y -= _txt_h;	

			//----------------draw the textbox----------------
			//if (_current_y < _cam_y + 800 && _current_y > 400) {
				//var _scale_w = _txt_w / sprite_get_width(_spr);
				//var _scale_h = _txt_h / sprite_get_height(_spr);
				draw_sprite_ext(_spr, 0, _x_pos, _current_y, _txt_w/txtb_spr_w_gray, _txt_h/txtb_spr_h_gray, 0, c_white, 1);
				
				//-----------------draw the text-----------------
				draw_set_halign(fa_left);
				if (_is_red) { draw_set_colour(c_black); }
				else { draw_set_colour(c_white); }
				draw_text_ext(_left_edge + border, _current_y + border, _struct.line, _line_sep, _max_bubble_w);
				//draw_text(_left_edge + border, _current_y + border, _struct.line);
			
				_current_y -= _spacing;
				_total_history_h += (_txt_h + _spacing);
			}
		

		var _window_height = 416;
		max_scroll = max(0, _total_history_h - 400);
	
		//---------------options-----------------------
	
		if showing_options {
		
			var _cam_x = camera_get_view_x(view_camera[0]);
			var _cam_y = camera_get_view_y(view_camera[0]);
		
			var _bw = 801;
			//var _bh = 105;
			var _opts = chatDan[visible_count - 1].options;
			var _inner_padding = 10;
			var _max_w = _bw - (_inner_padding * 2);
			var _sep = 40;
			var _options_gap = 10;
		
			var _total_text_height = 0;
			for (var i = 0; i < array_length(_opts); i++) {
				_total_text_height += string_height_ext("   " + _opts[i].text, _sep, _max_w) + _options_gap;
				if (i < array_length(_opts) - 1) _total_text_height += _options_gap;
			}
		
			var _bh = _total_text_height + (_inner_padding*2);
			var _bx = _cam_x + 379;
			var _by = _cam_y + 450;
		
			draw_sprite_stretched(menuBackgroundWhite, 0, _bx, _by, _bw, _bh);
		
			draw_set_halign(fa_left);
			//draw_set_colour(c_black);
			var _current_draw_y = _by + _inner_padding;
		
			//var _opts = chatStella[visible_count - 1].options;
		
			for (var i = 0; i < array_length(_opts); i++) {
			
				var _txt = "   " + _opts[i].text;
				var _h = string_height_ext(_txt, _sep, _max_w);
			
				var _x1 = _bx + _inner_padding;
				var _y1 = _current_draw_y;
				var _x2 = _bx + _bw  - _inner_padding;
				var _y2 = _current_draw_y + _h;
			
				var _is_hovering = point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x2, _y2);
				
				//if _is_hovering && (mouse_x != mouse_prev_x || mouse_y != mouse_prev_y) {
				//	opt_select = i; }
			
				if (i == opt_select) {
					draw_set_colour(c_gray);
					var _cursor_x = _x1 - 25;
					var _cursor_y = _y1 + (_h / 2);
				
					draw_sprite(spr_textbox_arrow, 0, _cursor_x, _cursor_y);
				
					//if (mouse_check_button_pressed(mb_left)) {
					//	array_push(chatStella, chatStellaData[$ _opts[i].target]);
					//	showing_options = false;
					//	opt_select = 0;
					//}
				} else {
					draw_set_colour(c_black); }
			
				draw_text_ext(_x1, _y1, _txt, _sep, _max_w);
				//draw_text_ext(_bx + _inner_padding, _current_draw_y, _txt, _sep, _max_w); 
				//_current_draw_y += string_height_ext(_txt, _sep, _max_w) + _options_gap;
				_current_draw_y += _h + _options_gap;
				}
				
			mouse_prev_x = mouse_x;
			mouve_prev_y = mouse_y;
			
		
			draw_set_colour(c_white);
		}
}
	