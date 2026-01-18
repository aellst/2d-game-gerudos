if (is_active && !is_pressed) {
	glow_time += 0.05;
	image_alpha = sin(glow_time + 1)/2;

	if mouse_check_button_pressed(mb_left) {
		if point_in_rectangle(mouse_x, mouse_y, objtx, objty, objbx, objby) {
			is_pressed = true;
		
			if instance_exists(obj_dialogue_2) {
				obj_dialogue_2.chat_active = true; }
		}
	}
}
