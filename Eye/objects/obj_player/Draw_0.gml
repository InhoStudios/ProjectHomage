/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(ca);
if(rad <= 30 && rad >= 0){
	draw_circle(cx,cy,rad,true);
	rad+=0.5;
}
if(ca >= 0) ca-= 0.02;
draw_set_alpha(1);
draw_self();