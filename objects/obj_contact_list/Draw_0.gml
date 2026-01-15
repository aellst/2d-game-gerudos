//draw the options
fnt_game = Font1
draw_set_font(fnt_game);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//dynamically get width and height of menu
var _new_w = 0;
for (var i = 0; i < op_lenght; i++)
    {
        var _op_w = string_width(option[menu_level, i]);
        _new_w = max(_new_w, _op_w);
    }
width = _new_w + op_border2;
height = op_border2 + string_height(option[0, 0]) + (op_lenght - 1)*op_space;

//center menu
x = camera_get_view_x(view_camera[0]) + 323;
y = camera_get_view_y(view_camera[0]) + 289;


for (var i = 0; i < op_lenght; i++)
    {
        var _c = c_ltgrey;
        if pos == i {_c = c_navy};
    draw_text_color(x + op_border, y + op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
    }