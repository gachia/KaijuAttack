// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createButton(x, y, width, height, text, script) 
{
	var _x = x;
	var _y = y;
	var _width = width;
	var _height = height;
	var _text = text;
	var _script = script;
	
	// Create Button
	var _button = instance_create_layer(_x, _y, "Instances", obj_Button);
	
	// Set Values
	_button.width = _width;
	_button.height = _height;
	_button.text = text;
	_button.script = _script;
	
	return _button;
}