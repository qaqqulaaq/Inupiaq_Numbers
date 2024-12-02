function conv_change(){
	
	with gamecontroller{	
		if kaktovik{
			instance_destroy(numbox);
			
			for (var _i = 0; _i <= 9; _i++){
				
				if _i < 4 instance_create_layer(16 + _i*64, 592,"Instances",obj_arnum,{num : string(_i)})
				else if _i < 7 instance_create_layer(16 + (_i-3)*64,528,"Instances",obj_arnum,{num : string(_i)})
				else instance_create_layer(16 + (_i-6)*64,464,"Instances",obj_arnum,{num : string(_i)})
			}
			instance_create_layer(16,464,"Instances",obj_arnum,{num : "del"})
			
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
}


