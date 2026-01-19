if (!visible) exit;

//draw the options
var _fnt_game = global.font_random
draw_set_font(_fnt_game);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

op_length = array_length(option[menu_level]);

//dynamically get width and height of menu
var _new_w = 0;
for (var i = 0; i < op_length; i++)
    {
        var _op_w = string_width(option[menu_level, i]);
        _new_w = max(_new_w, _op_w);
    }
width = _new_w + op_border*2;
height = op_border*2 + string_height(option[0, 0]) + (op_length - 1) * op_space;

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

//draw the menu bg
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);


for (var i = 0; i < op_length; i++)
    {
		var _c = (pos == i) ? c_yellow : c_white;
        //var _c = c_white;
        //if pos == i {_c = c_yellow};
		var _draw_y = y + op_border + (i*op_space);
		//var _draw_y = y + op_border + i*(string_height(option[menu_level, 0]) + op_space);
    draw_text_color(x + op_border, y + op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
    }
	
//if (global.brightness_alpha > 0) {
//    draw_set_alpha(global.brightness_alpha);
//    draw_set_color(c_black);
    
//    // Get camera bounds
//    var _cx = camera_get_view_x(view_camera[0]);
//    var _cy = camera_get_view_y(view_camera[0]);
//    var _cw = camera_get_view_width(view_camera[0]);
//    var _ch = camera_get_view_height(view_camera[0]);
    
//    draw_rectangle(_cx, _cy, _cx + _cw, _cy + _ch, false);
    
//    draw_set_alpha(1); // Reset alpha for the rest of the game
//}