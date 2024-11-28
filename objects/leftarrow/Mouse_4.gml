/// @description Insert description here
// You can write your code in this editor

if room == number_operations or room == number_conversions with gamecontroller{
	if level > 1 {
		level -= 1;
		box_create(level)
		clear_timer = 1;
	}
}


if room == vocab_multichoice or room = vocab_wordbuild with test{
	if level > 1 and can_click == true{
		level -= 1;
		shuffle_answers(level);
		test.prevword = []
	}
}




