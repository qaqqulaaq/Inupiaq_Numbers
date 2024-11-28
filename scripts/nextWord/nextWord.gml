// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nextWord(_text,_len,_lastword){
		
		switch _lastword{
			case "ixagieeaq":
				if _text != "-kipiaq" and _text != "-agliaq" and _text != "ixagieeaq" return _text;
				break;
				
			case "ieueeaq":
				if _text != "-kipiaq" and _text != "-agliaq" and _text != "ixagieeaq" and _text != "ieueeaq" return _text;
				break;
			
			case "akimiaq":
			if _text == "-butaixaq" return _text;
			
			case "qulit":
			if _text == "-butaixaq" return "-ffubutaixaq";
			if _text == "atausiq" return _text;
			
			case "tallimat":
				switch _text{
					case "malbuk":
					case "pifasut":
					case "sisamat":
					case "-kipiaq":
					case "-agliaq":
					return _text;
				}
			break;
			
			case "malbuk":
			case "pifasut":
			case "sisamat":
			if _text == "-kipiaq" or _text == "-agliaq" return _text;
			break;				
			
			
		}	
}