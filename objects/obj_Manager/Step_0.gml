if(!isInstrPlayed){
	objectiveTimer -= 1;
	if (objectiveTimer <= 0){
		isInstrPlayed = true;
	}
}

keyPause = keyboard_check_pressed(vk_escape);

if(keyPause){
	if(!instance_exists(obj_PauseMenu)){
		instance_deactivate_all(true);
		instance_create_layer(x,y,"Menu_Instances",obj_PauseMenu);
	}else{
		onResume();
	}
}