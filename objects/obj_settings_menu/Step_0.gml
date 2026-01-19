if !visible exit;

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
		//case 0:
		//	switch(pos) {
		//		case 0: visible = false; break;
		//		case 1: menu_level = 1; break;
		//		case 2: game_end(); break;
		//	}
		//	break;
		case 0:
		switch(pos) {
				case 0: menu_level = 1; break; 
	            case 1: menu_level = 2; break;
	            case 2: menu_level = 3; break;
	            case 3: visible = false; break;
            }
            break;
		case 1:
            switch(pos) {
                case 0: 
                    global.font_random = fnt_standard; 
                    break;
                case 1: 
                    global.font_random = fnt_dyslexia; 
					//text_3BD2E03.font = fnt_dyslexia;
					//text_143E02D.font = fnt_dyslexia;
					//text_3789BA39.font = fnt_dyslexia;
					//text_1E7DDBC7.font = fnt_dyslexia;
					//text_3E97ED6F.font = fnt_dyslexia;
					//text_629FF2FF.font = fnt_dyslexia;
					//filler.font = fnt_dyslexia;
					//text_526DDE3E.font = fnt_dyslexia;
                    break;
                case 2: 
                    menu_level = 0; 
                    break;
            }
            break;
		case 2:
			switch(pos) {
		        case 0: global.text_speed = 180; break; 
		        case 1: global.text_speed = 100;  break;
		        case 2: global.text_speed = 40;    break; 
			    case 3: menu_level = 0;           break;
			}
			break;
		case 3: 
			switch(pos) {
		        case 0: global.brightness_alpha = 0; break;    // No overlay
		        case 1: global.brightness_alpha = 0.25; break; // Slightly dim
		        case 2: global.brightness_alpha = 0.5; break;  // Very dark
		        case 3: menu_level = 0; break;                // Back
    }
    break;
	}
	
	if (_sml != menu_level) pos = 0;
}