// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_sound(_ind){
	var _snd
	if _ind < 9 _snd = "snd_0" + string(_ind+1)+"_nsc"
	else _snd = "snd_" + string(_ind+1)+"_nsc"
	return asset_get_index(_snd)
}