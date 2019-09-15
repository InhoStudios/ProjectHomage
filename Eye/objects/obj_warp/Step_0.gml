/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)) {
	var half2 = instance_create_layer(x,y,layer,obj_warp_half2);
	half2.toRoom = toRoom;
	instance_destroy();
}