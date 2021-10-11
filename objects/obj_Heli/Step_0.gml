/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 634DE183
/// @DnDArgument : "code" "if instance_exists(obj_Kaiju) {$(13_10)	if (obj_Kaiju.growth_stage >= 1) {$(13_10)		dist = point_distance(x, y, obj_Kaiju.x, obj_Kaiju.y);$(13_10)		if(ammo > 0){$(13_10)			if (dist >= distRange) {$(13_10)				direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);$(13_10)				image_angle = direction - 90;$(13_10)				speed = 0.7;$(13_10)			}else{$(13_10)				direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);$(13_10)				image_angle = direction - 90;$(13_10)				speed = 0.0;$(13_10)			}$(13_10)			if (dist <= firingRange) {$(13_10)				firingDelay = firingDelay - 1;$(13_10)				if (firingDelay < 0){$(13_10)					firingDelay = 120;$(13_10)					with (instance_create_layer(x,y,"Bullet_Instances", obj_HeliBullet)){$(13_10)						speed = 3.0;$(13_10)						direction = other.image_angle + 90;$(13_10)						image_angle = direction; $(13_10)					}$(13_10)					ammo -= 1;$(13_10)				}$(13_10)			}$(13_10)		}else{$(13_10)			speed = 0.0;$(13_10)			reloadDelay -= 1;$(13_10)			if (reloadDelay < 0){$(13_10)				reloadDelay = 240;$(13_10)				ammo = 2;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}"
if instance_exists(obj_Kaiju) {
	if (obj_Kaiju.growth_stage >= 1) {
		dist = point_distance(x, y, obj_Kaiju.x, obj_Kaiju.y);
		if(ammo > 0){
			if (dist >= distRange) {
				direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);
				image_angle = direction - 90;
				speed = 0.7;
			}else{
				direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);
				image_angle = direction - 90;
				speed = 0.0;
			}
			if (dist <= firingRange) {
				firingDelay = firingDelay - 1;
				if (firingDelay < 0){
					firingDelay = 120;
					with (instance_create_layer(x,y,"Bullet_Instances", obj_HeliBullet)){
						speed = 3.0;
						direction = other.image_angle + 90;
						image_angle = direction; 
					}
					ammo -= 1;
				}
			}
		}else{
			speed = 0.0;
			reloadDelay -= 1;
			if (reloadDelay < 0){
				reloadDelay = 240;
				ammo = 2;
			}
		}
	}
}