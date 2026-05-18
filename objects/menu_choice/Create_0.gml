set_x = 0
set_y = 0

switch say{
	case "Introduction":
		x = room_width div 2;
		y = room_height * 3 div 6;
		set_x = x
		set_y = y
		break;
	
	case "Numbers":
		x = room_width div 2;
		y = room_height * 4 div 6;
		set_x = x
		set_y = y
		break;
		
	case "Vocabulary":
		x = room_width div 2;
		y = room_height * 5 div 6;
		set_x = x
		set_y = y
		break;
		
	case "Conversions":
	case "Multiple Choice":
		x = room_width * 2 div 3
		y = room_height * 3 div 6;
		set_x = x
		set_y = y
		break;
		
	case "Operations":
	case "Word Building":
		x = room_width * 2 div 3
		y = room_height * 4 div 6;
		set_x = x
		set_y = y
		break;
		
	case "Numbers to Words":

		x = room_width * 2 div 3
		y = room_height * 5 div 6;
		set_x = x
		set_y = y
		
		break;
		
}

set_pressed = false


//switch say {
//	case "Conversions":
//		x = room_width * 3 div 4
//		y = room_height * 2 div 5
//		break;
		
//	case "Operations":

//		x = room_width div 4
//		y = room_height * 2 div 5
//		break;
		
//	case "Numbers to Words":

//		x = room_width div 2
//		y = room_height * 3 div 5
//		break;
		
//	case "Word Building":

//		x = room_width * 3 div 4
//		y = room_height * 4 div 5
//		break;
		
//	case "Multiple Choice":

//		x = room_width div 4
//		y = room_height * 4 div 5
//		break;
//}

alpha = 0
col = 255