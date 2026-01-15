stage = 0;
layer1 = layer_get_id("Tiles_1");
layer2 = layer_get_id("Tiles_4");


var ending1stella1 = "You hinted. You implied. You trusted the vibe to carry the message.\nStella waited for the rest of the information but it never came.\nSo she defaulted to the safest possible interpretation: \"I\'ll bring something just in case\"";
var ending1stella2 = "What this says about you:\nYou often assume shared understanding, you expect people to \"get it\". Now you have 1 coke to share with 5 people";
var ending2stella1 = "You gave Stella enough information to act but not enough to be confident.\nShe understood the assignment, but played it safe.";
var ending2stella2 = "What this says about you:\nYou communicated clear enough to get things done, you can adjust when needed.";
var ending3stella1 = "You explained what the party needed. Stella didn’t need to ask follow-up questions. She didn’t just bring things, she brought the right things.";
var ending3stella2 = "What this says about you:\nYou know how to balance clarity and trust, you’re good at setting expectations. When expectations are clear, people can act confidently.";
global.chosenending1 = "no ending assigned. aka: code not work";
global.chosenending2 = "no ending assigned. aka: code not work";



if (global.endIdentification == 1) {
	global.chosenending1 = ending1stella1;
	global.chosenending2 = ending1stella2;
} else if (global.endIdentification == 2) {
	global.chosenending1 = ending2stella1;
	global.chosenending2 = ending2stella2;
} else if (global.endIdentification == 3) {
	global.chosenending1 = ending2stella1;
	global.chosenending2 = ending2stella2;
} else {
	show_debug_message("an ending has not been categorised") // should atm return with ending 5
}