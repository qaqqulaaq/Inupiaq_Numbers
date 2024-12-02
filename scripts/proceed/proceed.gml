// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function proceed(){
	with gamecontroller{
		if not answered{
			
			if  room != vocab_multichoice answered = true
	
			switch room {
		
			case number_conversions:
				if setnumber == totalAmount{
					question.say = "ARRIGAA!"
					if array_length(prev_array) > 15 array_delete(prev_array,0,3);
					array_push(prev_array,totalAmount);
				}
				else question.say = "Naumi."
		
			case number_operations:
				_ansarray = [totalAmount div 160000, (totalAmount % 160000) div 8000, (totalAmount % 8000) div 400, (totalAmount % 400) div 20, (totalAmount % 20)]
	
				if instance_exists(numbox4){
					if _ansarray[0] != numbox4.number{
						numbox4.correct = 1;
						numbox4.number = _ansarray[0];
					}
				}
		
				if instance_exists(numbox3){
					if _ansarray[1] != numbox3.number{
						numbox3.correct = 1;
						numbox3.number = _ansarray[1];
					}
				}
		
				if instance_exists(numbox2){		
					if _ansarray[2] != numbox2.number{
						numbox2.correct = 1;
						numbox2.number = _ansarray[2];
					}	
				}
		
				if instance_exists(numbox1){
					if _ansarray[3] != numbox1.number{
						numbox1.correct = 1;
						numbox1.number = _ansarray[3];
					}
				}
		
				if instance_exists(numbox0){
					if _ansarray[4] != numbox0.number{
						numbox0.correct = 1;
						numbox0.number = _ansarray[4];
					}
				}
				break;
			
			case number_toword:
				
			
			case vocab_wordbuild:
				if string_replace_all(string_lower(display_text),"\n"," ") == string_replace_all(string_lower(correct_word),"\n"," ") question.say = "Aarigaa!";
				else {
					var _raw = string_split(string_replace_all(correct_word, "\n"," ")," ");
					var _num = 0;
					var _new_correct = ""
					for (var _i = 0; _i < array_length(_raw); _i++){
						_new_correct += _raw[_i] + " "
						_num += string_length(_raw[_i])
						if _num > 18{
							_new_correct += "\n"
							_num = 0
						}
					}
		
					question.say = "Naumi.\n" +string_trim(_new_correct);
		
				}
				break;
		
			default: break;
			}
		}

		else {
			reset();
		}
	}
}