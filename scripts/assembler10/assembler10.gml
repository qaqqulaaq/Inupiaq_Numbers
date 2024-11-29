//Script takes argument, _numlist, as a list that has 6 indices (2000,400,100,20,5,1] and breaks it down to assemble the words in English
function assembler10(_numlist){
//Sets up the english word by breaking up the base 10 place values
	var _base10 = _numlist[0]*2000 + _numlist[1]*400 + _numlist[2]*100 + _numlist[3]*20 + _numlist[4]*5 + _numlist[5]
	var _engnumlist = [_base10 div 1000,(_base10%1000) div 100,((_base10%1000)%100) div 10,((_base10%1000)%100)%10]
	var _engword = ""

//processes the number list, adds a break after the words "hundred" and "thousand"

	if _engnumlist[0] > 0 _engword += gamecontroller.engword[_engnumlist[0]] + " Thousand\n";
	if _engnumlist[1] > 0 _engword += gamecontroller.engword[_engnumlist[1]] + " Hundred\n";
//exceptions for the tens place, teens or finishes with tens place
	if _engnumlist[2] == 1 _engword += gamecontroller.engwordt[_engnumlist[3]];
	else if _engnumlist[2] > 1 and _engnumlist[3] == 0 _engword += gamecontroller.engword10[_engnumlist[2]];
//
	else {
		if _engnumlist[2] > 1 _engword += gamecontroller.engword10[_engnumlist[2]] + "-";
		if _engnumlist[3] > 0 _engword += gamecontroller.engword[_engnumlist[3]];
		if _engword = "" _engword = "Zero";
	}
	
	return _engword
}