
if obj_settings_menu.visible == true {exit}

if (is_active && !is_pressed) {
	if mouse_check_button_pressed(mb_left) {
		if instance_position(mouse_x, mouse_y, id) {
			is_pressed = true;
			
			if instance_exists(obj_textboxNEW) {
				obj_textboxNEW.chat_active = true; }
		}
	}
}