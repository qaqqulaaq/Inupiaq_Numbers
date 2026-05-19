
timer++

for (var i = 0; i < array_length(times); i++){
	if timer == times[i]+90{
	
			var _snd;
			if i < 9 _snd = "snd_0" + string(i+1)+"_nsc"
			else _snd = "snd_" + string(i+1)+"_nsc"
			_snd = asset_get_index(_snd)
			audio_play_sound(_snd,1,false)
		}
		
}

//if timer == 90 