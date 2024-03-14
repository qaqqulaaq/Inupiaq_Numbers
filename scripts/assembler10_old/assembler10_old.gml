//Script takes argument, _numlist, as a list and breaks it down to assemble the words in English
function assembler10_old(_numlist){
//Sets up the english word by breaking up the base 10 place values
	var _base10 = _numlist[0]*400 + _numlist[1]*20 + _numlist[2]
	_engnumlist = [_base10 div 1000,(_base10%1000) div 100,((_base10%1000)%100) div 10,((_base10%1000)%100)%10]
	var _engword = ""
	if _engnumlist[0] > 0 _engword += test.engword[_engnumlist[0]] + " Thousand "
	if _engnumlist[1] > 0 _engword += test.engword[_engnumlist[1]] + " Hundred "
//exceptions for the tens place, teens or finishes with tens place
	if _engnumlist[2] == 1 _engword += test.engwordt[_engnumlist[3]]
	else if _engnumlist[2] > 1 and _engnumlist[3] == 0 _engword += test.engword10[_engnumlist[2]]
//
	else {
		if _engnumlist[2] > 1 _engword += test.engword10[_engnumlist[2]] + "-"
		if _engnumlist[3] > 0 _engword += test.engword[_engnumlist[3]]
		if _engword = "" _engword = "Zero"
	}
	
	return _engword
}