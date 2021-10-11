/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 260226B6
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < p_lives"
for(var i = 0; i < p_lives; i += 1) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C1912B2
	/// @DnDParent : 260226B6
	/// @DnDArgument : "var" "_xx"
	/// @DnDArgument : "value" "gui_w-40-(i*30)"
	var _xx = gui_w-40-(i*30);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 589287C9
	/// @DnDParent : 260226B6
	/// @DnDArgument : "x" "_xx"
	/// @DnDArgument : "y" "10"
	/// @DnDArgument : "sprite" "Heart"
	/// @DnDSaveInfo : "sprite" "Heart"
	draw_sprite(Heart, 0, _xx, 10);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5AC6F5EA
/// @DnDArgument : "code" "var pc;$(13_10)pc = (growth/max_growth) * 100;$(13_10)draw_healthbar(670,40,785,50,pc,c_white, c_green, c_red, 0, true, false);"
var pc;
pc = (growth/max_growth) * 100;
draw_healthbar(670,40,785,50,pc,c_white, c_green, c_red, 0, true, false);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 01646344
/// @DnDArgument : "x" "550"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Size: ""
/// @DnDArgument : "var" "growth_status"
draw_text(550, 10, string("Size: ") + string(growth_status));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 175B85DB
/// @DnDArgument : "x" "610"
/// @DnDArgument : "y" "34"
/// @DnDArgument : "caption" ""Power: ""
draw_text(610, 34, string("Power: ") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4F606C8B
/// @DnDArgument : "x" "620"
/// @DnDArgument : "y" "55"
/// @DnDArgument : "caption" ""Citizens Eaten: ""
/// @DnDArgument : "var" "c_eaten"
draw_text(620, 55, string("Citizens Eaten: ") + string(c_eaten));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 544E9332
/// @DnDArgument : "code" "if (growth == 10 or growth == 11) {$(13_10)	draw_text(200, 250, "The Kaiju has grown stronger!\nPress the Space Bar to use Fire Breath on the pesky Tanks!\nCAUTION: Helicopter is coming!");$(13_10)}$(13_10)"
if (growth == 10 or growth == 11) {
	draw_text(200, 250, "The Kaiju has grown stronger!\nPress the Space Bar to use Fire Breath on the pesky Tanks!\nCAUTION: Helicopter is coming!");
}