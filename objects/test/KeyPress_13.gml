/// @description Insert description here
// You can write your code in this editor

if room == vocab_wordbuild {
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
		
		question.say = "Naumi\n" +string_trim(_new_correct);
		
	}
	clear_timer = 180;
	can_click = false
}