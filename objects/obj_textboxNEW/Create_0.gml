notifplayed = false;

//depth = -999

//the 'give' thing is to send to end room

//the "iddd" is to determine which ending. atm 1 through 5 are used

//-------------------"chat Stella"------------------

chatStella = [];

chatStellaData = {
	"start": {
		sender: "gray",
		line: "Hi! Party at mine, you coming?",
		next: "player_asks_when",
	},
	"player_asks_when": {
		sender: "blue",
		line: "When?",
		//iddd: 1, //test
		options: [
			{ text: "Tonight!", target: "tonight_node" },
			{ text: "At 6, and dinner at 7", target: "dinner_node" }
		]
	},
	"tonight_node": {
		sender: "gray",
		line: "Tonight!",
		next: "when_again",
		//give: 1, //quickly go to ending room -> to test ending room shit :>
		//give: 2, // go to denise
	},
	"dinner_node": {
		sender: "gray",
		line: "At 6, and dinner at 7", 
		next: "okay_sure"
	},
	"okay_sure": {
		sender: "blue",
		line: "Okay, sure!", 
		next: "ask_who"
	},
	"when_again" : {
		sender: "blue",
		line: "Yes, tonight, when?",
		options: [
			{ text: "Oh, at 6!", target: "at_6" },
			{ text: "I plan to start at 6, and dinner at 7", target: "6_and_7" }
		],
	},
	"at_6" : {
		sender: "gray",
		line: "Oh, at 6!",
		next: "sure_1"
	},
	"6_and_7" : {
		sender: "gray",
		line: "I plan to start at 6, and dinner at 7",
		next: "okay_sure"
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
			{ text: "Franka and Ruben. Ethan and Janiah are out of the country, so they can't come tonight.", target: "specific_friends" },
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
	"dish_or_snacks": {
		sender: "gray",
		line: "Do you have time to make a dish? Otherwise snacks or drinks are okay!",
		next: "not_cook"
	},
	"not_cook": {
		sender: "blue",
		line: "If it's fine with you, I prefer going with snacks or drinks. I'm not a good cook.",
		options: [
			{ text: "Could you bring drinks for dinner?", target: "drinks_general2" },
			{ text: "Could you bring a white wine or some light beers for dinner?", target: "wine_beers2" }
		]
	},
	"drinks_general2": {
		sender: "gray",
		line: "Could you bring drinks for dinner?",
		next: "okk1"
	},
	"wine_beers2": {
		sender: "gray",
		line: "Could you bring a white wine or some light beers for dinner?",
		next: "okk2"
	},
	"okk1": {
		sender: "blue",
		line: "okk",
		next: "confirm_to_end",
		iddd: 1
	},
	"okk2": {
		sender: "blue",
		line: "okk",
		next: "confirm_to_end",
		iddd: 2
	},
	"specify": {
		sender: "blue",
		line: "Pls be more specific...",
		options: [
			{ text: "Like a dish or something", target: "dish" },
			{ text: "Do you have time for risotto? Otherwise a salad?", target: "risotto_or_salad1" }
		]
	},
	"dish": {
		sender: "gray",
		line: "Like a dish or something",
		next: "confirm_1"
	},
	"confirm_1": {
        sender: "blue",
        line: "...I'll see what I can do",
        next: "confirm_to_end",
		iddd: 1
    },
    "confirm_to_end": {
        sender: "red",
        line: "Would you like to end the game?",
        options: [
            { text: "End game", target: "ending"},
			{ text: "Go back to contact list", target: "next_chat"}
        ]
    },
	"ending": {
		give: 1,
	},
	"next_chat": {
		give: 2,
	},
	"specific_friends": {
		sender: "gray",
		line: "Franka, Dan, Denise and Ruben. Ethan and Janiah are out of the country, so they can't come tonight.",
		next: "cool"
	},
	
	"cool": {
		sender: "blue",
		line: "Cool! Do you need me to bring something?",
		options: [
			{ text: "Could you bring food?", target: "bring_food" },
			{ text: "Do you have time to make a dish? Otherwise snacks or drinks are okay!", target: "bring_dish" }
		]
	},
	"bring_food": {
		sender: "gray",
		line: "Could you bring food?",
		next: "dish_or_snack"
	},
	"bring_dish": {
		sender: "gray",
		line: "Do you have time to make a dish? Otherwise snacks or drinks are okay!",
		next: "not_good_cook"
	},
	"dish_or_snack": {
		sender: "blue",
		line: "Do you need more like a dish or snacks?",
		options: [
			{ text: "You choose!", target: "you_choose" },
			{ text: "Could you bring a dish? Maybe risotto or a salad?", target: "risotto_salad2" }
		]
	},
	"not_good_cook": {
		sender: "blue",
		line: "If it's fine with you, I prefer going with snacks or drinks. I'm not a good cook.",
		options: [
			{ text: "Could you bring drinks for dinner?", target: "drinks_general" },
			{ text: "Could you bring a white wine or some light beers for dinner?", target: "wine_beers" }
		]
	},
	"drinks_general": {
		sender: "gray",
		line: "Could you bring drinks for dinner?",
		next: "yes"
	},
	"wine_beers": {
		sender: "gray",
		line: "Could you bring a white wine or some light beers for dinner?",
		next: "yes"
	},
	"yes": {
		sender: "blue",
		line: "yess",
		next: "confirm_to_end",
		iddd: 3
	},
	"you_choose": {
		sender: "gray",
		line: "You choose!",
		next: "aight"
	},
	"aight": {
		sender: "blue",
		line: "aight",
		next: "confirm_to_end",
		iddd: 2
	},
	"risotto_salad1": {
		sender: "gray",
		line: "Could you bring a dish? Maybe risotto or a salad?",
		next: "try_my_best1"
	},
	"risotto_salad2": {
		sender: "gray",
		line: "Could you bring a dish? Maybe risotto or a salad?",
		next: "try_my_best2"
	},
	"try_my_best1": {
		sender: "blue",
		line: "I don't know how to make risotto. I'll try my best with a salad",
		next: "sick1"
	},
	"try_my_best2": {
		sender: "blue",
		line: "I don't know how to make risotto. I'll try my best with a salad",
		next: "sick2"
	},
	"sick1": {
		sender: "gray",
		line: "sick!",
		next: "confirm_to_end",
		iddd: 1
	},
	"sick2": {
		sender: "gray",
		line: "sick!",
		next: "confirm_to_end",
		iddd: 3
	},
	
	

};

//-----------------chat parameters-----------------
if (!variable_global_exists("text_speed")) {
	global.text_speed = 100;
}
current_node = "start";
visible_count = 0;
timer = global.text_speed;
showing_options = false;
choice_delay_timer = 0; 
choice_delay_max = 100;
scroll_offset = 0;
max_scroll = 0;
scroll_speed = 30;
chat_active = false;
opt_select = 0;
mouse_prev_x = mouse_x;
mouse_prev_y = mouse_y;

//----------------textbox parameters-----------------
textbox_width = 379;
textbox_height = 57;
border = 12; 
line_sep = 36;
line_width = textbox_width - border*2;
txtb_img = 0;
txtb_img_spd = 30/60;
txtb_spr_gray = menuBackground2;
txtb_spr_blue = menuBackground;
txtb_spr_red = menuBackgroundEnd;
x_pos_gray = 1179;
x_pos_blue = 378;
x_pos_red = (x_pos_gray + x_pos_blue) / 2;

//---------------------text--------------------------
page = 0; 
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;

array_push(chatStella, chatStellaData.start);