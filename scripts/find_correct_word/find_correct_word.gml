// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_correct_word(_correct_word){
	var _raw = string_split(string_replace_all(_correct_word, "\n"," ")," ");
	var _num = 0;
	var _new_correct = ""
	for (var _i = 0; _i < array_length(_raw); _i++){
		_new_correct += _raw[_i] + " "
		_num += string_length(_raw[_i])
		if _num > 18{
			_new_correct += "\n"
			_num = 0
		}
		return string_trim(_new_correct)
	}
}