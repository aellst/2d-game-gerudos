
if obj_settings_menu.visible == true {exit}

if (is_active && !is_pressed) {
	if mouse_check_button_pressed(mb_left) {
		if point_in_rectangle(mouse_x, mouse_y, objtx, objty, objbx, objby) {
			is_pressed = true;
			
			if instance_exists(obj_dialogue_3) {
				obj_dialogue_3.chat_active = true; }
		}
	}
}