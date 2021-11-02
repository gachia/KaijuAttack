/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6601DE70
draw_self();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3B2A1624
/// @DnDArgument : "expr" "isRest"
if(isRest)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 2B6A30A6
	/// @DnDParent : 3B2A1624
	/// @DnDArgument : "font" "Font1"
	/// @DnDSaveInfo : "font" "Font1"
	draw_set_font(Font1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 506C2218
	/// @DnDParent : 3B2A1624
	/// @DnDArgument : "x" "-40"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "35"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.8"
	/// @DnDArgument : "yscale" "0.8"
	/// @DnDArgument : "caption" ""Reloading..""
	draw_text_transformed(x + -40, y + 35, string("Reloading..") + "", 0.8, 0.8, 0);
}