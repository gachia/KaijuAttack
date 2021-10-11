/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 634DE183
/// @DnDArgument : "code" "if instance_exists(obj_Kaiju) {$(13_10)	if (obj_Kaiju.growth_status == "Strong") {$(13_10)		direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);$(13_10)		image_angle = direction - 90;$(13_10)		speed = 0.4;$(13_10)		if (abs(x-obj_Kaiju.x)<=180 and abs(y-obj_Kaiju.y)<=180$(13_10)		and (abs(x-obj_Kaiju.x)>= 70 or abs(y-obj_Kaiju.y)>= 70)) {$(13_10)		firingDelay = firingDelay - 1;$(13_10)		if (firingDelay < 0){$(13_10)			firingDelay = 80;$(13_10)			with (instance_create_layer(x,y,"Bullet_Instances", obj_Bullet)){$(13_10)				speed = 1.6;$(13_10)				direction = other.image_angle + 90;$(13_10)				image_angle = direction; $(13_10)			}$(13_10)		}$(13_10)		}$(13_10)	}$(13_10)}"
if instance_exists(obj_Kaiju) {
	if (obj_Kaiju.growth_status == "Strong") {
		direction = point_direction(x,y,obj_Kaiju.x + 5, obj_Kaiju.y + 5);
		image_angle = direction - 90;
		speed = 0.4;
		if (abs(x-obj_Kaiju.x)<=180 and abs(y-obj_Kaiju.y)<=180
		and (abs(x-obj_Kaiju.x)>= 70 or abs(y-obj_Kaiju.y)>= 70)) {
		firingDelay = firingDelay - 1;
		if (firingDelay < 0){
			firingDelay = 80;
			with (instance_create_layer(x,y,"Bullet_Instances", obj_Bullet)){
				speed = 1.6;
				direction = other.image_angle + 90;
				image_angle = direction; 
			}
		}
		}
	}
}