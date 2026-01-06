//depth = -999

//-------------------"chat Stella"------------------

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
		next: "when_again"
	},
	"when_again" : {
		sender: "blue",
		line: "Yes, tonight, when?",
		options: [
			{ text: "Oh, at 6!", target: "at_6" },
			{ text: "I plan to start at 6, and dinner at 7", target: "6_and_7" }
		]
	},
	"at_6" : {
		sender: "gray",
		line: "Oh, at 6!",
		next: "sure_1"
	},
	"sure_1" : {
		sender: "blue",
		line: "Sure, I guess",
		next: "ask_who"
	},
	"ask_who": {
		sender: "blue",
		line: "Who's coming?",
		options: [
			{ text: "Our friend group", target: "friend_group" },
			{ text: "Franka, Dan, Denise and Ruben. Ethan and Janiah are out of the country, so they can't come tonight.", target: "specific_friends" },
		]
	},
	"friend_group": {
		sender: "gray",
		line: "Our friend group",
		next: "dot_dot"
	},
	"dot_dot": {
		sender: "blue",
		line: "...",
		next: "confirm_and_ask"
	},
	"confirm_and_ask": {
		sender: "blue",
		line: "I'll be there. Should I bring something?",
		options: [
			{ text: "Could you bring food?", target: "ask_food" },
			{ text: "Do you have time to make a dish? Otherwise snacks or drinks are okay!", target: "dish_or_snacks" }
		]
	},
	"ask_food": {
		sender: "gray",
		line: "Could you bring food?",
		next: "specify"
	},
	
	"specify": {
		sender: "blue",
		line: "Pls be more specific...",
		options: [
			{ text: "Like a dish or something", target: "dish" },
			{ text: "Do you have time for risotto? Otherwise a salad?", target: "risotto_or_salad" }
		]
	},
	"dish": {
		sender: "gray",
		line: "Like a dish or something",
		next: "confirm_1"
	},
	"confirm_1": {
		sender: "blue",
		line: "ok, I'll see what I can do",
		next: ""
	},
	
	"dinner_node": {
		sender: "gray",
		line: "At 6, and dinner at 7", 
		next: ""
	}
};

//-----------------chat parameters-----------------
current_node = "start";
visible_count = 0;
timer = 120;
showing_options = false;
//scroll_offset = 0;
choice_delay_timer = 0; 
choice_delay_max = 120;

//----------------textbox parameters-----------------
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

//---------------------text--------------------------
page = 0; 
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;

//function push_node(_node_id) {
	//var _data = chatStellaData[$ _node_id];
//	array_push(chatStella, {
//		line: _data.line,
//		sender: _data.sender,
//		node_id: _node_id
//	});
//}

//push_node(current_node);

array_push(chatStella, chatStellaData.start);