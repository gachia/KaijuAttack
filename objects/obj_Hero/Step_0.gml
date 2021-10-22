// Temporary Invincibility
counter++;
if (counter == 1000) counter = 0;

// 
switch (state){
	case heroStates.initial:
		//do nothing and wait for alarm 0 (cutscene)
		break;
	case heroStates.idle:
		if(x > 480){
			state = heroStates.moveLeft;
		}else{
			state = heroStates.moveRight;
		}
		break;
	case heroStates.moveLeft:
		image_index = 1;
		image_angle = -90;
		x = lerp(obj_Hero.x, targetLeft, 0.05);

		stateTimer -= 1;
		if(stateTimer <= 0){
			stateTimer = 120;
			state = heroStates.shootBall;
		}
		break;
	case heroStates.moveRight:
		image_index = 1;
		image_angle = 90;
		x = lerp(obj_Hero.x, targetRight, 0.05);
		
		stateTimer -= 1;
		if(stateTimer <= 0){
			stateTimer = 120;
			state = heroStates.shootBall;
		}
		break;
	case heroStates.shootBall:
		if instance_exists(obj_Kaiju) {
		if(!isCharged){
			image_index = 2;
		}
		direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);
		image_angle = direction + 90;
	
		firingDelay = firingDelay - 1;
		if (firingDelay < 0){
			isCharged = true;
			firingDelay = 210;
			image_index = 3;
			with (instance_create_layer(x,y,"Bullet_Instances", obj_EnergyBall)){
				speed = 3.0;
				direction = other.image_angle - 45;
				image_angle = direction; 
			}
			with (instance_create_layer(x,y,"Bullet_Instances", obj_EnergyBall)){
				speed = 3.0;
				direction = other.image_angle - 90;
				image_angle = direction; 
			}
			with (instance_create_layer(x,y,"Bullet_Instances", obj_EnergyBall)){
				speed = 3.0;
				direction = other.image_angle - 135;
				image_angle = direction; 
			}
			audio_play_sound(sound_HeroBall,0,false);
			ammo -= 1;
		}

		if (ammo <= 0){
			isCharged = false;
			ammo = 5;
			state = heroStates.idle;
		}
		break;
	}
}

/*
if(!isShootingBall){
	if(x < 480){
		image_index = 1;
		image_angle = 90;
		x = lerp(obj_Hero.x, targetRight, 0.1);
		if(x >= targetRight-5){
			isShootingBall = true;
		}
	}else{
		image_index = 1;
		image_angle = -90;
		x = lerp(obj_Hero.x, targetLeft, 0.1);
		if(x <= targetLeft+5){
			isShootingBall = true;
		}
	}
}
*/

