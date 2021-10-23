if (recently_hit){
	if (counter mod 5 == 0){
		image_alpha = 1;
		draw_self();
	}else {
		image_alpha = 0;
		draw_self();
	}
	image_alpha = 1;
}else {
	draw_self();
}

if (instance_exists(obj_Kaiju) && state==heroStates.shootLaser && !isChargedLaser){
	draw_line_color(x,y, obj_Kaiju.x, obj_Kaiju.y, c_red, c_red);
}