if gamecontroller.can_click == true{
	if say == gamecontroller.correct_word {
		right = 1;
		question.say = "Aarigaa!"
	}
	else {
		right = 2;
		with choice1 if say == gamecontroller.correct_word right = 1;
		question.say = "Naumi: \n" + gamecontroller.correct_word
		array_pop(gamecontroller.prev_array)
		
	}

	with gamecontroller{
		can_click = false;
		clear_timer = 180;
	};
};