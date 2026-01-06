if (visible_count < array_length(chatStella))
{
	timer -= 1;
	
	if timer <= 0
		{
		visible_count += 1;
		timer = 120;
		
		var _last_msg = chatStella[visible_count - 1];
		//var _data = chatStellaData[$ _last_msg.node_id];
		
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
	//var _data = chatStellaData[$ current_node];
	var _opts = chatStella[visible_count-1].options;
	//var _opts = _node_with_options.options;
	
	if keyboard_check_pressed(ord("1")) {
		array_push(chatStella, chatStellaData[$ _opts[0].target]);
		showing_options = false; }
	if keyboard_check_pressed(ord("2")) {
		array_push(chatStella, chatStellaData[$ _opts[1].target]);
		showing_options = false; }
}
	