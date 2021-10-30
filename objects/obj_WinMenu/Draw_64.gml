/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 76B31169
/// @DnDArgument : "font" "HeaderFont"
/// @DnDSaveInfo : "font" "HeaderFont"
draw_set_font(HeaderFont);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1378FC19
/// @DnDArgument : "color" "$FF0000B2"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF0000B2 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 01E91DC2
/// @DnDArgument : "x" "275"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "caption" ""Victory!""
draw_text_transformed(275, 100, string("Victory!") + "", 1, 1, 0);