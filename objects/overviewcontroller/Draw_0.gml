draw_set_font(fnt_lesson_48)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

var _time = game_get_speed(gamespeed_fps)*.25

for (var i = 0; i < array_length(word) - 1; i++){
	
	if timer > times[i][0]{
		for (var j = 0; j < array_length(word[i]); j++){

			var _wordpart = ""
			for (var k = 0; k < j; k++){
				_wordpart += word[i][k]
			}
	
			var _col;
			
			if j == 0 _col = c_white;
			else if j % 2 == 1 _col = make_colour_rgb(255,76,6);
			else _col = make_colour_rgb(50,69,255)
	
			draw_set_color(_col);
			
			
			
			
			if j == 0 draw_set_alpha(clamp( (timer - times[i][j] - _time) / _time  ,0,1))
			else draw_set_alpha(clamp( (timer - times[i][j] - _time) / _time  ,0,1))
	
			
			if i < 10{
				var _x = 78  + string_width(_wordpart);
				draw_text(_x, (i+1)*80,word[i][j])
			}
			
			else{
				var _x = room_width div 2 + 78  + string_width(_wordpart);
				draw_text(_x, (i-9)*80,word[i][j])
			}
		}
	}
}