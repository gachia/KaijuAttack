/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1378FC19
/// @DnDArgument : "color" "$FF00FF00"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF00FF00 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0E039847
/// @DnDArgument : "x" "280"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""Instructions""
draw_text_transformed(280, 50, string("Instructions") + "", 2, 2, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5DDC8A02
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 01E91DC2
/// @DnDArgument : "x" "150"
/// @DnDArgument : "y" "150"
/// @DnDArgument : "caption" ""Arrow keys - Movement""
draw_text_transformed(150, 150, string("Arrow keys - Movement") + "", 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1DF45661
/// @DnDArgument : "x" "150"
/// @DnDArgument : "y" "200"
/// @DnDArgument : "caption" ""Space - Use Ability (when unlocked)""
draw_text_transformed(150, 200, string("Space - Use Ability (when unlocked)") + "", 1, 1, 0);