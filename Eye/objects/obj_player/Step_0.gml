/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W"));

m_left = mouse_check_button_pressed(mb_left);

hsp = movespeed * (key_right - key_left);

if(place_meeting(x,y + 1, obj_wall)) {
    vsp = -jumpspeed * key_jump;
	if(hsp != 0){
		if(counter >= 0){
			counter--;
		} else {
			var step = instance_create_layer(x,y,layer,obj_particle);
			audio_play_sound(snd_hit,9,false);
			step.image_xscale = 1.3;
			counter = reset;
		}
	}

} else {
	landed = false;
	}

if(vsp <= 12) {
    vsp += grav;
}


if(place_meeting(x + hsp, y, obj_wall)) {
    while(!place_meeting(x + sign(hsp), y, obj_wall)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

if(place_meeting(x,y + vsp, obj_wall)) {
	if(!landed){
		landed = true;
		var step = instance_create_layer(x,y + 16,layer,obj_particle);
		step.image_xscale = 1.5;
		step.image_yscale = 1.3;
		audio_play_sound(snd_hit,11,false);
	}
    while(!place_meeting(x, y + sign(vsp), obj_wall)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

if(m_left && enabled){
	var bul = instance_create_layer(x,y,layer,obj_bullet);
	enabled = !enabled;
	alarm[0] = time;
	audio_play_sound(snd_shoot,10,false);
}