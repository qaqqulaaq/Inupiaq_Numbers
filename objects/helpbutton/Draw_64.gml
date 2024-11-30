/// @description Insert description here
// You can write your code in this editor

if menuhelp{
	var _left = 10
	var _right = 890
	var _top = 10
	var _bottom = 640
	var _border = 10
	var _margin = 30
	
	draw_rectangle_color(_left,_top,_right,_bottom,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(_left + _border,_top + _border,_right - _border,_bottom - _border,c_black,c_black,c_black,c_black,false);
	
	
	draw_set_color(c_white);
	draw_set_font(EngWords);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	//linebreaks should be surrounded with spaces so that they appear in the array
	var _rawtext = "Welcome to the I" + NTIL + "upiaq numbers practice app! \n This app contains different game modes to practice vocabulary for numbers as well as the Kaktovik numeral system. \n 'Number Operations' contains practice addition and subtraction problems. \n Number Conversion contains numbers that must be converted from Arabic numerals to Kaktovik numerals. \n 'Vocabulary Multichoice' is a multichoice vocabulary exercise for numbers in I" + NTIL + "nupiaq. \n 'Vocabulary Wordbuild' requires for the words to be built using the base words and post-bases. \n Further instructions can be found in each of the game modes."  
	var _textarray = string_split(_rawtext," ")
	var _text = ""
	var _linecheck = 0
	
	for (var _i = 0; _i < array_length(_textarray); _i++){
		if _textarray[_i] == "\n" {
			_linecheck = 0
			_text += _textarray[_i]
		}
		
		else{
			if _linecheck + string_width(_textarray[_i] + " ") < _right - _left - _margin*2{
				_linecheck += string_width(_textarray[_i] + " ");
				_text += _textarray[_i] + " "
			}
			else{
				_linecheck = string_width(_textarray[_i] + " ");
				_text += "\n" + 
				_textarray[_i] + " "
			}
		}
	}
	
	draw_text(_left + _margin, _top + _margin , _text);
}