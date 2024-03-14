
function loadChoice(_numlistraw){
//Loads the first choice based on the english word and sets it as the correct word
	
	var _ranword = [];
//loads up 4 things	
	while array_length(_ranword) < 4{
		var _numlist =[];
		for(var _i = 0; _i<array_length(_numlistraw); _i+=1){
			if _i % 2 == 0 _numlist[_i] = _numlistraw[_i]*irandom_range(1,3)
			else _numlist[_i] = _numlistraw[_i]*irandom_range(1,4)
		}
		var _flag = false
		for(var _i = 0; _i<array_length(_ranword); _i+=1){
			if array_equals(_ranword[_i],_numlist) _flag = true
		}
		
		if _flag == false array_push(_ranword, _numlist)
	}

//Stores the English word, then replaces each of the number lists with a word
	_ranword[4] = assembler10(_ranword[0]);
	for(var _i = 0; _i < 4; _i +=1){
		_ranword[_i] = assembler20(_ranword[_i]);
	}

//Splits all of the words with a line break
	for(var _i = 0; _i<array_length(_ranword);_i+= 1){
		var _temp = string_split(_ranword[_i]," ",true);
		_ranword[_i] = ""
		while array_length(_temp) > 1{
			if string_length(_temp[0]) + string_length(_temp[1]) + 1 <= 19{
				_temp[1] = _temp[0] + " " + _temp[1]
				array_delete(_temp,0,1)
			}
			else _ranword[_i] += array_shift(_temp) + "\n"
		}
		_ranword[_i] += array_shift(_temp)
	};
	
	return _ranword
}