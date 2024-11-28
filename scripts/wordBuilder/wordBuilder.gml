// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wordBuilder(_array){
	
	var _text = "";
	var _alen = array_length(_array)
	for (var _i = 0; _i < _alen - 1; _i++ ){
		if _array[_i] == "qulit" and _array[_i+1] == "-butaixaq"{
			_text += "quliffubutaixaq";
			_i++;
		}
		
		else if string_pos("-", _array[_i+1]) != 0 {
			_text += string_copy(_array[_i],1,string_length(_array[_i])-1) + string_copy(_array[_i + 1], 2, string_length(_array[_i + 1])) + " ";
			_i++;
		}
		
		else _text += _array[_i] + " ";
	}
	
	
	if string_pos("-",_array[_alen-1]) == 0 _text += _array[_alen-1];
	else if _array[_alen-1] == "-butaixaq" and string_pos("butaixaq",_text) == 0 {
		_text = string_copy(_text,1,string_length(_text)-2) + string_copy(_array[_alen-1],2,string_length(_array[_alen-1]))
	}
	
	
	var _raw = string_split(string_replace_all(string_lower(string_trim_end(_text)), "\n"," ")," ");
	var _num = 0;
	var _new_text = ""
	for (var _i = 0; _i < array_length(_raw); _i++){
		_new_text += _raw[_i]
		_num += string_length(_raw[_i])
		if _num > 18{
			_new_text += "\n"
			_num = 0
		}
		else _new_text += " "
	}
	
	return string_trim(_new_text);
}