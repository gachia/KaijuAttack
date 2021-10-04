/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02076684
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "growth"
growth += 10;

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
/// @DnDArgument : "value" "50"
if(growth == 50)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D20A9BA
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "growth_stage"
	growth_stage += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A74A999
	/// @DnDParent : 3991BA27
	/// @DnDArgument : "expr" ""Strong""
	/// @DnDArgument : "var" "growth_status"
	growth_status = "Strong";
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
	/// @DnDArgument : "value" "100"
	if(growth == 100)
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
	}
}