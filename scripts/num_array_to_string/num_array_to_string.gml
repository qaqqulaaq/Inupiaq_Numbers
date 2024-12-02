//Converts a number array from the Number Operations mode
//Expects a 4 number array, which may contain leading zeroes
function num_array_to_string(_num_array20){
	//creates a blank string
	var _string = "";
	var _check = false
	//determines whether there are leading zeroes in the number array using the _check flag
	for(var _i = 0; _i < array_length(_num_array20); _i++){
		
		if _check == true _string += chr(KN + _num_array20[_i]);
		else if _num_array20[_i] > 0 {_check = true; _string += chr(KN + _num_array20[_i]);}
		else _string += " "
	};
	
	return _string;
}