//Returns a random number that is used for the Number Conversion Mode.
function numberConversionSwitch(_level){
		switch _level{
		case 1: return irandom(19); 
		case 2: return irandom(79) + 20; 
		case 3: return irandom(299) + 100; 
		case 4: return irandom(1599) + 400; 
		case 5:	return irandom(5999) + 2000; 
		case 6: return irandom(31999) + 8000; 
		case 7: return irandom(119999) + 40000; 
		case 8: return irandom(639999) + 160000;
		case 9: return irandom(2399999) + 800000; 
		case 10: return numberConversionSwitch(irandom_range(6,9))
	}
}