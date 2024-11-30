// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_pen(){
	with gamecontroller{
		if mouse_y < 420 and mouse_y > 64{
			var _check = false;
			for ( var _i = 0; _i < array_length(linex); _i++){
				if linex[_i] == mouse_x and liney[_i] == mouse_y _check = true;
			}
	
			if _check == false{
				array_push(linex,mouse_x);
				array_push(liney,mouse_y);
			}
		}
	}
}