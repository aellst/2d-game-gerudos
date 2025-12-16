function scr_set_default_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtb_spr[page_number] = menuBackground;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
}

/// @param text
/// @param [character]

enum SpriteId
{
	Cat,
	Alien,
}

function scr_txt(_text){
	
	scr_set_default_for_text()
	
	text[page_number] = _text;
	
	//get character info
	if argument_count > 1 {
		switch(argument[1])
			{
			case SpriteId.Cat:
				speaker_sprite[page_number] = spr_player_cat;
				txtb_spr[page_number] = menuBackground;
				break;
				
			case SpriteId.Alien:
				speaker_sprite[page_number] = spr_player_alien;
				txtb_spr[page_number] = menuBackground2;
				break;
			}	
		}
		
	//side the character is on
	if argument_count > 2 {
		speaker_side[page_number] = argument[2];
		}

	page_number++;

}





/// @param option
/// @param link_id
function scr_option(_option, _link_id){
	
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
	
}


/// @param text_id
function create_textbox(_text_id) {
	
	with (instance_create_depth(0, 0, -9999, obj_textbox))
		{
		script_game_text(_text_id);
		}

}