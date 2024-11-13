// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_num_generator(_level){
	var _num_array = [];
	var _string = ""
	switch(_level){
		case 1: _num_array = [0, 0, 0, 0, 0, 0, irandom(3), irandom(4)];break;
		case 2: _num_array = [0, 0, 0, 0, 0, irandom(4), irandom(3), irandom(4)];break;
		case 3: _num_array = [0, 0, 0, 0, irandom(1), irandom(4), irandom(3), irandom(4)];break;
		case 4: _num_array = [0, 0, 0, 0, irandom(3), irandom(4), irandom(3), irandom(4)];break;
		case 5: _num_array = [0, 0, irandom(3), irandom(4), irandom(3), irandom(4), irandom(3), irandom(4)];break;
		case 6: _num_array = [irandom(3), irandom(4), irandom(3), irandom(4), irandom(3), irandom(4), irandom(3), irandom(4)];break;
	};
	
	return [_num_array[0]*5 + _num_array[1],
			_num_array[2]*5 + _num_array[3],
			_num_array[4]*5 + _num_array[5],
			_num_array[6]*5 + _num_array[7]];
						
}