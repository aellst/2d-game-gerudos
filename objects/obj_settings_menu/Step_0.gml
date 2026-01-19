var _up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var _down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var _accept_key = keyboard_check_pressed(vk_enter) ||keyboard_check_pressed(vk_space);

op_length = array_length(option[menu_level]);

pos += _down_key - _up_key;
if (pos >= op_length) pos = 0;
if (pos < 0) pos = op_length - 1;

if (_accept_key) {
	var _sml = menu_level;
	
	switch(menu_level) {
		case 0:
			switch(pos) {
				case 0: visible = false; break;
				case 1: menu_level = 1; break;
				case 2: game_end(); break;
			}
			break;
		case 1:
			switch(pos) {
				case 3: menu_level = 0; break;
			}
			break;
	}
	
	if (_sml != menu_level) pos = 0;
}