// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_line_break(_left,_right,_margin, _text){

	var _textarray = string_split(_text," ")
	var _returntext = ""
	var _linecheck = 0

	for (var _i = 0; _i < array_length(_textarray); _i++){
		if _textarray[_i] == "\n" {
			_linecheck = 0
			_returntext += _textarray[_i]
		}
		
		else{
			if _linecheck + string_width(_textarray[_i] + " ") < _right - _left - _margin*2{
				_linecheck += string_width(_textarray[_i] + " ");
				_returntext += _textarray[_i] + " "
			}
			else{
				_linecheck = string_width(_textarray[_i] + " ");
				_returntext += "\n" + _textarray[_i] + " "
			}
		}
	}
	
	return _returntext;
	
}