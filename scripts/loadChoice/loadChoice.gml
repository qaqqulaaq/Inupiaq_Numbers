// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadChoice(three, two, one){
//Loads the first choice based on the english word and sets it as the correct word
	
	var _ranword = []
	var _numlist = [three*irandom(19),two*irandom(19),one*irandom(19)]
	_ranword[4] = assembler10(_numlist);
	_ranword[0] = assembler20(_numlist);

//Asks the question based on the english word

//Picks random words for the other three items, rerolling as necessary
	do _ranword[1] = assembler20([0, _numlist[1], irandom(19)]);
	until _ranword[1] != _ranword[0];
	do _ranword[2] = assembler20([0, irandom(19), _numlist[2]]);
	until _ranword[2] != _ranword[0] and _ranword[2] != _ranword[1];
	do _ranword[3] = assembler20([0, irandom(19), irandom(19)]);
	until _ranword[3] != _ranword[0] and _ranword[3] != _ranword[1] and _ranword[3] != _ranword[2];
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