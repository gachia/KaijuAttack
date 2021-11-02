// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function onResume() 
{
	instance_destroy(obj_PauseMenu);
	instance_destroy(obj_Button);
	instance_activate_all();
}