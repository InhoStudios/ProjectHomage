/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_bar,0,xx,0);
draw_self();
if(xx < room_width * 3){
	xx += 15;
} else {
	xx = -250;
}