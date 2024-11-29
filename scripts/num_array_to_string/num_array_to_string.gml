//Converts a number array from the Number Operations mode
//Expects a 4 number array, which may contain leading zeroes
function num_array_to_string(_num_array20){
	//creates a blank string
	var _string = "";
	//determines whether there are leading zeroes in the number array using the _check flag
	for(var _i = 0; _i < 4; _i++){
		if _num_array20[_i] == 0 {
			var _check = false
			for (var _j = _i; _j >= 0; _j--) if _num_array20[_j] > 0 _check = true;
	//if check flag shows that there are numbers before the zero, it adds a zero to the string	
			if _check == true or _i == 3 _string += chr(58803); 
	//otherwise, it adds a space that will not show up
			else _string += " "
		}
	//all other numbers just get added normally
		else _string += chr(58783 + _num_array20[_i]);
	};
	
	return _string;
}