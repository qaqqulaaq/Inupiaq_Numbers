/// @description Insert description here
// You can write your code in this editor

if clear_timer > 0 {
	//reduces the clear timer if in progress
	clear_timer -= 1;
	//runs all of the code once the clear timer has emptied
	if clear_timer <= 0{
		
		switch room{
			
			case number_operations:
		
				var _setup = operation_controls(level,operation.mathop);
				string1 = num_array_to_string(_setup[0]);
				string2 = num_array_to_string(_setup[1]);
				totalAmount = _setup[2];
				setnumber = 0;
				linex = [];
				liney = [];
				with numbox {
				number = 0;
				correct = 0;
				}
				break;
			
			case number_conversions:
				totalAmount = numberConversionSwitch(level)
				question.say = "Convert the following number:\n" + string(totalAmount)
				setnumber = 0;
				linex = [];
				liney = [];
				with numbox {
				number = 0;
				correct = 0;
				}
				break;
				
			case vocab_multichoice:
				shuffle_answers(level);
				gamecontroller.can_click = true;
				choice1.right = 0;
				choice2.right = 0;
				choice3.right = 0;
				choice4.right = 0;				
				break;
				
			case vocab_wordbuild:
				shuffle_answers(level);
				gamecontroller.can_click = true;
				word_array = []
				display_text = ""
				break;
		}
	}
}
