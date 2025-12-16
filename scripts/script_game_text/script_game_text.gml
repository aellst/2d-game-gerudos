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
	Stella,
	Stella1,
	Stella2,
	Stella1_1,
	Stella1_2,
	Stella1_1_1,
	Stella1_1_2,
	Stella1_1_1_1,
	Stella1_1_1_2,
	Stella1_1_1_1_1,
	Stella1_1_1_1_2,
	Stella1_1_1_1_2_1,
	Stella1_1_1_1_2_2,
	Stella1_1_1_2_1,
	Stella1_1_1_2_2,
	Stella1_1_2_1,
	Stella1_1_2_2,
	Stella1_1_2_1_1,
	Stella1_1_2_1_2,
	Stella1_1_2_1_2_1,
	Stella1_1_2_1_2_2,
	Stella1_1_2_1_2_2_1,
	Stella1_1_2_1_2_2_2,
	Stella1_1_2_2_1,
	Stella1_1_2_2_2,
}

function script_game_text(_text_id){

switch(_text_id) {
		
		case DialogId.Denise:
			scr_txt("Denise: What type of food should I bring?", SpriteId.Cat);
				scr_option("Just bring whatever you'd like.", DialogId.DeniseLowContext);
				scr_option("Dessert is covered already, something salty maybe?", DialogId.DeniseHighContext);
			break;
			case DialogId.DeniseLowContext:
				scr_txt("Just bring whatever you'd like.", SpriteId.Alien, -1);
				scr_txt("Denise: okay, I'll bring some snacks.", SpriteId.Cat);
				break;
			case DialogId.DeniseHighContext:
				scr_txt("Dessert is covered already, something salty maybe?", SpriteId.Alien, -1);
				scr_txt("Denise: would chips be okay?", SpriteId.Cat);
					scr_option("sure, just make sure you bring enough.", DialogId.DeniseLowContext2);
					scr_option("great!, dips and snacks as well if you can! c:", DialogId.DeniseHighContext2);
				break;
				case DialogId.DeniseLowContext2:
					scr_txt("sure, just make sure you bring enough.", SpriteId.Alien, -1);
					break;
				case DialogId.DeniseHighContext2: 
					scr_txt("great!, dips and snacks as well if you can! c:", SpriteId.Alien, -1);
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
			
		//only long one for now
		case DialogId.Stella:
				scr_txt("Hi! Party at mine, you coming?", SpriteId.Alien, -1);
				scr_txt("When?", SpriteId.Cat);
					scr_option("Tonight!", DialogId.Stella1);
					scr_option("At 6, and dinner at 7", DialogId.Stella2);
				break;
				case DialogId.Stella1:
					scr_txt("Tonight!", SpriteId.Alien, -1);
					scr_txt("Yes, tonight, when?", SpriteId.Cat);
						scr_option("Oh, at 6!", DialogId.Stella1_1);
						scr_option("I plan to start at 6, and dinner at 7", DialogId.Stella1_2);
					break;
					case DialogId.Stella1_1:
						scr_txt("Oh, at 6!", SpriteId.Alien, -1);
						scr_txt("Sure, I guess", SpriteId.Cat);
						scr_txt("Who's coming?", SpriteId.Cat);
							scr_option("Our friend group", DialogId.Stella1_1_1);
							scr_option("Ruben, Denise, Dan and Franka. Ethan and Janiah are out of the country, so they can't come tonight.", DialogId.Stella1_1_2);
						break;
						case DialogId.Stella1_1_1:
							scr_txt("Our friend group", SpriteId.Alien, -1);
							scr_txt("...", SpriteId.Cat);
							scr_txt("I'll be there. Should I bring something?", SpriteId.Cat);
								scr_option("Could you bring food?", DialogId.Stella1_1_1_1);
								scr_option("Do you have time to make a dish? Otherwise snacks or drinks are okay!", DialogId.Stella1_1_1_2);
							break;
							case DialogId.Stella1_1_1_1:
								scr_txt("Could you bring food?", SpriteId.Alien, -1);
								scr_txt("Pls be more specific...", SpriteId.Cat);
									scr_option("Like a dish or something", DialogId.Stella1_1_1_1_1);
									scr_option("Do you have time for risotto? Or otherwise a salad?", DialogId.Stella1_1_1_1_2);
								break;
								case DialogId.Stella1_1_1_1_1:
									scr_txt("Like a dish or something", SpriteId.Alien, -1);
									scr_txt("ok, I'll see what I can do", SpriteId.Cat);
									break;
								case DialogId.Stella1_1_1_1_2:
									scr_txt("Do you have time for risotto? Or otherwise a salad?", SpriteId.Alien, -1);
									scr_txt("I don't know how to make risotto, I'll try my best with a salad", SpriteId.Cat);
										scr_option("sick!", DialogId.Stella1_1_1_1_2_1);
										scr_option("Could you make it for about 6 people? Ethan and Janiah aren't coming.", DialogId.Stella1_1_1_1_2_2);
									break;
									case DialogId.Stella1_1_1_1_2_1:
										scr_txt("sick!", SpriteId.Alien, -1);
										break;
									case DialogId.Stella1_1_1_1_2_2:
										scr_txt("Could you make it for about 6 people? Ethan and Janiah aren't coming.", SpriteId.Alien, -1);
										scr_txt("alr!", SpriteId.Cat);
										break;
							case DialogId.Stella1_1_1_2:
								scr_txt("Do you have time to make a dish? Otherwise snacks or drinks are okay!", SpriteId.Alien, -1);
								scr_txt("If it's fine with you, I prefer going with snacks or drinks. I'm not a good cook.", SpriteId.Cat);
									scr_option("Could you bring drinks for dinner?", DialogId.Stella1_1_1_2_1);
									scr_option("Could you bring a white wine or some light beers for dinner?", DialogId.Stella1_1_1_2_2);
								break;
								case DialogId.Stella1_1_1_2_1:
									scr_txt("Could you bring drinks for dinner?", SpriteId.Alien, -1);
									scr_txt("okk", SpriteId.Cat);
									break;
								case DialogId.Stella1_1_1_2_2:
									scr_txt("Could you bring a white wine or some light beers for dinner?", SpriteId.Alien, -1);
									scr_txt("okk", SpriteId.Cat);
									break;
						case DialogId.Stella1_1_2:
							scr_txt("Ruben, Denise, Dan and Franka. Ethan and Janiah are out of the country, so they can't come tonight.", SpriteId.Alien, -1);
							scr_txt("Cool! Do you need me to bring something?", SpriteId.Cat);
								scr_option("Could you bring food?", DialogId.Stella1_1_2_1);
								scr_option("Do you have time to make a dish? Otherwise snacks or drinks are okay!", DialogId.Stella1_1_2_2);
							break;
							case DialogId.Stella1_1_2_1:
								scr_txt("Could you bring food?", SpriteId.Alien, -1);
								scr_txt("Do you need more like a dish or snacks?", SpriteId.Cat);
									scr_option("You choose!", DialogId.Stella1_1_2_1_1);
									scr_option("Could you bring a dish? Maybe risotto or a salad?", DialogId.Stella1_1_2_1_2);
								break;
								case DialogId.Stella1_1_2_1_1:
									scr_txt("You choose!", SpriteId.Alien, -1);
									scr_txt("*thumbs up*", SpriteId.Cat);
									break;
								case DialogId.Stella1_1_2_1_2:
									scr_txt("Could you bring a dish? Maybe risotto or a salad?", SpriteId.Alien, -1);
									scr_txt("I don't know how to make risotto. I'll try my best with a salad", SpriteId.Cat);
										scr_option("sick!", DialogId.Stella1_1_2_1_2_1);
										scr_option("Yum! Can you perchance bring extra plates? We don't have enough.", DialogId.Stella1_1_2_1_2_2);
									break;
									case DialogId.Stella1_1_2_1_2_1:
										scr_txt("sick!", SpriteId.Alien, -1);
										break;
									case DialogId.Stella1_1_2_1_2_2:
										scr_txt("Yum! Can you perchance bring extra plates? We don't have enough.", SpriteId.Alien, -1);
										scr_txt("I don't have any. If no one has them, I will buy some", SpriteId.Cat);
											scr_option("*leave on read*", DialogId.Stella1_1_2_1_2_2_1);
											scr_option("I'll go ask around", DialogId.Stella1_1_2_1_2_2_2);
										break;
										case DialogId.Stella1_1_2_1_2_2_1:
											scr_txt("*leave on read*", SpriteId.Alien, -1);
											break;
										case DialogId.Stella1_1_2_1_2_2_2:
											scr_txt("I'll go ask around", SpriteId.Alien, -1);
											break;
							case DialogId.Stella1_1_2_2:
								scr_txt("Do you have time to make a dish? Otherwise snacks or drinks are okay!", SpriteId.Alien, -1);
								scr_txt("If it's fine with you, I prefer going with snacks or drinks. I'm not a good cook.", SpriteId.Cat);
									scr_option("Could you bring drinks for dinner?", DialogId.Stella1_1_2_2_1);
									scr_option("Could you bring a white wine or some light beers for dinner?", DialogId.Stella1_1_2_2_2);
								break;
								case DialogId.Stella1_1_2_2_1:
									scr_txt("Could you bring drinks for dinner?", SpriteId.Alien, -1);
									scr_txt("yess", SpriteId.Cat);
									break;
								case DialogId.Stella1_1_2_2_2:
									scr_txt("Could you bring a white wine or some light beers for dinner?", SpriteId.Alien, -1);
									scr_txt("yess", SpriteId.Cat);
									break;
								
					case  DialogId.Stella1_2:
						scr_txt("I plan to start at 6, and dinner at 7", SpriteId.Alien, -1);
						scr_txt("Okay, sure!", SpriteId.Cat);
						scr_txt("Who's coming?", SpriteId.Cat);
							scr_option("Our friend group", DialogId.Stella1_1_1);
							scr_option("Ruben, Denise, Dan and Franka. Ethan and Janiah are out of the country, so they can't come tonight.", DialogId.Stella1_1_2);
						break;
				case DialogId.Stella2:
					scr_txt("At 6, and dinner at 7", SpriteId.Alien, -1);
					scr_txt("Okay, sure!", SpriteId.Cat);
					scr_txt("Who's coming?", SpriteId.Cat);
							scr_option("Our friend group", DialogId.Stella1_1_1);
							scr_option("Ruben, Denise, Dan and Franka. Ethan and Janiah are out of the country, so they can't come tonight.", DialogId.Stella1_1_2);
					break;
			
	}	

}