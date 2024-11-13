
function loadChoice(_numlistraw){
//Loads the first choice based on the english word and sets it as the correct word
	
//Clear prevword list if no numbers lest
	var _maxno = 1;
	for(var _i=0; _i < array_length(_numlistraw); _i+=1){
			if _i % 2 == 0 and _numlistraw[_i] != 0 _maxno *= 4;
			else if _i % 2 == 1 and _numlistraw[_i] != 0 _maxno *=5;
	}
	
	if array_length(test.prevword) >= _maxno {
		array_delete(test.prevword,0,array_length(test.prevword)- 1)
	}
	
	var _ranword = array_create(0);
//loads up 4 things	
	while array_length(_ranword) < 4{
//creates a temporary list for all of the parts a number
		var _numlist =[];
//takes the raw number list and assigns random words based on it, even numbers are five and odd are one
		for(var _i = 0; _i<array_length(_numlistraw); _i+=1){
			if _i % 2 == 0 _numlist[_i] = _numlistraw[_i]*irandom_range(0,3)
			else _numlist[_i] = _numlistraw[_i]*irandom_range(0,4)
		};

//creates a flag to discard duplicate numbers	
		var _flag = false;
//checks to see if the list of choices already includes a word
		if array_length(_ranword) > 0{
			for(var _i = 0; _i<array_length(_ranword); _i+=1){
				if array_equals(_ranword[_i],_numlist) _flag = true
			};
		};
		//Checks to see of the chosen number was already answered
		//BUG! Seems to not filter out anything ending in -gutailaq
		if array_length(test.prevword) > 0 and array_length(_ranword) == 0{
			for(var _i = 0; _i < array_length(test.prevword); _i+=1){
				if array_equals(_numlist,test.prevword[_i]) {
					_flag = true
				};
			};
		};
		
		if _flag == false {
			if array_length(_ranword) == 0 {
				array_push(test.prevword, _numlist)
			}
			array_push(_ranword, _numlist);
		};
	};

//Stores the English word, then replaces each of the number lists with a word
	_ranword[4] = assembler10(_ranword[0]);
	for(var _i = 0; _i < 4; _i +=1){
		_ranword[_i] = assembler20(_ranword[_i]);
	}

//Splits all of the words with a line break
	for(var _i = 0; _i<array_length(_ranword);_i+= 1){
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