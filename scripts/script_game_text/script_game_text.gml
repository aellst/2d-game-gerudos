/// @param text_id

enum DialogId
{
	Denise,
	DeniseLowContext,
	DeniseHighContext,
	DeniseLowContext2,
	DeniseHighContext2,
	Ruben,
	RubenLowContext,
	RubenHighContext,
	RubenLowContext2,
	RubenHighContext2,
	
}

function script_game_text(_text_id){

switch(_text_id) {
		
		case DialogId.Denise:
			scr_txt("Denise: What type of food should I bring?");
				scr_option("Just bring whatever you'd like.", DialogId.DeniseLowContext);
				scr_option("Dessert is covered already, something salty maybe?", DialogId.DeniseHighContext);
			break;
			case DialogId.DeniseLowContext:
				scr_txt("Just bring whatever you'd like.");
				scr_txt("Denise: okay, I'll bring some snacks.");
				break;
			case DialogId.DeniseHighContext:
				scr_txt("Dessert is covered already, something salty maybe?");
				scr_txt("Denise: would chips be okay?");
					scr_option("sure, just make sure you bring enough.", DialogId.DeniseLowContext2);
					scr_option("great!, dips and snacks as well if you can! c:", DialogId.DeniseHighContext2);
				break;
				case DialogId.DeniseLowContext2:
					scr_txt("sure, just make sure you bring enough.");
					break;
				case DialogId.DeniseHighContext2: 
					scr_txt("great!, dips and snacks as well if you can! c:");
					break;
		
		
		case DialogId.Ruben:
			scr_txt("Ruben: should the drinks be alchoholic or not?");
				scr_option("you choose.", DialogId.RubenLowContext);
				scr_option("do you think the others would want to be drinking?", DialogId.RubenHighContext);
			break;
			case DialogId.RubenLowContext:
				scr_txt("you choose.");
				scr_txt("Ruben: they should be.");
				break;
			case DialogId.RubenHighContext:
				scr_txt("do you think the others would want to be drinking?");
				scr_txt("Ruben: yes.");
					scr_option("Alright go for it then.", DialogId.RubenLowContext2);
					scr_option("Then maybe bring enough soft drinks for everyone and also some alchohol.", DialogId.RubenHighContext2);
				break;
				case DialogId.RubenLowContext2:
					scr_txt("Alright go for it then.")
					break;
				case DialogId.RubenHighContext2:
					scr_txt("Then maybe bring enough soft drinks for everyone and also some alchohol.");
					break;
			
			
		case "exit":
			game_end();
			break;
			
	}	

}