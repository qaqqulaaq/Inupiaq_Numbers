// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset(){
	with gamecontroller{
		answered = false
		switch room{
			
		case number_operations:
		
			var _setup = operation_controls(level,mathop);
			string1 = num_array_to_string(level,_setup[0]);
			string2 = num_array_to_string(level,_setup[1]);
			
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
			totalAmount = numberConversionSwitch(level);
			
			if kaktovik question.say = "Convert the following number:\n" + string(totalAmount);
			
			else{
				question.say = "Convert the following number:\n"
				
				var _temp = [totalAmount div 160000, (totalAmount % 160000) div 8000, (totalAmount % 8000) div 400, (totalAmount % 400) div 20, (totalAmount % 20)]
				var _lead = false
				
				for (var _i = 0; _i < array_length(_temp); _i++){
					if _lead question.say += string(chr(KN+_temp[_i]))
					else if _temp[_i] > 0 {_lead = true; question.say += string(chr(KN+_temp[_i]))}
				}
			}
			
			setnumber = 0;
			linex = [];
			liney = [];
			if kaktovik with numbox {
				number = 0;
				correct = 0;
			}
			break;
			
						
		case vocab_multichoice:
			shuffle_answers(level);
			choice1.right = 0;
			choice2.right = 0;
			choice3.right = 0;
			choice4.right = 0;
			instance_deactivate_object(nextbox);
			break;
		
		case number_toword:
			if mode_number with numbox{
				number = 0;
				correct = 0;				
			}
			
		case vocab_wordbuild:
			shuffle_answers(level);
			word_array = []
			display_text = ""
			break;	
		}
		
	}
}