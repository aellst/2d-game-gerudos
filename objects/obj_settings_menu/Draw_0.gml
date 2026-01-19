/*//draw the options
fnt_game = font_random
draw_set_font(global.main_font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

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
        var _c = c_white;
        if pos == i {_c = c_yellow};
    draw_text_color(x + op_border, y + op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
    } */























/*if (!visible) exit;

draw_set_font(font_random);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

var myx = menu_x;
var myy = menu_y;


// background
draw_set_color(c_black);
draw_rectangle(myx - 20, myy - 20, myx + 420, myy + 160, false);

// LEFT COLUMN NAMES
var names = [
    "Font",
    "Message Speed",
    "Brightness",
    "Exit"
];

// RIGHT COLUMN VALUES
var values = [
    ["Small", "Medium", "Large"][font_size],
    ["Slow", "Normal", "Fast"][msg_speed],
    string(brightness),
    ""
];

// draw left
for (var i = 0; i < setting_count; i++)
{
    var col = (!editing && pos == i) ? c_yellow : c_white;
    draw_set_color(col);
    draw_text(myx, myy + i * op_space, names[i]);
}

// draw right
for (var i = 0; i < setting_count; i++)
{
    var col = (editing && pos == i) ? c_yellow : c_white;
    draw_set_color(col);
    draw_text(myx + 220, myy + i * op_space, values[i]);
}