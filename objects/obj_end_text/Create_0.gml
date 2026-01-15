var ending1stella1 = "Stella's pissed as fuck, brings 1 bag of chips & the party is not fun.";
var ending1stella2 = "You hinted. You implied. You trusted the vibe to carry the message.\nStella waited for the rest of the information but it never came.\nSo she defaulted to the safest possible interpretation: “I’ll bring something just in case.”";
var ending1stella3 = "What this says ab you: \nYou often assume shared understanding, you expect people to “get it”. Now you have 1 coke to share with 5 people";
var ending2stella1 = "b";
var ending2stella2 = "b";
var ending2stella3 = "b";
var ending3stella1 = "c";
var ending3stella2 = "c";
var ending3stella3 = "c";
global.chosenending1 = "no ending assigned. aka: code not work";
global.chosenending2 = "no ending assigned. aka: code not work";
global.chosenending3 = "no ending assigned. aka: code not work";


if (global.endIdentification == 1 || global.endIdentification == 4) {
	global.chosenending1 = ending1stella1;
	global.chosenending2 = ending1stella2;
	global.chosenending3 = ending1stella3;
} else if (global.endIdentification == 2) {
	global.chosenending1 = ending2stella1;
	global.chosenending2 = ending2stella2;
	global.chosenending3 = ending2stella3;
} else if (global.endIdentification == 3) {
	global.chosenending1 = ending2stella1;
	global.chosenending2 = ending2stella2;
	global.chosenending3 = ending2stella3;
} else {
	show_debug_message("an ending has not been categorised") // should atm return with ending 5
}