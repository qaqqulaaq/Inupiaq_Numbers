function word_box_create(){
	
	var _c1 = room_width * 1 div 5
	var _c2 = room_width * 2 div 5
	var _c3 = room_width * 3 div 5
	var _c4 = room_width * 4 div 5
	
	var _r = [496]
	repeat 2 array_push(_r,array_last(_r)+64)
	
	var _ra = [464]
	repeat 3 array_push(_ra,array_last(_ra)+64)
	
	instance_create_layer(_c1, _r[0],"Instances",wordbox,{text : FIVE})
	instance_create_layer(_c1, _r[1],"Instances",wordbox,{text : TEN})
	instance_create_layer(_c1, _r[2],"Instances",wordbox,{text : FIFTEEN})
	instance_create_layer(_c2,_ra[0],"Instances",wordbox,{text : TWO})
	instance_create_layer(_c2,_ra[1],"Instances",wordbox,{text : THREE})
	instance_create_layer(_c2,_ra[2],"Instances",wordbox,{text : FOUR})
	instance_create_layer(_c2,_ra[3],"Instances",wordbox,{text : SIX})
	instance_create_layer(_c3, _r[0],"Instances",wordbox,{text : ONE})
	instance_create_layer(_c3, _r[1],"Instances",wordbox,{text : TWENTY})
	instance_create_layer(_c3, _r[2],"Instances",wordbox,{text : FOURHUNDRED})
	instance_create_layer(_c4, _r[0],"Instances",wordbox,{text : PB20})
	instance_create_layer(_c4, _r[1],"Instances",wordbox,{text : PB400})
	instance_create_layer(_c4, _r[2],"Instances",wordbox,{text : ALMOST})
}