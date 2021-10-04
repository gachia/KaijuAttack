/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 668E5C8B
/// @DnDArgument : "code" "firingDelay = firingDelay - 1;$(13_10)if (firingDelay < 0){$(13_10)	firingDelay = 60;$(13_10)	with (instance_create_layer(x,y,"Bullet_Instances", obj_Bullet)){$(13_10)		speed = 25;$(13_10)		direction = other.image_angle;$(13_10)		image_angle = direction; $(13_10)	}$(13_10)}"
firingDelay = firingDelay - 1;
if (firingDelay < 0){
	firingDelay = 60;
	with (instance_create_layer(x,y,"Bullet_Instances", obj_Bullet)){
		speed = 25;
		direction = other.image_angle;
		image_angle = direction; 
	}
}