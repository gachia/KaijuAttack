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
/// @DnDHash : 3991BA27
/// @DnDArgument : "var" "growth"
/// @DnDArgument : "value" "10"
if(growth == 10)
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
	/// @DnDArgument : "expr" ""Strong""
	/// @DnDArgument : "var" "growth_status"
	growth_status = "Strong";

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3E6B4853
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "xscale" "0.07"
	/// @DnDArgument : "yscale" "0.07"
	image_xscale = 0.07;
	image_yscale = 0.07;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 474687E2
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" "1.2"
	/// @DnDArgument : "var" "speedWalk"
	speedWalk = 1.2;

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
	/// @DnDArgument : "value" "20"
	if(growth == 20)
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
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 740DB870
		/// @DnDDisabled : 1
		/// @DnDParent : 73636C47
		/// @DnDArgument : "xscale" "0.1"
		/// @DnDArgument : "yscale" "0.1"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B9E80AE
		/// @DnDParent : 73636C47
		/// @DnDArgument : "expr" "1.6"
		/// @DnDArgument : "var" "speedWalk"
		speedWalk = 1.6;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FC1611D
		/// @DnDParent : 73636C47
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "p_lives"
		p_lives = 4;
	}
}