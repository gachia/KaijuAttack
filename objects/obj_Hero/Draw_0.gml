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
	if(chargingLaserTimer < 180){
		draw_line_color(x,y, obj_Kaiju.x, obj_Kaiju.y, c_red, c_red);
		_tempx = obj_Kaiju.x;
		_tempy = obj_Kaiju.y;
	}else{
		draw_line_color(x,y, _tempx, _tempy, c_red, c_red);
	}
}