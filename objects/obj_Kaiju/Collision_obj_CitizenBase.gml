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
/// @DnDArgument : "value" "2"
if(growth_stage >= 2)
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
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7EED0A0E
		/// @DnDParent : 1B0E871A
		/// @DnDArgument : "soundid" "sound_HealthRegen"
		/// @DnDSaveInfo : "soundid" "sound_HealthRegen"
		audio_play_sound(sound_HealthRegen, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3991BA27
/// @DnDArgument : "var" "growth"
/// @DnDArgument : "value" "7"
if(growth == 7)
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
	/// @DnDArgument : "xscale" "0.85"
	/// @DnDArgument : "yscale" "0.85"
	image_xscale = 0.85;
	image_yscale = 0.85;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 474687E2
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" "1.4"
	/// @DnDArgument : "var" "speedWalk"
	speedWalk = 1.4;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04D30052
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "var" "p_lives"
	p_lives = 4;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0B7C30F8
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "soundid" "sound_GrowthFirst"
	/// @DnDSaveInfo : "soundid" "sound_GrowthFirst"
	audio_play_sound(sound_GrowthFirst, 0, 0);
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
	/// @DnDArgument : "value" "15"
	if(growth == 15)
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
		/// @DnDArgument : "xscale" "1.5"
		/// @DnDArgument : "yscale" "1.5"
		image_xscale = 1.5;
		image_yscale = 1.5;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B9E80AE
		/// @DnDParent : 73636C47
		/// @DnDArgument : "expr" "1.9"
		/// @DnDArgument : "var" "speedWalk"
		speedWalk = 1.9;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FC1611D
		/// @DnDParent : 73636C47
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "p_lives"
		p_lives = 4;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 381C4867
		/// @DnDParent : 73636C47
		/// @DnDArgument : "soundid" "sound_GrowthSecond"
		/// @DnDSaveInfo : "soundid" "sound_GrowthSecond"
		audio_play_sound(sound_GrowthSecond, 0, 0);
	
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
		/// @DnDArgument : "steps" "750"
		alarm_set(0, 750);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 17F04402
		/// @DnDParent : 73636C47
		/// @DnDArgument : "code" "var wallLayer = layer_get_id("Wall_Instances");$(13_10)layer_destroy(wallLayer);$(13_10)camera_set_view_size(view_camera[0], 800, 700);"
		var wallLayer = layer_get_id("Wall_Instances");
		layer_destroy(wallLayer);
		camera_set_view_size(view_camera[0], 800, 700);
	}
}