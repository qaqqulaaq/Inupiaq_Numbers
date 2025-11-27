///@description Draws everything

//Sets to white, center and top by default

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(Words_24);


//draw the level at the top of the screen
if level < 10 draw_text(room_width div 2 ,16,string(level));
else draw_text(room_width div 2,16,"R");

switch room{
	
	case number_operations: draw_number_operations(); break;
	
	case number_conversions: draw_number_conversions(); break;
		
	case number_toword:	
	case vocab_wordbuild:
		draw_set_font(Words_24);
		draw_set_color(c_yellow);
		draw_text(room_width div 2, 320, display_text);
		break;
	
	default: break;
}

if helpmode {
	draw_help();
}



