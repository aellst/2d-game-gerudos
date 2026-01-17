draw_set_font(font_random)

if (point_in_rectangle(mouse_x, mouse_y, 368, 454, 652, 500)) {
	draw_set_colour(c_yellow);
	draw_text(379, 460, "Start");
	draw_set_colour(c_white);
	draw_text(379, 535, "Settings");
draw_text(379, 612, "Exit");
} else if (point_in_rectangle(mouse_x, mouse_y, 368, 526, 652, 577)) {
	draw_set_colour(c_yellow);
	draw_text(379, 535, "Settings");
	draw_set_colour(c_white);
	draw_text(379, 460, "Start");
	draw_text(379, 612, "Exit");
} else if (point_in_rectangle(mouse_x, mouse_y, 368, 608, 652, 655)) {
	draw_set_colour(c_yellow);
	draw_text(379, 612, "Exit");
	draw_set_colour(c_white);
	draw_text(379, 460, "Start");
	draw_text(379, 535, "Settings");
} else {
	draw_set_colour(c_white);
	draw_text(379, 460, "Start");
	draw_text(379, 535, "Settings");
	draw_text(379, 612, "Exit");
}


