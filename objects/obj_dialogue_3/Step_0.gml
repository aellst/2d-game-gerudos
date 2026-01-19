if (instance_exists(obj_settings_menu)) {
	if (obj_settings_menu.visible || obj_settings_menu.input_delay > 0) {
		mouse_right_spot = false; 
        exit;
    }
}

if (point_in_rectangle(mouse_x, mouse_y, 111, 286, 338, 347)) {
	if (mouse_check_button_pressed(mb_left)) {
		layer_set_visible("bg_bio_Dan", true);
		layer_set_visible("txt_bio_Dan", true);
		layer_set_visible("dan_namecard", true);
		layer_set_visible("Assets_3", false);
		layer_set_visible("Assets_2", false);
		layer_set_visible("Tile_dan_icon", true);
		layer_set_visible("Tile_Dan_pfp", false);
		chat_active = true;
	}
}

var _last_count = visible_count 

if chat_active {
	
	instance_deactivate_object(obj_notification);

	if !showing_options {

		if (visible_count < array_length(chatDan))
		{
			timer -= 1;
	
			if timer <= 0
				{
				visible_count += 1;
				timer = global.text_speed;
		
				var _last_msg = chatDan[visible_count - 1];
		
				if is_struct(_last_msg) {
					if (variable_struct_exists(_last_msg, "options"))
					{
					choice_delay_timer = choice_delay_max;
					}
				else if (variable_struct_exists(_last_msg, "next")) && _last_msg.next != ""
					{
					array_push(chatDan, chatDanData[$ _last_msg.next]);
					}	
				}
				}
		}
	}
}



if choice_delay_timer > 0 {
	choice_delay_timer -= 1;
	
	if (choice_delay_timer <= 0 && !showing_options) {
		var _last_msg = chatDan[visible_count - 1];
		if (variable_struct_exists(_last_msg, "options")) {
			showing_options = true; }
	}
}



if (showing_options)
{
		
	var _opts = chatDan[visible_count-1].options;
	var _total_opts = array_length(_opts);
	var _move = (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) - keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")));

	if _move != 0 {
		opt_select = (opt_select + _move + _total_opts) % _total_opts; }
		//var _total = array_lenght(chatStellaData.options);
		//if opt_select < 0 opt_select = _total_opts - 1;
		//if opt_select >= _total_opts opt_select = 0;
	
	mouse_right_spot = false
	if mouse_check_button_pressed(mb_left) {
		if point_in_rectangle(mouse_x, mouse_y, 350, 0, 1280, 720) {
			mouse_right_spot = true
		}
	}	
	
	var _confirm = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_right_spot;
	
	if _confirm {
		var _target_key = _opts[opt_select].target;
		array_push(chatDan, chatDanData[$ _target_key]);
		
			showing_options = false;
			opt_select = 0;
	}
}
	
	

if (mouse_wheel_up()) {
	scroll_offset -= scroll_speed;
}
if (mouse_wheel_down()) {
	scroll_offset += scroll_speed;
}
scroll_offset = clamp(scroll_offset, 0, max_scroll);



//-------to get to the ending 'room' and to make global.endIdentification the iddd value---------

if (visible_count > 0)
{
    var _last_msg = chatDan[visible_count - 1];
	
	if is_struct(_last_msg) {

	    if (variable_struct_exists(_last_msg, "give") && real(_last_msg.give) == 1)
	    {
	        room_goto(Room_End);
	    };
		if (variable_struct_exists(_last_msg, "iddd") && real(_last_msg.iddd) != 0)
	    {
			global.endIdentification3 = real(_last_msg.iddd);
	    }
	}
}

if visible_count > _last_count {
	audio_play_sound(chat_bubble_eff, 10, false); }