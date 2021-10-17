/*
if(isShootingBall){
	if instance_exists(obj_Kaiju) {
		image_index = 2;
		direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);
		image_angle = direction + 90;
	
		firingDelay = firingDelay - 1;
		if (firingDelay < 0){
			firingDelay = 60;
			image_index = 3;
			with (instance_create_layer(x,y,"Bullet_Instances", obj_HeliBullet)){
				speed = 3.0;
				direction = other.image_angle - 90;
				image_angle = direction; 
			}
			audio_play_sound(sound_HeroBall,0,false);
			ammo -= 1;
		}

		if (ammo <= 0){
			ammo = 4;
			isShootingBall = false;
		}
	}
}
*/