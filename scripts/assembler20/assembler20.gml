//accepts list as argument _numlist. _numlist must hold three different values, where
//_numlist[0] represents 400s place, [1] represents 20s place and [2] represents 1s place


function assembler20(_rawnumlist){
//creates the placeholder word
	var _numlist = _rawnumlist;
//Start with extreme
	if array_equals(_numlist,[3,4,3,4,3,4]) return "atausiqpautaixaq"
	
//Exception for one before an increase to 5 or 20, EXCEPT if 5 is 0
//So if 0,0,0,0,>1,4 or x,x,x,y,3,4 or x,x,y,4,3,4 or x,y,3,4,3,4 or y,4,3,4,3,4
	
	else {
		
		var _inuword = "";
		var _oneless = false;

		if _numlist[5] == 4 and _numlist[4] > 0 {
			_numlist = cascade(_numlist);
			_oneless = true
		}
		//2000s
		if _numlist[0] > 0 _inuword += test.word5[_numlist[0]] + suff400;
		//400s
		if _numlist[1] > 1 _inuword += test.word[_numlist[1]] + suff400;
		else if _numlist[1] == 1 _inuword += word400;
		//100s
		if _numlist[2] > 0 _inuword += test.word5[_numlist[2]] + suff20;
		//20s
		if _numlist[3] > 1 _inuword += test.word[_numlist[3]] + suff20;
		else if _numlist[3] == 1 _inuword += test.word20;
		
		//exceptions abound!
		if _numlist[4] == 2 and _numlist[5] == 0 and _oneless == true {
			_inuword += test.word9;
			_oneless = false
		}
		
		else if _numlist[4] == 1 and _numlist[5] == 1 _inuword += test.word6
		else {
			if _numlist[4] == 3 _inuword += test.word5[_numlist[4]] + "q "
			else if _numlist[4] > 0 _inuword += test.word5[_numlist[4]] + "t ";
			
			if _numlist[5] > 0 _inuword += test.word[_numlist[5]] + test.suff1[_numlist[5]]
		}
		
		_inuword = string_trim(_inuword)
		if _oneless = true _inuword = string_delete(_inuword,string_length(_inuword),1)+"butaixaq"
		
		return _inuword
	}
}
	//else {
	//	var _inunum = ""
//start with checking for endpoints
		
		
		
//		if _numlist[0] > 0 or _numlist[1] > 0{
//			var _arraycheck400 = _numlist[2] == 3 and _numlist[3] == 4 and _numlist[4] == 3 and _numlist[5] == 4	
//			if _arraycheck400 and _numlist[1] == 4{
//				return test.word5[_numlist[0]+1] + test.suff400 + test.suffb
//			}
//			else {
//				if _numlist[0] > 0 _inunum += test.word5[_numlist[0]] + test.suff400 + "q "
//				if _arraycheck400 return _inunum +  test.word1[_numlist[0]+1] + test.suff400 + test.suffb
//				else if _numlist[1] > 1 _inunum += test.word1[_numlist[1]] + test.suff400 + "q "
//				else if _numlist [
//			}
//		}
		
//		if _numlist[2] > 0 or _numlist[3] > 0{
//			var _arraycheck20 = _numlist[4] == 3 and _numlist[5] == 4	
//			if _arraycheck20 and _numlist[3] == 4{
//				return _inunum + test.word5[_numlist[2]+1] + test.suff20 + test.suffb
//			}
//			else {
//				if _numlist[2] > 0 _inunum += test.word5[_numlist[2]] + test.suff20 + "q "
//				if _arraycheck20 return _inunum +  test.word1[_numlist[3]+1] + test.suff20 + test.suffb
//				else if _numlist[3] > 0 _inunum += test.word1[_numlist[3]] + test.suff20 + "q "
//			}

		
			
//		}		
//	}

////Exception for 6 if x,x,x,x,1,1
	
	

//used to add one to a number list. Accepts a list and a position to begin the cascade.
//cascade should never be performed on the extreme list
function cascade(_rawnumlist){
	
	var _numlist = _rawnumlist;
	_numlist[5] += 1
	for (var _i = 5;_i > 0; _i -= 1){
		
		if (_i % 2 == 0 and _numlist[_i] == 4) or (_i % 2 != 0 and _numlist[_i] == 5){
			_numlist[_i-1] += 1
			_numlist[_i] = 0
		}
		else return _numlist;
		
	}
	
	return _numlist;
}
