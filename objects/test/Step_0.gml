/// @description Insert description here
// You can write your code in this editor

if clear_timer > 0{
	clear_timer -= 1
	if clear_timer <= 0{
		shuffle_answers(level);
		test.can_click = true;
		if room = vocab_multichoice{
			choice1.right = 0;
			choice2.right = 0;
			choice3.right = 0;
			choice4.right = 0;
		}
		else if room = vocab_wordbuild{
			word_array = []
			display_text = ""
		}
	}
	
}