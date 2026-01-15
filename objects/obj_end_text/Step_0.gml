if (mouse_check_button_pressed(mb_left)) {
	stage++;
	stage = clamp(stage, 0, 5);
}

layer_set_visible(layer1, stage >= 1 && stage <= 3);
layer_set_visible(layer2, stage >= 2 && stage <= 3);
layer_set_visible(layer3, stage >= 3 && stage <= 3);
//stage 4

if (mouse_check_button_pressed(mb_left) && stage == 5) {
	game_end()
}