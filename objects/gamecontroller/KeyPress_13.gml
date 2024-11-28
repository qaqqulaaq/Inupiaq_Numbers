/// @description Insert description here
// You can write your code in this editor

if clear_timer <= 0{
	
	clear_timer = 180;

	
	if setnumber = totalAmount and room == number_conversions {
		question.say = "ARRIGAA!"
		if array_length(prev_array) > 15 array_delete(prev_array,0,3);
		array_push(prev_array,totalAmount);
		//points += 1;
	}	
		
	
	else{
		question.say = "Naumi."
		_ansarray = [totalAmount div 160000, (totalAmount % 160000) div 8000, (totalAmount % 8000) div 400, (totalAmount % 400) div 20, (totalAmount % 20)]
	
		if instance_exists(numbox4){
			if _ansarray[0] != numbox4.number{
				numbox4.correct = 1
				numbox4.number = _ansarray[0]
			}
		}
		
		if instance_exists(numbox3){
			if _ansarray[1] != numbox3.number{
				numbox3.correct = 1
				numbox3.number = _ansarray[1]
			}
		}
		
		if instance_exists(numbox2){		
			if _ansarray[2] != numbox2.number{
				numbox2.correct = 1
				numbox2.number = _ansarray[2]
			}	
		}
		
		if instance_exists(numbox1){
			if _ansarray[3] != numbox1.number{
				numbox1.correct = 1
				numbox1.number = _ansarray[3]
			}
		}
		
		if _ansarray[4] != numbox0.number{
			numbox0.correct = 1
			numbox0.number = _ansarray[4]
		}
	
	
	}
}

else clear_timer = 1