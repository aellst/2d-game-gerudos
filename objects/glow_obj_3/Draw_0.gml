if (is_active && !is_pressed) {
	draw_set_colour(c_white);
	
	var _base_alpha = image_alpha*0.5;
	
	draw_sprite_ext(glow_sprite, image_index, objx, objy, scalex, scaley, image_angle, c_white, _base_alpha);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(glow_sprite, image_index, objx, objy, scalex, scaley, image_angle, c_white, image_alpha);
	gpu_set_blendmode(bm_normal);
}