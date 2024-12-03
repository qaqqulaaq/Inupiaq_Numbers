// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function proceed(){
	with gamecontroller{
		if not answered{
			
			if  room != vocab_multichoice answered = true
	
			switch room {
		
			case number_conversions:
				if setnumber == totalAmount{
					question.say = "AARIGAA!"
					if array_length(prev_array) > 15 array_delete(prev_array,0,3);
					array_push(prev_array,totalAmount);
				}
				else question.say = "Naumi."
		
			case number_operations:
				numbox_check(totalAmount);
				break;
			
			case number_toword:
				if mode_number{
					if numbercheck(correct_word){
					question.say = "AARIGAA!"
					}
					else question.say = "Naumi.\n" + correct_word
					
				}
				
				else{
					if string_replace_all(string_lower(display_text),"\n"," ") == string_replace_all(string_lower(correct_word),"\n"," ") question.say = "Aarigaa!";
					else question.say = "Naumi.\n" + correct_word;					
				}
				break;
			
			case vocab_wordbuild:
					if string_replace_all(string_lower(display_text),"\n"," ") == string_replace_all(string_lower(correct_word),"\n"," ") question.say = "Aarigaa!";
					else question.say = "Naumi.\n" + correct_word;					
				break;
		
			default: break;
			}
		}

		else {
			reset();
		}
	}
}