if (is_active && !is_pressed) {
	glow_time += 0.05;
	image_alpha = (sin(glow_time) + 1)/2;
	
	if mouse_check_button_pressed(mb_left) {
		if instance_position(mouse_x, mouse_y, id) {
			is_pressed = true;
			
			if instance_exists(obj_textboxNEW) {
				obj_textboxNEW.chat_active = true; }
		}
	}
}
			