/// @description Insert description here
// You can write your code in this editor

if mouse_x > 180 and mouse_y < 420 and mouse_y > 64{
	var _check = false;
	for ( var _i = 0; _i < array_length(linex); _i++){
		if linex[_i] == mouse_x and liney[_i] == mouse_y _check = true;
	}
	
	if _check == false{
		array_push(linex,mouse_x);
		array_push(liney,mouse_y);
	}
}







