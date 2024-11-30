// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wordChooser(_text){
	with gamecontroller{

		var _len = array_length(word_array) - 1
		var _allowedwords = [ONE,TWO,THREE,FOUR,FIVE,SIX,TEN,FIFTEEN,TWENTY,FOURHUNDRED,PB20,PB400,ALMOST];
		var _isallowed = false;

		if _len == -1 array_delete(_allowedwords,10,3);
	
		else switch word_array[_len]{
				case PB400:
					if !(word_array[_len - 1] == FIFTEEN or word_array[_len - 1] == TEN or word_array[_len - 1] == FIVE) array_delete(_allowedwords,9,3);
					break;
				case PB20:
					if !(word_array[_len - 1] == FIFTEEN or word_array[_len - 1] == TEN or word_array[_len - 1] == FIVE) array_delete(_allowedwords,8,4);
					else array_delete(_allowedwords,9,3);
					break;
				
				case FOURHUNDRED:
					array_delete(_allowedwords,9,3);
					break;
				
				case TWENTY:
					array_delete(_allowedwords,8,4);
					break;
				
				case FIFTEEN:
				case TEN:
				case FIVE:
					if array_get_index(word_array, TWENTY) != -1 array_delete(_allowedwords,10,2)
					else if array_get_index(word_array,PB20) != -1 array_delete(_allowedwords, 10, 2)
					else if array_get_index(word_array,FOURHUNDRED) != -1 array_delete(_allowedwords,11,1)
					else if array_get_index(word_array,PB400) != -1 array_delete(_allowedwords, 11, 1)
					array_delete(_allowedwords, 3,6);		
					if word_array[_len] == FIVE{
						array_pop(_allowedwords);
						array_shift(_allowedwords);
					}
					break;
				
				case TWO:
				case THREE:
				case FOUR:
					if _len > 0{
						if _len > 0 and word_array[_len - 1] == FIFTEEN or word_array[_len - 1] == TEN or word_array[_len - 1] == FIVE array_delete(_allowedwords,10,2);
					
						else if array_get_index(word_array, TWENTY) != -1 array_delete(_allowedwords,10,2)
					
						else if array_get_index(word_array,FOURHUNDRED) != -1 array_delete(_allowedwords,11,1)
					
						else{
							var _kip = array_get_index(word_array,PB20,-1,-infinity);
							if _kip != -1 {
								if !(word_array[_kip - 1] == FIFTEEN or word_array[_kip - 1] == TEN or word_array[_kip - 1] == FIVE) array_delete(_allowedwords,10,2);
								else array_delete(_allowedwords,11,1); 
							}
							else{
								var _ag = array_get_index(word_array,PB400,-1,-infinity);
								if !(word_array[_ag - 1] == FIFTEEN or word_array[_ag - 1] == TEN or word_array[_ag - 1] == FIVE) array_delete(_allowedwords,11,1);
							}
						}
					}

					array_delete(_allowedwords,0,10);
					array_pop(_allowedwords);
					break;
				
				case ONE:
				case SIX:
				case ALMOST:
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
}