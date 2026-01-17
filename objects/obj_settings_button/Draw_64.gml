//put it in corner
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

draw_sprite(spr_placeholder_settings_button, -1, 10, 10);

if (point_in_rectangle(mx, my, 10, 10, 74, 74)) {
    draw_sprite(glow_sprite, -1, 42, 10);
}
