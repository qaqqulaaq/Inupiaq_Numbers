/// @description User Eraser

if room == number_conversions or room == number_operations{
	if mouse_x > 180 and mouse_y < 420{
		var _check = false;
		for ( var _i = 0; _i < array_length(linex); _i++){
			if linex[_i] >= mouse_x - 10 and linex[_i] <= mouse_x + 10  and liney[_i] >= mouse_y - 10 and liney[_i] <= mouse_y + 10 {
				array_delete(linex,_i,1);
				array_delete(liney,_i,1);
			}
		}
	}
}




