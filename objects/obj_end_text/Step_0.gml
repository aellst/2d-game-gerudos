accept_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left);

if (accept_key) {
	stage++;
	stage = clamp(stage, 0, 4);
}

layer_set_visible(layer1, stage >= 1 && stage <= 2);
layer_set_visible(layer2, stage >= 2 && stage <= 2);

if (mouse_check_button_pressed(mb_left) && stage == 4) {
	game_end()
}