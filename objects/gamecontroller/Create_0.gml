/// @description Insert description here
// You can write your code in this editor

//shared variables
alarm[0] = 1;
level = 1;
correct_word = "";
prev_array = [];
answered = false

switch room {
	//number specific variables
	case number_operations:
		array1 = [];
		array2 = [];
		string1 = "";
		string2 = "";
		linex = [];
		liney = [];
		setnumber = 0;
		totalAmount = 0;
		_ansarray = [];
		break;

	case number_conversions:
		linex = [];
		liney = [];
		setnumber = 0;
		totalAmount = 0;
		_ansarray = [];
		break;
		
	//word specific variables
	case vocab_wordbuild:
		word_array = [];
		display_text="";
		wordprogress = 0;
	case vocab_multichoice:
		inupiaq_words();
		english_words();
		break;
}