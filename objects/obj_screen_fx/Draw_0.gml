depth = -999;

if (global.brightness_alpha > 0) {
    draw_set_alpha(global.brightness_alpha);
    draw_set_color(c_black);
    
    var _cx = camera_get_view_x(view_camera[0]);
    var _cy = camera_get_view_y(view_camera[0]);
    var _cw = camera_get_view_width(view_camera[0]);
    var _ch = camera_get_view_height(view_camera[0]);
    
    draw_rectangle(_cx, _cy, _cx + _cw, _cy + _ch, false);
    
    draw_set_alpha(1); // Reset alpha
}