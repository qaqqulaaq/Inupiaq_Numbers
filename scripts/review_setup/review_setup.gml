// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function review_setup(){
	if array_equals(reviewlist,[]) {
		reviewlist = [0,1,2,3]
	}
	var _rand = irandom(array_length(reviewlist)-1);
	ind = reviewlist[_rand]
						
	var _fullword = ""
	for (var i = 0; i < array_length(word[ind]); i++){	
		_fullword += word[ind][i];	
	}
						
	if not instance_exists(question) instance_create_layer(0,0,"Instances",question,{say: _fullword})
						
	else with question say = _fullword
						
	instance_destroy(choice)
						
						
	var _numchoice = [0,1,2,3]
	var _typechoice = array_shuffle([0,1,2])
	var _first = true
	var _box = []
						
	while array_length(_typechoice) > 0{
		var _chosennum;
		if _first{
			_chosennum = ind;
			_first = false
		}
							
		else{
			_chosennum = _numchoice[irandom(array_length(_numchoice)-1)]
		}
							
		for (var i = 0; i < array_length(_numchoice); i++){
			if _numchoice[i] == _chosennum{
				array_delete(_numchoice,i,1);
				break;
			}
		}
							
							
		var _typerand = array_pop(_typechoice)
						
		if _typerand == 0	{
			array_push(_box, instance_create_layer(0,room_height div 2,"Instances",choice,{say: num[_chosennum],num: _chosennum}))
		}
							
		else if _typerand == 1	{
			array_push(_box, instance_create_layer(0,room_height div 2,"Instances",choice,{say: engword[_chosennum],num: _chosennum}))
		}
						
		else if _typerand == 2	{
			array_push(_box, instance_create_layer(0,room_height div 2,"Instances",choice,{say: star[_chosennum],num: _chosennum}))
		}
						
	}
						
	var _shuffledbox = array_shuffle(_box)
							
	while array_length(_shuffledbox) > 0{
		array_pop(_shuffledbox).x = room_width * (7 - array_length(_shuffledbox)*2) div 6
	}	
						
	array_delete(reviewlist,_rand,1)
}