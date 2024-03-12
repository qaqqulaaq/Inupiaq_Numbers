if test.can_click == true{
	if say == test.correct_word {
		right = 1;
		question.say = "Aarigaa!"
	}
	else {
		right = 2;
		question.say = "Naumi: \n" + test.correct_word
	}

	with test{
		can_click = false;
		timeline_index = Timeline1;
		timeline_running = true;
	};
};