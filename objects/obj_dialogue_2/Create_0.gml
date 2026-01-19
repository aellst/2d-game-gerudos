notifplayed = false;

//depth = -999

//the 'give' thing is to send to end room

//the "iddd" is to determine which ending. atm 1 through 5 are used

//-------------------"chat Denise"------------------

chatDenise = [];

chatDeniseData = {
    "start": {
		sender: "blue",
		line: "Hey, haven't seen you in a while, how are you?",
		options: [
			{text: "I'm alright, wanna come over to my party?", target: "party_4"},
			{text: "Oh indeed, wanna come to my party tonight and catch up?", target: "indeed"}
		]
		//next: "invite"
	},
	"party_4": {
		sender: "gray",
		line: "I'm alright, wanna come over to my party?",
		//iddd: 1,
		next: "player_asks_when",
        /*sender: "gray",
        line: "Hi! Party at mine, you coming?",
        next: "player_asks_when"*/
    },
	"indeed": {
		sender: "gray",
		line: "Oh indeed, wanna come to my party tonight and catch up?",
		next: "okay_sure",
	},
    "player_asks_when": {
        sender: "blue",
        line: "When?",
		//give: 2,
        options: [
            { text: "This evening", target: "tonight_node" },
            { text: "Around 6, and dinner at 7", target: "dinner_node" }
        ]
    },
    "tonight_node": {
        sender: "gray",
        line: "This evening",
        next: "when_again",
		//give: 2, //got to dan chat quickly
    },
    "dinner_node": {
        sender: "gray",
        line: "Around 6, and dinner at 7", 
        next: "okay_sure"    
    },
    "okay_sure": {
        sender: "blue",
        line: "Alright, sounds good!", 
        next: "ask_who"
    },
    "when_again" : {
        sender: "blue",
        line: "Ok, tonight, when?",
        options: [
            { text: "Oh, around 6!", target: "at_6" },
            { text: "I plan to start at 6, and dinner at 7", target: "6_and_7" }
        ]
    },
    "at_6" : {
        sender: "gray",
        line: "Oh, around 6!",
        next: "sure_1"  
    },
    "6_and_7" : {
        sender: "gray",
        line: "I plan to start at 6, and dinner at 7",
        next: "okay_sure"
	},
    "sure_1" : {
        sender: "blue",
        line: "Sureee, I guess",
        next: "ask_who"
    
    },
    "ask_who": {
        sender: "blue",
        line: "Who's coming?",
        options: [
            { text: "The friend group", target: "friend_group" },
            { text: "Franka, Stella and Ruben. Ethan and Janiah are out of the country, so they can't come tonight.", target: "specific_friends" },
        ]
    },
	"specific_friends": {
		sender: "gray",
		line: "Franka, Stella and Ruben. Ethan and Janiah are out of the country, so they can't come tonight.",
		next: "fun4",
	},
	"fun4": {
		sender: "blue",
		line: "Sounds good",
		next: "dan",
	},
	"dan": {
		sender: "blue",
		line: "Would it be fun to also invite Dan? She's free tonight.",
		options: [
			{ text: "Oh, yeah that's fun.", target: "fun5"},
			{ text: "I thought she was working tonight lol, could you message her, I'm a bit busy.", target: "busy"},
		],
	},
	"fun5": {
		sender: "gray",
		line: "Oh, yeah that's fun.",
		next: "I'll do it",
	},
	"I'll do it": {
		sender: "blue",
		line: "...I'll send Dan a message",
		iddd: 1,
		next: "confirm_to_end"
	},
	"busy": {
		sender: "gray",
		line: "I thought she was working tonight lol, could you message her, I'm a bit busy.",
		next: "shift"
	},
	"shift": {
		sender: "blue",
		line: "Yeah, her shift just got cancelled. I'll go and message her.",
		iddd: 2,
		next: "confirm_to_end"
	}, 
    "friend_group": {
        sender: "gray",
        line: "The friend group",
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
            { text: "Food would be great", target: "ask_food" },
            { text: "It would be great if you could bring some food", target: "bring_food" }
        ]
    },
    "ask_food": {
        sender: "gray",
        line: "Food would be great",
        next: "clarify"  
    },
    "bring_food": {
        sender: "gray",
        line: "It would be great if you could bring some food",
        next: "clarify"  
    },
    "clarify": {
        sender: "blue",
        line: "What type of food should I bring? ",
        options: [
            { text: "Just bring whatever you like", target: "whatever" },
            { text: "Stella already said she's bringing dessert , so I would say bring something salty maybe?.", target: "salty_food" }
        ]  
    },
    "whatever": {
        sender: "gray",
        line: "Just bring whatever you like",
        next: "okay"
    },
    "salty_food": {
        sender: "gray",
        line: "Stella already said she's bringing dessert, so I would say bring something salty maybe?",
        next: "clarification_food"
	},
    "okay": {
        sender: "blue",
        line: "Okay, I will bring some snacks then",
		iddd: 1,
        next: "confirm_to_end"   
    },
    "clarification_food": {
        sender: "blue",
        line: "Would chips be okay?",
        options: [ 
            { text: "Sure, just make sure you bring enough.", target: "enough" }, //!!!!!!!! id1
            { text: "Would be great, if you can also bring some dips and snacks to go with them ", target: "dips" } //!!!!!! id2
        ]
    },
	"enough": {
		sender: "gray",
		line: "Sure, just make sure you bring enough.",
		iddd: 1,
		next: "confirm_to_end"
	},
	"dips": {
		sender: "gray",
		line:  "Would be great, if you can also bring some dips and snacks to go with them ",
		iddd: 2,
		next: "confirm_to_end"
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
	
	
} // ending of denise's chats

// copied from obj_textboxNEW
//-----------------chat parameters-----------------
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

array_push(chatDenise, chatDeniseData.start);