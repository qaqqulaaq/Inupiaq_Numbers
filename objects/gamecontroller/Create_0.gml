/// @description 
// You can write your code in this editor

//shared variables



alarm[0] = 1;
level = 1;
correct_word = "";
prev_array = [];
answered = false;
helpmode = false;
page = 0;
drawing = false;

switch room {
	//number specific variables
	case number_operations:
		mathop = "plus";
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
		kaktovik = true
		linex = [];
		liney = [];
		setnumber = 0;
		totalAmount = 0;
		_ansarray = [];
		break;
		
	case number_toword:
		mode_number = true;
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