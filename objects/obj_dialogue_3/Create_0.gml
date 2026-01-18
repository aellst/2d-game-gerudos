//depth = -999

//the 'give' thing is to send to end room

//the "iddd" is to determine which ending. atm 1 through 5 are used

//-------------------"chat Dan"------------------

chatDan = [];

chatDanData = {
    "start": {
        sender: "gray",
        line: "Hi! Party at mine, you coming?",
        next: "player_asks_when",
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
        next: "when_again",
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
        next: "music_playlist",
    },
    "music_playlist": {
        sender: "gray",
        line: "We still need music. Could you make a playlist?",
        next: "clarify_music",
    },
    "clarify_music": {
        sender: "blue",
        line: "What genre are we going for, is there a preference? How long should the playlist be?",
        options: [
            { text: "just put whatever you like in it- a few hours should be fine", target: "a_little_bit_of_everything" },
            { text: "I dont think  anyone has any preferences. Maybe put a few popular songs in it and that should be fine. it would be cool, if the playlist would last a few hours. After that it can repeat.", target: "confirm" },
        ]
	},
    "a_little_bit_of_everything": {
        sender: "gray",
        line: "just put whatever you like in it. A few hours should be fine",
        next: "okay",
    },
    "confirm": {
        sender: "gray",
        line: "I dont think  anyone has any preferences. Maybe put a few popular songs in it and that should be fine. it would be cool, if the playlist would last a few hours. After that it can repeat.",
        next: "I´ll do that",
    },
    "okay": {
        sender: "blue",
        line: "Okay, i  will put a little bit of everything in it",
        next: "speaker",   
    },
    "speaker": {
        sender: "gray",
        line: "We also need a speaker",
		next: "confusion",
    },
    "confusion": {
        sender: "blue",
        line: "Oh, you dont have a speaker?",
		iddd: 1,
        next: "confirm_to_end", 
    },
    "I´ll do that": {
        sender: "blue",
        line: "Okay, I´ll do that",
        next: "need_speaker",
	},
    "need_speaker": {
        sender: "gray",
        line: "would you be able to bring a speaker",
        next: "confirm 2",    
    },
    "confirm 2": {
        sender: "blue",
        line: "i don´'t have a speaker. I see what I can do. I can ask someone",
		iddd: 2,
        next: "confirm_to_end",
    }, 


	"confirm_to_end": {
        sender: "red",
        line: "Would you like to end the game?",
        options: [
            { text: "End game", target: "ending"}
        ]
    },
	"ending": {
		give: 1,
	},
	
	
} // ending of Dan's chats

// copied from obj_textboxNEW
//-----------------chat parameters-----------------
current_node = "start";
visible_count = 0;
timer = 100;
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

array_push(chatDan, chatDanData.start);