if (keyboard_check_pressed(vk_escape)) {
    visible = !visible;
	if visible { menu_level = 0; pos = 0; }
}

if (input_delay > 0) {
    input_delay -= 1;
}

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
	            case 3: visible = false; input_delay = 5; break;
            }
            break;
		case 1:
            switch(pos) {
                case 0: 
                    global.font_random = fnt_standard; menu_level = 0;
                    break;
                case 1: 
                    global.font_random = fnt_dyslexia; menu_level = 0;
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
		        case 0: global.text_speed = 180; menu_level = 0; break; 
		        case 1: global.text_speed = 100; menu_level = 0; break;
		        case 2: global.text_speed = 40;  menu_level = 0; break; 
			    case 3: menu_level = 0; break;
			}
			break;
		case 3: 
			switch(pos) {
		        case 0: global.brightness_alpha = 0; menu_level = 0; break;  
		        case 1: global.brightness_alpha = 0.25; menu_level = 0; break;
		        case 2: global.brightness_alpha = 0.5; menu_level = 0; break; 
		        case 3: menu_level = 0; break;     
    }
    break;
	}
	
	if (_sml != menu_level) pos = 0;
}

if (input_delay > 0) input_delay--;