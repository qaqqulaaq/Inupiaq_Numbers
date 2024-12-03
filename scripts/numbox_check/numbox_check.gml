// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function numbox_check(_amount){
	
	var _ansarray;
	
	if room == number_operations or room == number_conversions _ansarray = [_amount div 160000, (_amount % 160000) div 8000, (_amount % 8000) div 400, (_amount % 400) div 20, (_amount % 20)]
				
	else if room == number_toword _ansarray = [0,0,string_ord_at(_amount,1)-KN,string_ord_at(_amount,2)-KN,string_ord_at(_amount,3)-KN]
	
	if instance_exists(numbox4){
		if _ansarray[0] != numbox4.number{
			numbox4.correct = 1;
			numbox4.number = _ansarray[0];
		}
	}
		
	if instance_exists(numbox3){
		if _ansarray[1] != numbox3.number{
			numbox3.correct = 1;
			numbox3.number = _ansarray[1];
		}
	}
		
	if instance_exists(numbox2){		
		if _ansarray[2] != numbox2.number{
			numbox2.correct = 1;
			numbox2.number = _ansarray[2];
		}	
	}
		
	if instance_exists(numbox1){
		if _ansarray[3] != numbox1.number{
			numbox1.correct = 1;
			numbox1.number = _ansarray[3];
		}
	}
		
	if instance_exists(numbox0){
		if _ansarray[4] != numbox0.number{
			numbox0.correct = 1;
			numbox0.number = _ansarray[4];
		}
	}
}