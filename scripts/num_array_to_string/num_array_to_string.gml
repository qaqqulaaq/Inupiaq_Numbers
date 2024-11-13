// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function num_array_to_string(_num_array20){
	
	var _string = "";
	
	for(var _i = 0; _i < 4; _i++){
		if _num_array20[_i] == 0 {
			var _check = false
			for (var _j = _i; _j >= 0; _j--) if _num_array20[_j] > 0 _check = true;
			
			if _check == true or _i == 3 _string += chr(58803); 
			else _string += " "
		}
		else _string += chr(58783 + _num_array20[_i]);
	};
	
	return _string;
}