function menu_load(_list){

	for (var i = 0; i < array_length(_list); i++){
		instance_create_layer(0,0,"Instances",menu_choice,{say: _list[i]});
	}	
}