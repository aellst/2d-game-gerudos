if (visible_count < array_length(chatStella))
{
	timer -= 1;
	
	if timer <= 0
		{
		visible_count += 1;
		timer = 120;
		
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

	if keyboard_check_pressed(ord("1")) {
		array_push(chatStella, chatStellaData[$ _opts[0].target]);
		showing_options = false; }
	if keyboard_check_pressed(ord("2")) {
		array_push(chatStella, chatStellaData[$ _opts[1].target]);
		showing_options = false; }
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

    if (variable_struct_exists(_last_msg, "give") && real(_last_msg.give) != 0)
    {
        room_goto(Room_End);
    };
	if (variable_struct_exists(_last_msg, "iddd") && real(_last_msg.iddd) != 0)
    {
		global.endIdentification = real(_last_msg.iddd);
    }
}