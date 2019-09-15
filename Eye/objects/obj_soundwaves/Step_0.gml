/// @description Insert description here
// You can write your code in this editor
hsp = lengthdir_x(movespeed,dir);
vsp = lengthdir_y(movespeed,dir);

x += hsp;
y += vsp;

if(movespeed >= -1){
	movespeed -= movespeed/45;
}

alpha -= 0.05;
if(alpha <= 0) instance_destroy();

if(place_meeting(x,y,obj_wall)) {
	instance_create_layer(x,y,layer,obj_particle);
	instance_destroy();
}


if(place_meeting(x,y,obj_spike)){
	image_blend = c_red;
}