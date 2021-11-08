if(!isInstrPlayed){
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_roundrect(160,140,670,180,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(170, 150, "I need to eat 15 citizens to become my strongest.");
}

draw_sprite(EscapeKey, 0, 20, 550);
draw_set_color(c_white);
if(instance_exists(obj_PauseMenu)){
	draw_text(60, 555, "to Resume");
}else{
	draw_text(60, 555, "to Pause");
}