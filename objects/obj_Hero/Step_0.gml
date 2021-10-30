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
			stateTimer = 150;
			show_debug_message(laserCountdown);
			if(laserCountdown <= 0){
				state = heroStates.shootLaser;
				audio_play_sound(sound_HeroCharging, 1, true);
			}else{
				state = heroStates.shootBall;
			}
		}
		break;
	case heroStates.moveRight:
		image_index = 1;
		image_angle = 90;
		x = lerp(obj_Hero.x, targetRight, 0.05);
		
		stateTimer -= 1;
		if(stateTimer <= 0){
			stateTimer = 150;
			show_debug_message(laserCountdown);
			if(laserCountdown <= 0){
				state = heroStates.shootLaser;
				audio_play_sound(sound_HeroCharging, 1, true);
			}else{
				state = heroStates.shootBall;
			}
		}
		break;
	case heroStates.shootBall:
		if instance_exists(obj_Kaiju) {
			if(!isChargedBall){
				image_index = 2;
			}
			direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);
			image_angle = direction + 90;
	
			firingDelay = firingDelay - 1;
			if (firingDelay < 0){
				isChargedBall = true;
				firingDelay = 180;
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
				isChargedBall = false;
				ammo = 3;
				laserCountdown--;
				state = heroStates.idle;
			}
		}
		break;
		case heroStates.shootLaser:
			if instance_exists(obj_Kaiju) {
				if(isChargedLaser){
					image_index = 4;
					_xx = _xx + lengthdir_x(15, image_angle-90);
					_yy = _yy + lengthdir_y(15, image_angle-90);
					with(instance_create_layer(_xx,_yy, "Hero_Instances", obj_Laser)){
						direction = other.image_angle;
						image_angle = direction;
					}
					laserTimer++;
					if(laserTimer > 90){
						laserTimer = 0;
						laserCountdown = 2;
						instance_destroy(obj_Laser);
						isChargedLaser = false;
						audio_stop_sound(sound_HeroLaser);
						state = heroStates.idle;
					}
				}else{
					//tracking
					image_index = 2;
					chargingLaserTimer++;
					if(chargingLaserTimer < 180){
						direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);
						image_angle = direction + 90;
					}
					_xx = x;
					_yy = y;
					if(chargingLaserTimer > 210){
						chargingLaserTimer = 0;
						isChargedLaser = true;
						audio_stop_sound(sound_HeroCharging);
						audio_play_sound(sound_HeroLaser, 1, false);
					}
				}
			}
			break;
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

