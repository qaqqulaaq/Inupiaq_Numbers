//accepts list as argument _numlist. _numlist must hold three different values, where
//_numlist[0] represents 400s place, [1] represents 20s place and [2] represents 1s place


function assembler20(_numlist){
//creates the placeholder word
	var _inuword = ""
	
//Sets the word at the extremes (last number and zero)
	if _numlist[0] == 19 and _numlist[1] == 19 and _numlist[2] == 19 _inuword = "atausiqpautaixaq"
	else if _numlist[0] == 0 and _numlist[1] == 0 and _numlist[2] == 0 _inuword = "suitchuq"

//If the value in the 1s place is 19, sets the word based on the next value, and adds "gutailaq"
	else if _numlist[2] == 19{
		if _numlist[1] == 19 {
			_numlist[0] += 1
			_inuword = string_delete(test.word100[_numlist[0]],string_length(test.word100[_numlist[0]])-1,1)+"butaixaq"			
		}
		else{
			_numlist[1] += 1
			if _numlist[0] > 0 _inuword += test.word100[_numlist[0]]
			_inuword = string_delete(test.word10[_numlist[1]],string_length(test.word100[_numlist[1]])-1,1)+"butaixaq"			
		}
	}

//For all other numbers, just uses the following format
	else{
		if _numlist[0] > 0 _inuword += test.word100[_numlist[0]] + " "
		if _numlist[1] > 0 _inuword += test.word10[_numlist[1]] + " "
		if _numlist[2] > 0 _inuword += test.word[_numlist[2]]
	}
	return _inuword
}