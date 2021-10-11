/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B945216
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "p_lives"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1482AB82
/// @DnDArgument : "var" "p_lives"
/// @DnDArgument : "op" "3"
if(p_lives <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3926FD83
	/// @DnDParent : 1482AB82
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5C9A2923
	/// @DnDParent : 1482AB82
	/// @DnDArgument : "objectid" "obj_LoseMenu"
	/// @DnDSaveInfo : "objectid" "obj_LoseMenu"
	instance_create_layer(0, 0, "Instances", obj_LoseMenu);
}