//get iput
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(ord("E"));


//store options in current menu
op_lenght = array_length(option[menu_level]);

//move through the menu
pos += down_key - up_key;
if pos >= op_lenght {pos = 0};
if pos < 0 {pos = op_lenght - 1};

//using the options
if accept_key {

    var _sml = menu_level;

    switch(menu_level) {

        //pause menu
        case 0:
            switch(pos) {
                //start game
                case 0:  break
                //settings
                case 1:  break;
                //quit game
                case 2:  break;
                }
            break;


    }

//set position back
if _sml != menu_level {pos = 0};

//correct option lenght
op_lenght = array_length(option[menu_level]);

}

