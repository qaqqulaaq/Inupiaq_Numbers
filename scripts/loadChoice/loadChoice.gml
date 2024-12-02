//Loads the first choice based on the english word and sets it as the correct word
function loadChoice(_numlistraw, _maxno){

	var _ranword = array_create(0);
	//sets a variable to make sure the script loads an appropriate number of things	
	var _length;
	if room = vocab_multichoice _length = 4;
	else _length = 1;
	
//////////Special case for level 1//////////
	if array_equals(_numlistraw,[0,0,0,0,0,0]){
	//Sets up a list of words for 0-6, 10 and 15
		var _word_list = [[0,0,0,0,0,0],[0,0,0,0,0,1],[0,0,0,0,0,2],[0,0,0,0,0,3],[0,0,0,0,0,4],[0,0,0,0,1,0],[0,0,0,0,1,1],[0,0,0,0,2,0],[0,0,0,0,3,0]];
	//Removes zero from the list of choices if the room is wordbuild
		if room = vocab_wordbuild array_shift(_word_list);
	//Resets the previous word array once all words have been used
		if array_length(gamecontroller.prev_array) == array_length(_word_list) gamecontroller.prev_array = [];
	//Keeps trying to add a word that is not on the list. Probably should find a more efficient method to this later
		while array_length(_ranword) == 0{
			array_push(_ranword, _word_list[irandom(array_length(_word_list)-1)])
			for (var _i = 0; _i < array_length(gamecontroller.prev_array); _i++) {
				if array_equals(_ranword[0],gamecontroller.prev_array[_i]) {
					array_pop(_ranword);
					break;
				}
			}
		}
		array_push(gamecontroller.prev_array,_ranword[0]);
	//Adds extra words to the list in multichoice mode
		while array_length(_ranword) < _length{
			array_push(_ranword, _word_list[irandom(array_length(_word_list)-1)])
			for (var _i = 0; _i < array_length(_ranword)-1; _i++){
				if array_equals(_ranword[_i],_ranword[array_length(_ranword)-1]){
					array_pop(_ranword);
				}
			}
		}
	}
	
/////////all other levels follow this code//////
	else {
	//Clear prev_array list if no numbers left. Uses Max Offset if in wordbuild to account for the lack of 0
		if array_length(gamecontroller.prev_array) >= _maxno {
			var _maxoff = 0;
			if room = vocab_wordbuild _maxoff = 1;
			array_delete(gamecontroller.prev_array,0,array_length(gamecontroller.prev_array) - _maxoff);;
		}
	

		while array_length(_ranword) < _length{
	//creates a temporary list for all of the parts a number
			var _numlist =[];
	//takes the raw number list and assigns random words based on it, even numbers are five and odd are one
			for(var _i = 0; _i<array_length(_numlistraw); _i+=1){
				if _i % 2 == 0 _numlist[_i] = _numlistraw[_i]*irandom_range(0,3);
				else _numlist[_i] = _numlistraw[_i]*irandom_range(0,4);
			};

	//creates a flag to discard duplicate numbers	
			var _flag = false;
	//checks to see if the list of choices already includes a word
		
			if array_length(_ranword) > 0{
				for(var _i = 0; _i<array_length(_ranword); _i+=1){
					if array_equals(_ranword[_i],_numlist) _flag = true;
				};
			};
			//Checks to see of the chosen number was already answered
			//BUG! Seems to not filter out anything ending in -gutailaq
			if array_length(_ranword) == 0 and room = vocab_wordbuild and array_equals(_numlist,[0,0,0,0,0,0]) _flag = true;
		
			if array_length(gamecontroller.prev_array) > 0 and array_length(_ranword) == 0{
				for(var _i = 0; _i < array_length(gamecontroller.prev_array); _i+=1){
					if array_equals(_numlist,gamecontroller.prev_array[_i]) {
						_flag = true;
					};
				};
			};
		
			if _flag == false {
				if array_length(_ranword) == 0 {
					array_push(gamecontroller.prev_array, _numlist);
				}
				array_push(_ranword, _numlist);
			};
		};
	}
//Stores the English word, then replaces each of the number lists with a word
	if room == number_toword {
		_ranword[_length] = [_ranword[0][0]*5 + _ranword[0][1],_ranword[0][2]*5 + _ranword[0][3],_ranword[0][4]*5 + _ranword[0][5]] // see if this is easier later:  _ranword[0][0]*2000 + _ranword[0][1] * 400 + _ranword[0][2] * 100 + _ranword[0][3] * 20 + _ranword[0][4] * 5 + _ranword[0][5]; 
	}
	
	else _ranword[_length] = assembler10(_ranword[0]);
	for(var _i = 0; _i < _length; _i +=1){
		_ranword[_i] = assembler20(_ranword[_i]);
	}

//Splits all of the words with a line break
	for(var _i = 0; _i<array_length(_ranword)-1;_i+= 1){
		var _temp = string_split(_ranword[_i]," ",true);
		_ranword[_i] = "";
		while array_length(_temp) > 1{
			if string_length(_temp[0]) + string_length(_temp[1]) + 1 <= 19{
				_temp[1] = _temp[0] + " " + _temp[1];
				array_delete(_temp,0,1);
			}
			else _ranword[_i] += array_shift(_temp) + "\n";
		}
		_ranword[_i] += array_shift(_temp);
	};
	return _ranword;
}