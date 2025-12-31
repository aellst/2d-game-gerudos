if (visible_count < array_length(chatStella))
{
	timer -= 1;
	
	if timer <= 0
		{
		visible_count += 1;
		timer = 120;
		
		var _last_msg = chatStella[visible_count - 1];
		var _data = chatStellaData[$ _last_msg.node_id];
		
		if (variable_struct_exists(_data, "options"))
			{
			showing_options = true;
			}
		else if (variable_struct_exists(_data, "next")) && _data.next != ""
			{
			push_node(_data.next);
			}	
		}
}

if (showing_options)
{
	var _data = chatStellaData[$ current_node];
	var _node_with_options = chatStellaData[$ chatStella[visible_count-1].node_id];
	var _opts = _node_with_options.options;
	
	if keyboard_check_pressed(ord("1")) {
		push_node(_opts[0].target);
		showing_options = false; }
	else if keyboard_check_pressed(ord("2")) {
		push_node(_opts[1].target);
		showing_options = false; }
}
	