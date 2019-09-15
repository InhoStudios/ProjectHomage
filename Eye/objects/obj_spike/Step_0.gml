/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	instance_create_layer(obj_player.x + 8,obj_player.y,layer,obj_ghost);
	instance_create_layer(obj_player.x - 8,obj_player.y,layer,obj_ghost);
	with(obj_player) instance_destroy();
	audio_play_sound(snd_death,10,false);
}