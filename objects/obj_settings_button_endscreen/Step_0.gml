//if clicked on it the settings appear
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mouse_check_button_released(mb_left)) {
    if (point_in_rectangle(mx, my, 1206, 10, 1270, 74)) {
        obj_settings_menu.visible = !obj_settings_menu.visible; // toggle
        show_debug_message("Menu toggled: " + string(obj_settings_menu.visible));
    }
}