/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 4E5FEAB3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l4E5FEAB3_0 = place_empty(x + 0, y + 0);
if (l4E5FEAB3_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1522B683
	/// @DnDParent : 4E5FEAB3
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_Heli"
	/// @DnDArgument : "layer" ""Heli_Instances""
	/// @DnDSaveInfo : "objectid" "obj_Heli"
	instance_create_layer(x + 0, y + 0, "Heli_Instances", obj_Heli);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3A8DBCBD
	/// @DnDParent : 4E5FEAB3
	/// @DnDArgument : "steps" "1800"
	alarm_set(0, 1800);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2A281342
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7C5D3A76
	/// @DnDParent : 2A281342
	/// @DnDArgument : "steps" "1800"
	alarm_set(0, 1800);
}