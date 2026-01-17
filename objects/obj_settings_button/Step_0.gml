var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mouse_check_button_released(mb_left)) {
    if (point_in_rectangle(mx, my, 10, 10, 74, 74)) {
		obj_settings_menu.visible = true
    }
}