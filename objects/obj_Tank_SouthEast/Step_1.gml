image_angle = direction - 90;

firingDelay = firingDelay - 1;
if (firingDelay < 0){
	firingDelay = 90;
	with (instance_create_layer(x,y,"Bullet_Instances", obj_Bullet)){
		speed = 1.5;
		direction = other.image_angle + 90;
		image_angle = direction; 
	}
}