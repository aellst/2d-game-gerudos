draw_set_font(global.font_random);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_black);

//draw correct ending text at correct stage
if (stage >= 1 && stage <= 2) {
	if (stage >= 1) {
		draw_text_ext(855, 135, global.chosenending1, -1, 370);
	}
	
	if (stage >= 2) {
		draw_text_ext(55, 375, global.chosenending2, -1, 325);
	}
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

//draw the clicking to continue / exit 
if (stage >= 0 && stage <= 1) {
	draw_text_ext(645, 661, "Click to continue", -1, 380);
}

if (stage == 2) {
	draw_text_ext(645, 661, "Click to exit game", -1, 380);
}

if (stage == 3) {
	draw_text_ext(645, 661, "Confirm to exit game", -1, 380);
}