function word_box_create(){
	
	var _x = 208
	var _y = 576
	var _y2 = 560
	var _wd = 336
	var _ht = 96
	var _ht2 = 80
	
	instance_create_layer(_x,_y,"Instances",wordbox,{text : FIVE})
	instance_create_layer(_x,_y+_ht,"Instances",wordbox,{text : TEN})
	instance_create_layer(_x,_y+_ht*2,"Instances",wordbox,{text : FIFTEEN})
	instance_create_layer(_x+_wd,_y2,"Instances",wordbox,{text : TWO})
	instance_create_layer(_x+_wd,_y2+_ht2,"Instances",wordbox,{text : THREE})
	instance_create_layer(_x+_wd,_y2+_ht2*2,"Instances",wordbox,{text : FOUR})
	instance_create_layer(_x+_wd,_y2+_ht2*3,"Instances",wordbox,{text : SIX})
	instance_create_layer(_x+_wd*2,_y,"Instances",wordbox,{text : ONE})
	instance_create_layer(_x+_wd*2,_y+_ht,"Instances",wordbox,{text : TWENTY})
	instance_create_layer(_x+_wd*2,_y+_ht*2,"Instances",wordbox,{text : FOURHUNDRED})
	instance_create_layer(_x+_wd*3,_y,"Instances",wordbox,{text : PB20})
	instance_create_layer(_x+_wd*3,_y+_ht,"Instances",wordbox,{text : PB400})
	instance_create_layer(_x+_wd*3,_y+_ht*2,"Instances",wordbox,{text : ALMOST})
}