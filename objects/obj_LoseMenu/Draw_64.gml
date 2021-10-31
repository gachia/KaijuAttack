/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3B7DA264
/// @DnDArgument : "font" "HeaderFont"
/// @DnDSaveInfo : "font" "HeaderFont"
draw_set_font(HeaderFont);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1378FC19
/// @DnDArgument : "color" "$FF000066"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000066 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 01E91DC2
/// @DnDArgument : "x" "300"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "caption" ""Defeat""
draw_text_transformed(300, 100, string("Defeat") + "", 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4160D5E5
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);