//draw_sprite(ending_art, real, 55, 55)

draw_set_font(font_random);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_black);

if (stage >= 1 && stage <= 3) {
	if (stage >= 1) {
		draw_text_ext(840, 120, global.chosenending1, -1, 415);
	}
	
	if (stage >= 2) {
		draw_text_ext(90, 200, global.chosenending2, -1, 330);
	}
	
	if (stage >= 3) {
		draw_text_ext(870, 440, global.chosenending3, -1, 370);
	}
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

if (stage >= 0 && stage <= 2) {
	draw_text_ext(645, 677, "Click to continue", -1, 380);
}

if (stage == 3) {
	draw_text_ext(645, 677, "Click to exit game", -1, 380);
}

if (stage == 4) {
	draw_text_ext(645, 677, "Confirm to exit game", -1, 380);
}


/* goal: 

goal: background = same background
big popup = art (classic microsoft popup)
small popup(s) (kinda stacked on each other) = discription of what's your ending
both with an x -> means exit game

*/