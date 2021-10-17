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
/// @DnDArgument : "code" "if (growth == 7 or growth == 8) {$(13_10)	draw_set_alpha(0.5);$(13_10)	draw_set_color(c_black);$(13_10)	draw_rectangle(140,140,700,220,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)	draw_text(150, 150, "You have grown stronger!\nPress the Space Bar to use Fire Breath on the pesky Tanks!\nCAUTION: Helicopter is coming!");$(13_10)}$(13_10)if(growth_stage == 2){$(13_10)	draw_set_alpha(0.5);$(13_10)	draw_set_color(c_black);$(13_10)	draw_rectangle(190,90,600,200,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)	draw_text(200,100, "You have attain maximum power!\nYou can now move anywhere you please!\nYour Fire Breath has evolved into Fireball!\nUse it to destroy everything!");$(13_10)}$(13_10)$(13_10)if(growth_stage == 3){$(13_10)	draw_set_alpha(0.5);$(13_10)	draw_set_color(c_black);$(13_10)	draw_rectangle(240,90,620,150,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)	draw_text(250,100, "WARNING! A HERO IS COMING TO STOP YOU!\nDEFEAT THEM TO UNLEASH ULTIMATE TERROR!");$(13_10)}$(13_10)$(13_10)// when boss spawns (dialogue)$(13_10)if(growth_stage == 4){$(13_10)	draw_set_alpha(0.5);$(13_10)	draw_set_color(c_black);$(13_10)	draw_rectangle(260,330,550,390,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)	draw_text(270,350, "I'M HERE TO STOP YOU, MONSTER!");$(13_10)}$(13_10)$(13_10)$(13_10)"
if (growth == 7 or growth == 8) {
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(140,140,700,220,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(150, 150, "You have grown stronger!\nPress the Space Bar to use Fire Breath on the pesky Tanks!\nCAUTION: Helicopter is coming!");
}
if(growth_stage == 2){
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(190,90,600,200,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(200,100, "You have attain maximum power!\nYou can now move anywhere you please!\nYour Fire Breath has evolved into Fireball!\nUse it to destroy everything!");
}

if(growth_stage == 3){
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(240,90,620,150,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(250,100, "WARNING! A HERO IS COMING TO STOP YOU!\nDEFEAT THEM TO UNLEASH ULTIMATE TERROR!");
}

// when boss spawns (dialogue)
if(growth_stage == 4){
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(260,330,550,390,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(270,350, "I'M HERE TO STOP YOU, MONSTER!");
}