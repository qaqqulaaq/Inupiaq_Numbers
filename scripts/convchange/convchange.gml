function conv_change(){
	
	with gamecontroller{	
		if room == number_conversions{
			if kaktovik{
				with numbox instance_destroy();
			
				for (var _i = 0; _i <= 9; _i++){
				
					if _i < 4 instance_create_layer(316 + _i*64, 592,"Instances",obj_arnum,{num : string(_i)})
					else if _i < 7 instance_create_layer(316 + (_i-3)*64,528,"Instances",obj_arnum,{num : string(_i)})
					else instance_create_layer(316 + (_i-6)*64,464,"Instances",obj_arnum,{num : string(_i)})
				}
				instance_create_layer(316,464,"Instances",obj_arnum,{num : "del"})
			
				kaktovik = false;
				reset();
			}
	
			else {
				instance_destroy(obj_arnum);
				box_create(level);
				kaktovik = true;
				reset();
			}
		}
		
		else if room == number_toword{
			if mode_number{
				instance_destroy(numbox);
				word_box_create();	
				mode_number = false
				reset();
			}
			else{
				instance_destroy(wordbox);
				box_create(level);
				mode_number = true
				reset();
			}
		}
	}
}


