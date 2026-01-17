if (mouse_check_button_released(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, 368, 454, 652, 500)) {
		room_goto(Room1);
    }
	    if (point_in_rectangle(mouse_x, mouse_y, 368, 526, 652, 577)) {
		obj_settings_menu.visible = true;
    }
	    if (point_in_rectangle(mouse_x, mouse_y, 368, 608, 652, 655)) {
		game_end()
    }
}