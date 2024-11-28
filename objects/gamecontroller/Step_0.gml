/// @description Insert description here
// You can write your code in this editor

if clear_timer > 0 {
	clear_timer -= 1;
	if clear_timer <= 0{
		if room = number_operations{
		
			var _array1 = random_num_generator(level);
			var _array2 = random_num_generator(level);



			var _amount1 = _array1[0]*8000 + _array1[1]*400+_array1[2]*20+_array1[3];
			var _amount2 = _array2[0]*8000 + _array2[1]*400+_array2[2]*20+_array2[3];

			if _amount1 < _amount2 {
			
				var _temparray = [];
				var _tempamount = _amount1;
				_amount1 = _amount2;
				_amount2 = _tempamount;
			
				_temparray = _array1
				_array1 = _array2
				_array2 = _temparray
			
			}

			if operation.mathop = "plus" totalAmount = _amount1+_amount2;
			else totalAmount = _amount1 - _amount2;
			string1 = num_array_to_string(_array1);
			string2 = num_array_to_string(_array2);
			
		

			}
		
		else if room = number_conversions{
			totalAmount = numberConversionSwitch(level)
			question.say = "Convert the following number:\n" + string(totalAmount)
		}
		
		setnumber = 0;
		linex = [];
		liney = [];
		with numbox {
		number = 0;
		correct = 0;
		}
		
		
		
		

	}
}
