// put it on other side of screen
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

draw_sprite(spr_placeholder_settings_button, -1, 1206, 10);

if (point_in_rectangle(mx, my, 1206, 10, 1270, 74)) {
    draw_sprite(glow_sprite, -1, 1238, 10);
}
