/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C5D1BAE
/// @DnDArgument : "code" "lifetime -= 1;$(13_10)if (lifetime < 0){$(13_10)	instance_destroy();$(13_10)}$(13_10)"
lifetime -= 1;
if (lifetime < 0){
	instance_destroy();
}