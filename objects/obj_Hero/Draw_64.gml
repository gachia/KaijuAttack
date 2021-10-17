/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5952D30C
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Boss: ""
draw_text(10, 10, string("Boss: ") + "");

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 7B25AB7A
/// @DnDArgument : "cond" "i < h_lives"
for(i = 0; i < h_lives; i += 1) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BA0D51C
	/// @DnDParent : 7B25AB7A
	/// @DnDArgument : "var" "_xx"
	/// @DnDArgument : "value" "60+(i*30)"
	var _xx = 60+(i*30);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3E618528
	/// @DnDParent : 7B25AB7A
	/// @DnDArgument : "x" "_xx"
	/// @DnDArgument : "y" "10"
	/// @DnDArgument : "sprite" "Heart"
	/// @DnDSaveInfo : "sprite" "Heart"
	draw_sprite(Heart, 0, _xx, 10);
}