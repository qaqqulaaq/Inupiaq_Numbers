//Converts a number array from the Number Operations mode
//Expects a 4 number array, which may contain leading zeroes
function num_array_to_string(_level, _num_array20){
	//creates a blank string
	var _string = "";
	var _check = false
	var _len;
	
	switch _level{
		case 1: _len = 3; break;
		
		case 2: case 3: case 4: _len = 2; break
		
		case 5: _len = 1; break;
		
		case 6: _len = 0; break;
		
		case 7: 
			_len = 0;
			_string = " "; 
			break;
	}
	
	
	//determines whether there are leading zeroes in the number array using the _check flag
	for(var _i = _len; _i < array_length(_num_array20); _i++){
		
		if _check == true _string += chr(KN + _num_array20[_i]);
		else if _num_array20[_i] > 0 {_check = true; _string += chr(KN + _num_array20[_i]);}
		else _string += " "
	};
	
	return _string;
}