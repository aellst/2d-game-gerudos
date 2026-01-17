if (is_active && !is_pressed) {
	if mouse_check_button_pressed(mb_left) {
		
	
		if instance_position(mouse_x, mouse_y, id) {
			var _layer_id_a3 = layer_get_id("Assets_3");
			var _layer_id_t3 = layer_get_id("Tiles_3");
			var _layer_id_a4 = layer_get_id("Assets_4");
			
			if layer_exists(_layer_id_a3) {
				//var _is_visible = layer_get_visible(_layer_id);
				layer_set_visible(_layer_id_a3, false);
			}
			if layer_exists(_layer_id_t3) {
				layer_set_visible(_layer_id_t3, true);
			}
			
			if layer_exists(_layer_id_a4) {
				layer_set_visible(_layer_id_a4, true);
			}
			
			is_pressed = true;
			
			if instance_exists(obj_textboxNEW) {
				obj_textboxNEW.chat_active = true;
				
				//obj_textboxNEW.visible_count = 1;
			}
		}
	}
}
				
	