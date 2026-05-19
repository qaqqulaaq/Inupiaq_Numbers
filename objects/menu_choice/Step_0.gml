

if x > set_x{
	x -= 50
	if x <= set_x{
		x = set_x
	}
}
	
else if x < set_x{
	x += 50
	if x >= set_x{
		x = set_x
	}
}

if not position_meeting(mouse_x,mouse_y,self) col = 255;