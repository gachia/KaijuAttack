var _width = 300;
var _height = 100;

createButton(250, 250, _width, _height, "Restart", onRestart);

createButton(250, 250+_height+40, _width, _height, "Exit", onExit);

if(instance_exists(HeliSpawner)){
	instance_destroy(HeliSpawner);
	instance_destroy(Heli);
	instance_destroy(obj_BulletBase);
	instance_destroy(obj_TankBase);
}