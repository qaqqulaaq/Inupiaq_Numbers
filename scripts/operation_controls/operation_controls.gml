//Returns an array containing the arrays for the numbers and the amounts
// _setup[0] = _array1, setup[1] = _array2, setup[2] = totalAmount
function operation_controls(_level,_op){
			var _array1 = random_num_generator(_level);
			var _array2 = random_num_generator(_level);



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
			
			var _totamount
			if _op = "plus" _totamount = _amount1+_amount2;
			else _totamount = _amount1 - _amount2;
			
			return [_array1,_array2,_totamount]
}