/// @description Insert description here
// You can write your code in this editor

if room = number_operations with gamecontroller{
	if level < 6 {
		level += 1;
		clear_timer = 1;
	}
}


else if room = number_conversions with gamecontroller{
	if level < 10 {
		level += 1;
		clear_timer = 1;
	}
}


else if room = vocab_multichoice with test{
	if level < 7 and can_click == true {
		level += 1;
		shuffle_answers(level);
		test.prevword = []
	}
}


else if room = vocab_wordbuild with test{
	if level < 8 and can_click == true {
		level += 1;
		shuffle_answers(level);
		test.prevword = []
	}
}


