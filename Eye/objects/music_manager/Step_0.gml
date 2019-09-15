/// @description Insert description here
// You can write your code in this editor
if(audio_sound_get_gain(snd_shoot) <= 0){
	audio_sound_gain(snd_shoot,0.5,0);
}