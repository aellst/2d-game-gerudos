if (is_pressed == false) {
	glow_time += 0.05;
	image_alpha = sin(glow_time + 1)/2;
	
	show_debug_message("Timer: " + string(glow_time) + " | Alpha: " + string(image_alpha));
	
	if mouse_check_button_pressed(mb_left) {
		if instance_position(mouse_x, mouse_y, id) {
			is_pressed = true;
			//glow_alpha = 0;
		}
	}
}
			