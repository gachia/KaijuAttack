/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B6FE651
/// @DnDInput : 2
/// @DnDArgument : "var" "_tx"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "_ty"
/// @DnDArgument : "value_1" "y"
var _tx = x;
var _ty = y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4CEE3C3A
/// @DnDInput : 2
/// @DnDArgument : "expr" "xprevious"
/// @DnDArgument : "expr_1" "yprevious"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = xprevious;
y = yprevious;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FE2DD53
/// @DnDInput : 2
/// @DnDArgument : "var" "_dis_x"
/// @DnDArgument : "value" "abs(_tx - x)"
/// @DnDArgument : "var_1" "_dis_y"
/// @DnDArgument : "value_1" "abs(_ty - y)"
var _dis_x = abs(_tx - x);
var _dis_y = abs(_ty - y);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 6804E55D
/// @DnDComment : Move as far as we can in x
/// @DnDArgument : "times" "_dis_x"
repeat(_dis_x)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1CD3BDBB
	/// @DnDParent : 6804E55D
	/// @DnDArgument : "x" "sign(_tx - x)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_Wall"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_Wall"
	var l1CD3BDBB_0 = instance_place(x + sign(_tx - x), y + 0, obj_Wall);
	if (!(l1CD3BDBB_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 799064F3
		/// @DnDParent : 1CD3BDBB
		/// @DnDArgument : "expr" "sign(_tx - x)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += sign(_tx - x);
	}
}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 73699B02
/// @DnDComment : move as far as we can in y
/// @DnDArgument : "times" "_dis_y"
repeat(_dis_y)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1AF4442C
	/// @DnDParent : 73699B02
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sign(_ty - y)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_Wall"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_Wall"
	var l1AF4442C_0 = instance_place(x + 0, y + sign(_ty - y), obj_Wall);
	if (!(l1AF4442C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58668EBB
		/// @DnDParent : 1AF4442C
		/// @DnDArgument : "expr" "sign(_ty - y)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += sign(_ty - y);
	}
}