/*//get imput
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//store nr of options in current menu
op_length = array_length(option[menu_level]);

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

//using the options
if accept_key {

    var _sml = menu_level;

    switch(menu_level) {

        //pause menu
        case 0:
            switch(pos) {
                //start game
                case 0: room_goto_next(); break
                //settings
                case 1: menu_level = 1; break;
                //quit game
                case 2: game_end(); break;
                }
            break;

        //settings
        case 1:
            switch(pos) {
                //change Font
                case 0:

                    break;
                //change Speed betweeen messages 
                case 1:

                    break;

                //Brightness
                case 2:

                    break;

                //back
                case 3:
                    menu_level = 0;
                    break;
        }
    }

    //set position back
    if _sml != menu_level {pos = 0};

    //correct option lenght
    op_length = array_length(option[menu_level]);

}*/