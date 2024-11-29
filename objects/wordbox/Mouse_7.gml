/// @description Insert description here
// You can write your code in this editor

var _text = text;

with gamecontroller{

	var _len = array_length(word_array) - 1
	var _allowedwords = ["atausiq","malbuk","pifasut","sisamat","tallimat","itchaksrat","qulit","akimiaq","ieueeaq","ixagieeaq","-kipiaq","-agliaq","-butaixaq"];
	var _isallowed = false

	if _len == -1 array_delete(_allowedwords,10,3);
	
	else switch word_array[_len]{
			case "-agliaq":
				if !(word_array[_len - 1] == "akimiaq" or word_array[_len - 1] == "qulit" or word_array[_len - 1] == "tallimat") array_delete(_allowedwords,9,3);
				break;
			case "-kipiaq":
				if !(word_array[_len - 1] == "akimiaq" or word_array[_len - 1] == "qulit" or word_array[_len - 1] == "tallimat") array_delete(_allowedwords,8,4);
				else array_delete(_allowedwords,9,3);
				break;
				
			case "ixagieeaq":
				array_delete(_allowedwords,9,3);
				break;
				
			case "ieueeaq":
				array_delete(_allowedwords,8,4);
				break;
				
			case "akimiaq":
			case "qulit":
			case "tallimat":
				if array_get_index(word_array, "ieueeaq") != -1 array_delete(_allowedwords,10,2)
				else if array_get_index(word_array,"-kipiaq") != -1 array_delete(_allowedwords, 10, 2)
				else if array_get_index(word_array,"ixagieeaq") != -1 array_delete(_allowedwords,11,1)
				else if array_get_index(word_array,"-agliaq") != -1 array_delete(_allowedwords, 11, 1)
				array_delete(_allowedwords, 3,6);		
				if word_array[_len] == "tallimat"{
					array_pop(_allowedwords);
					array_shift(_allowedwords);
				}
				break;
				
			case "malbuk":
			case "pifasut":
			case "sisamat":
				if _len > 0{
					if _len > 0 and word_array[_len - 1] == "akimiaq" or word_array[_len - 1] == "qulit" or word_array[_len - 1] == "tallimat" array_delete(_allowedwords,10,2);
					
					else if array_get_index(word_array, "ieueeaq") != -1 array_delete(_allowedwords,10,2)
					
					else if array_get_index(word_array,"ixagieeaq") != -1 array_delete(_allowedwords,11,1)
					
					else{
						var _kip = array_get_index(word_array,"-kipiaq",-1,-infinity);
						if _kip != -1 {
							if !(word_array[_kip - 1] == "akimiaq" or word_array[_kip - 1] == "qulit" or word_array[_kip - 1] == "tallimat") array_delete(_allowedwords,10,2);
							else array_delete(_allowedwords,11,1); 
						}
						else{
							var _ag = array_get_index(word_array,"-agliaq",-1,-infinity);
							if !(word_array[_ag - 1] == "akimiaq" or word_array[_ag - 1] == "qulit" or word_array[_ag - 1] == "tallimat") array_delete(_allowedwords,11,1);
						}
					}
				}

				array_delete(_allowedwords,0,10);
				array_pop(_allowedwords);
				break;
				
			case "atausiq":
			case "itchaksrat":
			case "-butaixaq":
				array_delete(_allowedwords,0,array_length(_allowedwords))
				break;;
		}		
		
	
	for (var _i = 0; _i < array_length(_allowedwords);_i++){
		if _text == _allowedwords[_i]{
			_isallowed = true
			break;
		}
	}
	
	if _isallowed == true array_push(word_array,_text);
			
	display_text = wordBuilder(word_array);
}


