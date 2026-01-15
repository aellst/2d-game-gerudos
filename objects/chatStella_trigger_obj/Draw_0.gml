if (!is_pressed) {
	if mouse_check_button_pressed(mb_left) {
	
		if instance_position(mouse_x, mouse_y, id) {
			//var _layer_id = layer_get_id("Assets_3");
			//if layer_exists(_layer_id) {
			//	layer_depth(_layer_id, -9000);
			//	//var _is_visible = layer_get_visible(_layer_id);
			//	layer_set_visible(_layer_id, true);
			//}
			
			is_pressed = true;
			
			if instance_exists(obj_textboxNEW) {
				obj_textboxNEW.chat_active = true;
				
				//obj_textboxNEW.visible_count = 1;
			}
		}
	}
}
				
	