/*//get imput
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//store nr of options in current menu
op_length = array_length(option[menu_level]);

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_lenght - 1};

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
			case 1:
            switch(pos) {
                //change Font
                case 0:
                global.font_setting = !global.font_setting; // Toggles between 0 and 1
                global.main_font = (global.font_setting == 1) ? fnt_open_dyslexic : fnt_standard;
                break;



                //change Speed betweeen messages 
                case 1:
                global.text_speed += 1;
                if (global.text_speed > 5) global.text_speed = 1; // Loops speed 1-5
                break;


                //Brightness
                case 2:
                global.brightness_level -= 0.2;
                if (global.brightness_level < 0.4) global.brightness_level = 1.0;
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




















/*if (!visible) exit;

// input
var up     = keyboard_check_pressed(vk_up);
var down   = keyboard_check_pressed(vk_down);
var left   = keyboard_check_pressed(vk_left);
var right  = keyboard_check_pressed(vk_right);
var accept = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
var cx = device_mouse_x_to_gui(0);
var cy = device_mouse_y_to_gui(0);
var draw_x = cx - 200;
var draw_y = cy - 100;
var left_x  = menu_x;
var left_w  = 200;
var right_x = menu_x + 220;
var right_w = 160;

// LEFT COLUMN: selecting setting
for (var i = 0; i < setting_count; i++)
{
    var yy = menu_y + i * op_space;

    // If mouse is over the left column
    if (cx > left_x && cx < left_x + left_w && cy > yy && cy < yy + 30)
    {
        pos = i; // highlight this row

        // Click: start editing (unless it’s Exit)
        if (mouse_check_button_pressed(mb_left))
        {
            if (pos == 3) // Exit
                visible = false;
            else
                editing = true;
        }
    }
}
// RIGHT COLUMN: editing value
if (editing)
{
    for (var i = 0; i < setting_count; i++)
    {
        var yy = menu_y + i * op_space;

        // If mouse is over the right column value
        if (cx > right_x && cx < right_x + right_w && cy > yy && cy < yy + 30) //waar komt right_x vandaan?
        {
            if (mouse_check_button_pressed(mb_left))
            {
                pos = i; // select the row you clicked
                // Here we can simulate "right arrow" click
                switch(pos)
                {
                    case 0: font_size++;  font_size = clamp(font_size,0,2); break;
                    case 1: msg_speed++;  msg_speed = clamp(msg_speed,0,2); break;
                    case 2: brightness++; brightness = clamp(brightness,0,10); break;
                }
            }
        }
    }
}

    if (accept)
    {
        editing = false;
    }
