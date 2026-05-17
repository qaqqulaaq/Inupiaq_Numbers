/// @description Insert description here
// You can write your code in this editor

box_create(level)

if room == vocab_wordbuild{
	instance_destroy(wordbox);
	word_box_create();
}

if room == main_menu {
	
	level = 1;
	correct_word = "";
	prev_array = [];
	answered = false;
	helpmode = false;
	page = 0;
	drawing = false;
	//number specific variables

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



	kaktovik = true
	linex = [];
	liney = [];
	setnumber = 0;
	totalAmount = 0;

		

	mode_number = true;
//word specific variables

	word_array = [];
	display_text="";
	wordprogress = 0;
	


	var saylist	=["Numbers", "Vocabulary"]

	for (var i = 0; i < array_length(saylist); i++){
		instance_create_layer(0,0,"Instances",menu_choice,{say: saylist[i]});
	}	
	
	//var saylist	=[ "Number Conversions", "Number Operations", "Numbers to Words", "Word Building\nVocabulary", "Multiple Choice\nVocabulary"]

	//for (var i = 0; i < array_length(saylist); i++){
	//	instance_create_layer(0,0,"Instances",menu_choice,{say: saylist[i]});
	//}
		
	
}

else alarm[0] = 1;