/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02076684
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "growth"
growth += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 58B2A07E
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "c_eaten"
c_eaten += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57FDBF8C
/// @DnDArgument : "var" "growth_stage"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "4"
if(growth_stage >= 4)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B0E871A
	/// @DnDParent : 57FDBF8C
	/// @DnDArgument : "var" "p_lives"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "4"
	if(!(p_lives >= 4))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0438943F
		/// @DnDParent : 1B0E871A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "p_lives"
		p_lives += 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3991BA27
/// @DnDArgument : "var" "growth"
/// @DnDArgument : "value" "1"
if(growth == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D20A9BA
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "growth_stage"
	growth_stage = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A74A999
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" ""Large""
	/// @DnDArgument : "var" "growth_status"
	growth_status = "Large";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 203B6928
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" ""Fire Breath""
	/// @DnDArgument : "var" "ability_status"
	ability_status = "Fire Breath";

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3E6B4853
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "xscale" "0.06"
	/// @DnDArgument : "yscale" "0.06"
	image_xscale = 0.06;
	image_yscale = 0.06;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 474687E2
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" "1.3"
	/// @DnDArgument : "var" "speedWalk"
	speedWalk = 1.3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04D30052
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "var" "p_lives"
	p_lives = 4;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5774688A
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73636C47
	/// @DnDParent : 5774688A
	/// @DnDArgument : "var" "growth"
	/// @DnDArgument : "value" "2"
	if(growth == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B2C09E3
		/// @DnDParent : 73636C47
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "growth_stage"
		growth_stage = 2;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3AEC47F6
		/// @DnDParent : 73636C47
		/// @DnDArgument : "expr" ""KAIJU""
		/// @DnDArgument : "var" "growth_status"
		growth_status = "KAIJU";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70F16132
		/// @DnDParent : 73636C47
		/// @DnDArgument : "expr" ""Fireball""
		/// @DnDArgument : "var" "ability_status"
		ability_status = "Fireball";
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 740DB870
		/// @DnDParent : 73636C47
		/// @DnDArgument : "xscale" "0.1"
		/// @DnDArgument : "yscale" "0.1"
		image_xscale = 0.1;
		image_yscale = 0.1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B9E80AE
		/// @DnDParent : 73636C47
		/// @DnDArgument : "expr" "1.8"
		/// @DnDArgument : "var" "speedWalk"
		speedWalk = 1.8;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FC1611D
		/// @DnDParent : 73636C47
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "p_lives"
		p_lives = 4;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5A7BF6AF
		/// @DnDParent : 73636C47
		/// @DnDArgument : "xpos" "900"
		/// @DnDArgument : "ypos" "50"
		/// @DnDArgument : "objectid" "HeliSpawner"
		/// @DnDArgument : "layer" ""Heli_Instances""
		/// @DnDSaveInfo : "objectid" "HeliSpawner"
		instance_create_layer(900, 50, "Heli_Instances", HeliSpawner);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0B9B0761
		/// @DnDParent : 73636C47
		/// @DnDArgument : "steps" "450"
		alarm_set(0, 450);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 17F04402
		/// @DnDParent : 73636C47
		/// @DnDArgument : "code" "var wallLayer = layer_get_id("Wall_Instances");$(13_10)layer_destroy(wallLayer);$(13_10)camera_set_view_size(view_camera[0], 600, 500);"
		var wallLayer = layer_get_id("Wall_Instances");
		layer_destroy(wallLayer);
		camera_set_view_size(view_camera[0], 600, 500);
	}
}