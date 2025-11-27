/// @description Insert description here
// You can write your code in this editor

menuhelp = "false"

var _infotext = $"Welcome to the I{NTIL}upiaq numbers practice app! \n \n "
_infotext += "This app contains different game modes to practice vocabulary for numbers as well as the Kaktovik numeral system. \n \n "  
_infotext += "\"Number Operations\" contains practice addition and subtraction problems. \n "
_infotext += "\"Number Conversion\" contains numbers that must be converted from Arabic numerals to Kaktovik numerals. \n "
_infotext += "\"Numbers to Words\" requires the translation between words and numberical representation. \n "
_infotext += $"\"Multiple Choice Vocabulary\" is a multichoice vocabulary exercise for numbers in I{NTIL}upiaq. \n "
_infotext += "\"Word Building Vocabulary\" requires for the words to be built using the base words and post-bases. \n \n "
_infotext += "Further instructions can be found in each of the game modes. \n \n "
_infotext += "This app was developed by Douglas Collins"

var _textarray = string_split(_infotext," ")

draw_set_font(Words_20)

var _left = 10
var _right = 890
var _margin = 30
var _linecheck = 0

text = ""

for (var _i = 0; _i < array_length(_textarray); _i++){
	if _textarray[_i] == "\n" {
		_linecheck = 0
		text += _textarray[_i]
	}
		
	else{
		if _linecheck + string_width(_textarray[_i] + " ") < _right - _left - _margin*2{
			_linecheck += string_width(_textarray[_i] + " ");
			text += _textarray[_i] + " "
		}
		else{
			_linecheck = string_width(_textarray[_i] + " ");
			text += "\n" + _textarray[_i] + " "
		}
	}
}

x = room_width - 32
y = 22