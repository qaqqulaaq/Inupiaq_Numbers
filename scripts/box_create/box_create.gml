//Creates boxes depending on the level. Called when changing the level
function box_create(_level){
	//destroys all previous number boxes
	instance_destroy(numbox);

	//sets the generic placement, that can be changed more easily later
	var _x = 448
	var _y = 448
	//two separate switches due to two separate level systems
	//both create one through five number boxes
	if room == number_operations switch _level{
		case 1: 
			instance_create_layer(_x    , _y, "Instances",numbox0);
			break;
			
		case 2:
		case 3:
		case 4:
			instance_create_layer(_x-80 , _y, "Instances",numbox1);
			instance_create_layer(_x+80 , _y, "Instances",numbox0);
			break;
		
		case 5:
			instance_create_layer(_x-160, _y, "Instances",numbox2);
			instance_create_layer(_x    , _y, "Instances",numbox1);
			instance_create_layer(_x+160, _y, "Instances",numbox0);
			break;
			
		case 6:
			instance_create_layer(_x-240, _y, "Instances",numbox3);
			instance_create_layer(_x-80 , _y, "Instances",numbox2);
			instance_create_layer(_x+80 , _y, "Instances",numbox1);
			instance_create_layer(_x+240, _y, "Instances",numbox0);
			break;
			
		case 7:
			instance_create_layer(_x-320, _y, "Instances",numbox4);
			instance_create_layer(_x-160, _y, "Instances",numbox3);
			instance_create_layer(_x    , _y, "Instances",numbox2);
			instance_create_layer(_x+160, _y, "Instances",numbox1);
			instance_create_layer(_x+320, _y, "Instances",numbox0);
			break;
	}
	
	else if room == number_conversions switch _level{
		case 1: 
			instance_create_layer(_x    , _y, "Instances",numbox0);
			break;
			
		case 2:
		case 3:
			instance_create_layer(_x-80 , _y, "Instances",numbox1);
			instance_create_layer(_x+80 , _y, "Instances",numbox0);
			break;
		
		case 4:
		case 5:
			instance_create_layer(_x-160, _y, "Instances",numbox2);
			instance_create_layer(_x    , _y, "Instances",numbox1);
			instance_create_layer(_x+160, _y, "Instances",numbox0);
			break;
			
		case 6:
		case 7:
			instance_create_layer(_x-240, _y, "Instances",numbox3);
			instance_create_layer(_x-80 , _y, "Instances",numbox2);
			instance_create_layer(_x+80 , _y, "Instances",numbox1);
			instance_create_layer(_x+240, _y, "Instances",numbox0);
			break;
			
		case 8:
		case 9:
		case 10:
			instance_create_layer(_x-320, _y, "Instances",numbox4);
			instance_create_layer(_x-160, _y, "Instances",numbox3);
			instance_create_layer(_x    , _y, "Instances",numbox2);
			instance_create_layer(_x+160, _y, "Instances",numbox1);
			instance_create_layer(_x+320, _y, "Instances",numbox0);
			break;
	}
	
	else if room == number_toword switch _level{
		case 1:
		case 2:
			instance_create_layer(_x    , _y, "Instances",numbox0);
			break;
			
		case 3:
		case 4:
		case 5:
			instance_create_layer(_x-80 , _y, "Instances",numbox1);
			instance_create_layer(_x+80 , _y, "Instances",numbox0);
			break;
			
		case 6:
		case 7:
		case 8:
			instance_create_layer(_x-160, _y, "Instances",numbox2);
			instance_create_layer(_x    , _y, "Instances",numbox1);
			instance_create_layer(_x+160, _y, "Instances",numbox0);
			break;
	}
	
}