// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choosebox(){
		if not gamecontroller.answered{
		if say == gamecontroller.correct_word {
			right = 1;
			question.say = "Aarigaa!"
		}
		else {
			right = 2;
			with choice if say == gamecontroller.correct_word right = 1;
			question.say = "Naumi.\n" + gamecontroller.correct_word
			array_pop(gamecontroller.prev_array)
		
		}

		with gamecontroller{
			answered = true;
		};
	
		instance_activate_object(nextbox);
	};
}