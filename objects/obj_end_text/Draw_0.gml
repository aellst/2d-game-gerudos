//draw_sprite(ending_art, real, 55, 55)

draw_set_font(font_random);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_black);

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

if (stage >= 0 && stage <= 1) {
	draw_text_ext(645, 677, "Click to continue", -1, 380);
}

if (stage == 2) {
	draw_text_ext(645, 677, "Click to exit game", -1, 380);
}

if (stage == 3) {
	draw_text_ext(645, 677, "Confirm to exit game", -1, 380);
}


/* goal: 

goal: background = same background
big popup = art (classic microsoft popup)
small popup(s) (kinda stacked on each other) = discription of what's your ending
both with an x -> means exit game

*/