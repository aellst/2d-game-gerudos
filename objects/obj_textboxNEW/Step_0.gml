var _last_count = visible_count;

if chat_active {
	
	instance_deactivate_object(obj_notification);

	if !showing_options {

		if (visible_count < array_length(chatStella))
		{
			timer -= 1;
	
			if timer <= 0
				{
				visible_count += 1;
				timer = 100;
		
				var _last_msg = chatStella[visible_count - 1];
		
				if (variable_struct_exists(_last_msg, "options"))
					{
					choice_delay_timer = choice_delay_max;
					}
				else if (variable_struct_exists(_last_msg, "next")) && _last_msg.next != ""
					{
					array_push(chatStella, chatStellaData[$ _last_msg.next]);
					}	
				}
		}
	}
}

if choice_delay_timer > 0 {
	choice_delay_timer -= 1;
	
	if (choice_delay_timer <= 0 && !showing_options) {
		var _last_msg = chatStella[visible_count - 1];
		if (variable_struct_exists(_last_msg, "options")) {
			showing_options = true; }
	}
}
	


if (showing_options)
{
		
	var _opts = chatStella[visible_count-1].options;
	var _total_opts = array_length(_opts);
	var _move = (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) - keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")));

	if _move != 0 {
		opt_select = (opt_select + _move + _total_opts) % _total_opts; }
		//var _total = array_lenght(chatStellaData.options);
		//if opt_select < 0 opt_select = _total_opts - 1;
		//if opt_select >= _total_opts opt_select = 0;
	
	var _confirm = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left);
	
	if _confirm {
		var _target_key = _opts[opt_select].target;
		array_push(chatStella, chatStellaData[$ _target_key]);
		//audio_play_sound(message_eff, 10, false);
		
		showing_options = false;
		opt_select = 0;
		//visible_count = array_length(chatStella);
		}
	


//	if keyboard_check_pressed(ord("1")) {
//		array_push(chatStella, chatStellaData[$ _opts[0].target]);
//		showing_options = false; }
//	if keyboard_check_pressed(ord("2")) {
//		array_push(chatStella, chatStellaData[$ _opts[1].target]);
//		showing_options = false; }
	
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
    var _last_msg = chatStella[visible_count - 1];

    if (variable_struct_exists(_last_msg, "give") && real(_last_msg.give) == 1)
    {
        room_goto(Room_End);
    } else if (variable_struct_exists(_last_msg, "give") && real(_last_msg.give) == 2) {
		instance_create_layer(0,0, "Instances", obj_dialogue_2);
		instance_create_layer(0,0, "Instances_1", glow_obj_2);
		with (instance_create_layer(308, 192, "Instances_1", obj_notification_2)) {
			image_xscale = 0.5;
			image_yscale = 0.5;
		};
		instance_destroy();
		layer_set_visible("Tiles_3", false);
		layer_set_visible("Assets_4", false);
		layer_set_visible("Assets_3", true);
		layer_set_visible("Tile_dan_pfp", true);
	};
	if (variable_struct_exists(_last_msg, "iddd") && real(_last_msg.iddd) != 0)
    {
		global.endIdentification = real(_last_msg.iddd);
    }
}

if visible_count > _last_count {
	audio_play_sound(chat_bubble_eff, 10, false); }