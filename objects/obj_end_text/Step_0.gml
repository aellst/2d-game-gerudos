// click anywhere except settings makes stage move on

var xt = 1206;
var yt = 10;
var xb = 1270;
var yb = 74;

var click_outside_settings = false;
var accept_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

if (mouse_check_button_pressed(mb_left)) {
    click_outside_settings = !point_in_rectangle(mouse_x, mouse_y, xt, yt, xb, yb);
}

if (!obj_settings_menu.visible) {
    if (accept_key || click_outside_settings) {
        
        if (stage < 3) {
            stage += 1;
        } else if (stage == 3) {
            game_end();
        }
    }
}

layer_set_visible(layer1, stage >= 1 && stage <= 2);
layer_set_visible(layer2, stage >= 2 && stage <= 2);