/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F39804C
/// @DnDArgument : "code" "draw_set_alpha(0.5);$(13_10)draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);$(13_10)draw_set_alpha(1);"
draw_set_alpha(0.5);
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3B7DA264
/// @DnDArgument : "font" "HeaderFont"
/// @DnDSaveInfo : "font" "HeaderFont"
draw_set_font(HeaderFont);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1378FC19
/// @DnDArgument : "color" "$FFCCC500"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFCCC500 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 01E91DC2
/// @DnDArgument : "x" "290"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "caption" ""Paused""
draw_text_transformed(290, 100, string("Paused") + "", 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4160D5E5
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);