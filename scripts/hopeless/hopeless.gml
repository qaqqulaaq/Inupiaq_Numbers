// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
function hopeless(){
var _text = text;


with test{
	
	switch wordprogress{
		case 0: {
			switch _text{
				case "tallimat":
				case "qulit":
				case "akimiaq":
				wordprogress = 1;
				array_push(word_array, _text);
				break;
				
				case "malbuq":
				case "pifasut":
				case "sisamat":
				wordprogress = 3;
				array_push(word_array, _text);
				break;

				case "ixagieeaq":
				wordprogress = 4;
				array_push(word_array, _text);
				break;

				case "ieueeaq":
				wordprogress = 7;
				array_push(word_array, _text);
				break;
				
				case "atausiq":
				case "itchaksrat":
				wordprogress = 9;
				array_push(word_array, _text);
				break;
			}
		};
		break;
		
		case 1:
			switch _text{
				case "-agliaq":
					word_array[0] = string_copy(word_array[0],1,string_length(word_array[0])-1) + _text;
					wordprogress = 2;
					break;
				
				case "-kipiaq":
					word_array[0] = string_copy(word_array[0],1,string_length(word_array[0]-1)) + _text;
					wordprogress = 5;
					break;
				
				case "-butaixaq":
					if word_array[0] != "tallimat" {
						word_array[0] = string_copy(word_array[0],1,string_length(word_array[0]-1)) + _text;
						wordprogress = 7
					}
				break;
				
				case "malbuk":
				case "pinfasut":
					array_push(word_array,_text);
					wordprogress= 7;
				break;
				
				case "atausiq":
				if word_array[0] != "tallimat" {
					array_push(word_array,_text);
					wordprogress= 7;
				}
				break;
			}
			break;
				
		case 2:
			switch _text{
				case "malbuq":
				case "pifasut":
				case "sisamat":
				wordprogress = 3;
				array_push(word_array, _text);
				break;
				
				case "ixagieeaq":
				wordprogress = 4;
				array_push(word_array, _text);
				break;
				
				case "tallimat":
				case "qulit":
				case "akimiaq":
				wordprogress = 5;
				array_push(word_array, _text);
				break;				
				
				case "ieueeaq":
				wordprogress = 6;
				array_push(word_array, _text);
				break;
				
				case "atausiq":
				case "itchaksrat":
				wordprogress = 9;
				array_push(word_array, _text);
				break;				
			}
			break;
		
		case 3:
			switch _text{
				case "-agliaq":
					word_array[0] = string_copy(word_array[0],1,string_length(word_array[0])-1) + _text;
					wordprogress = 2;
					break;
				
				case "-kipiaq":
					word_array[0] = string_copy(word_array[0],1,string_length(word_array[0]-1)) + _text;
					wordprogress = 5;
					break;
				
				case "-butaixaq":
					if word_array[0] == "akimiaq" {
						word_array[0] = string_copy(word_array[0],1,string_length(word_array[0]-1)) + _text;
						wordprogress = 7
					}
					else if word_array[0] == "qulit"
						word_array[0] = string_copy(word_array[0],1,string_length(word_array[0]-1)) + "ffu" + _text;
						wordprogress = 7					
				break;
				
				case "malbuk":
				case "pinfasut":
					array_push(word_array,_text);
					wordprogress= 7;
				break;
				
				case "atausiq":
				if word_array[0] != "tallimat" {
					array_push(word_array,_text);
					wordprogress= 7;
				}
				break;
			}
			break; 
			}
			break;
		}
		
		
		case "atausiq":
		case "malbuq":
		case "pifasut":
		case "sisamat":
		case "tallimat":
		case "itchaksrat":
		case "qulit":
		case "akimiaq":
		case "ieueeaq":
		case "ixagieeaq": {
			
			
		}
		
	}
	
	//if array_length(word_array) == 0 and _text != "-kipiaq" and _text != "-agliaq" and _text != "-butaixaq" array_push(word_array ,_text)
	
	//else if 
	
	
	display_text = string(word_array)
}
}
*/