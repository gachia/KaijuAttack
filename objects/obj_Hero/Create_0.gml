/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02A65F7D
/// @DnDArgument : "var" "image_speed"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0F6EC7C6
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "isShootingBall"
isShootingBall = false;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DE14875
/// @DnDArgument : "code" "enum heroStates{$(13_10)	initial,$(13_10)	idle,$(13_10)	moveLeft,$(13_10)	moveRight,$(13_10)	shootBall,$(13_10)	shootLaser$(13_10)}$(13_10)$(13_10)state = heroStates.initial;$(13_10)stateTimer = 120;$(13_10)$(13_10)var _xx = x;$(13_10)var _yy = y;"
enum heroStates{
	initial,
	idle,
	moveLeft,
	moveRight,
	shootBall,
	shootLaser
}

state = heroStates.initial;
stateTimer = 120;

var _xx = x;
var _yy = y;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3CFA241A
/// @DnDArgument : "steps" "160"
alarm_set(0, 160);