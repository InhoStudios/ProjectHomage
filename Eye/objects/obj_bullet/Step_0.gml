/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_wall) && mercy <= 0) {
	if(alarm[0] <= 0){
		alarm[0] = 5;
	}
	hsp = -hsp;
	vsp = -vsp;
}else{
	mercy--;
}

if(count <= 0){
	var left = instance_create_layer(x,y,layer,obj_soundwaves);
	left.dir = dir - 90;
	var right = instance_create_layer(x,y,layer,obj_soundwaves);
	right.dir = dir + 90;
} else {
	count--;
}

x += hsp;
y += vsp;