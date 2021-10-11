// Camera Code
if (x >= room_width-16) x = room_width-16;
if (y >= room_height-16) y = room_height-16;

// Movement Code
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
keyAttack1 = keyboard_check_pressed(vk_space);


inputDirection = point_direction(0, 0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight-keyLeft != 0) || (keyDown - keyUp != 0);

// Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

// Rotation
if(keyLeft && keyUp){
	image_angle = 225;
}else if(keyLeft && keyDown){
	image_angle = 315;
}else if(keyRight && keyUp){
	image_angle = 135;
}else if(keyRight && keyDown){
	image_angle = 45;
}else if(keyLeft){
	image_angle = 270;
}else if(keyRight){
	image_angle = 90;
}else if(keyUp){
	image_angle = 180;
}else if(keyDown){
	image_angle = 0;
}

// Attack 1: Fire Breath
firingDelay -= 1;
if(growth_stage >= 1){
	if (keyAttack1){
		if (firingDelay < 0){
			var _xx = x + lengthdir_x(40, image_angle-90);
			var _yy = y + lengthdir_y(40, image_angle-90);
			with(instance_create_layer(_xx, _yy, "Instances", obj_FireBreath)){
				direction = other.image_angle;
				image_angle = direction - 90;
				hspeed = other.hSpeed;
				vspeed = other.vSpeed;
			}
			firingDelay = 35;
		}
	}
}

// Sliding wall
if(place_meeting(x + hSpeed + 2, y, obj_Wall)){
	hSpeed = 0;
}
else if(place_meeting(x + hSpeed - 2, y, obj_Wall)){
	hSpeed = 0;
}

if(place_meeting(x, y + vSpeed + 2, obj_Wall)){
    vSpeed = 0;
}
else if(place_meeting(x, y + vSpeed - 2, obj_Wall)){
    vSpeed = 0;
}
x += hSpeed;
y += vSpeed;
 