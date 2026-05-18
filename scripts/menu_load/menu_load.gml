function menu_load(_options){


	for (var i = 0; i < array_length(_options); i++){
		instance_create_layer(0,0,"Instances",menu_choice,{say: _options[i]});
	}	
}