/// @description Insert description here
// You can write your code in this editor



if not review{
	draw_set_font(fnt_lesson_148)
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)

	var _time = game_get_speed(gamespeed_fps)*.75

	for (var i = 0; i < array_length(word[progress]); i++){
	
		var _wordpart = ""
		for (var j = 0; j < i; j++){
			_wordpart += word[progress][j]
		}
	
		var _col;
	
		if i % 2 == 0 _col = make_colour_rgb(255,76,6);
		else _col = make_colour_rgb(50,69,255)
	
		draw_set_color(_col);
		draw_set_alpha(clamp( (timer - (i+1)*_time) / _time  ,0,1))
	
		var _x = room_width / 2 - (string_width(fullword) / 2) + string_width(_wordpart);
		var _y = room_height div 4
	
		draw_text(_x,_y,word[progress][i])
	
	}

	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_font(InupiaqNumbers_150)
	draw_set_alpha(clamp( (timer - (array_length(word[progress])+2)*_time) / _time  ,0,1))
	draw_text(room_width div 2, room_height div 2, chr(58785 + progress))

	var _y = room_height *3/4

	draw_set_font(fnt_lesson_74)
	draw_set_alpha(clamp( (timer - (array_length(word[progress])+4)*_time) / _time  ,0,1))
	draw_text(room_width div 6, _y, num[progress])

	draw_set_alpha(clamp( (timer - (array_length(word[progress])+5)*_time) / _time  ,0,1))
	draw_text(room_width div 2, _y, engword[progress])

	draw_set_alpha(clamp( (timer - (array_length(word[progress])+6)*_time) / _time  ,0,1))
	draw_text(room_width*5 div 6, _y, star[progress])

	draw_set_alpha(1)
}