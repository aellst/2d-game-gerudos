//depth = -999

//"chat Stella"

chatStella = [];

chatStellaData = {
	"start": {
		sender: "gray",
		line: "Hi! Party at mine, you coming?",
		next: "player_asks_when"
	},
	"player_asks_when": {
		sender: "blue",
		line: "When?",
		options: [
			{ text: "Tonight!", target: "tonight_node" },
			{ text: "At 6, and dinner at 7", target: "dinner_node" }
		]
	},
	"tonight_node": {
		sender: "gray",
		line: "Tonight!",
		next: ""
	},
	"dinner_node": {
		sender: "gray",
		line: "At 6, and dinner at 7", 
		next: ""
	}
};


//var message1_s = {
//	line: "Hi! Party at mine, you coming?",
//	sender: "gray"
//	}
//var message2_s = {
//	line: "When?",
//	sender: "blue"
//	}
//var message3_s = {
//	line: "Tonight!",
//	sender: "gray"
//	}
//var message4_s = {
//	line: "Yes, tonight, when?",
//	sender: "blue"
//	}
//var message5_s = {
//	line: "Oh, at 6!",
//	sender: "gray"
//	}
//var message6_s = {
//	line: "Sure, I guess",
//	sender: "blue"
//	}
//var message7_s = {
//	line: "Who's coming?",
//	sender: "blue"
//	}
//var message8_s = {
//	line: "Our friend group",
//	sender: "gray"
//	}
	
//array_push(chatStella, message1_s);
//array_push(chatStella, message2_s);
//array_push(chatStella, message3_s);
//array_push(chatStella, message4_s);
//array_push(chatStella, message5_s);
//array_push(chatStella, message6_s);
//array_push(chatStella, message7_s);
//array_push(chatStella, message8_s);

//chat parameters
current_node = "start";
visible_count = 0;
timer = 120;
showing_options = false;
scroll_offset = 0;

//textbox parameters
textbox_width = 379;
textbox_height = 57;
border = 8; 
line_sep = 36;
line_width = textbox_width - border*2;
txtb_img = 0;
txtb_img_spd = 30/60;
txtb_spr_gray = menuBackground2;
txtb_spr_blue = menuBackground;
//text_x_offset = [];
//text_y_offset = [];

//text
page = 0; 
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;

function push_node(_node_id) {
	var _data = chatStellaData[$ _node_id];
	array_push(chatStella, {
		line: _data.line,
		sender: _data.sender,
		node_id: _node_id
	});
}

push_node(current_node);