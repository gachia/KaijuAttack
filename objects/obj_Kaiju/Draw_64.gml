/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 03E5CEFF
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2CFC304B
/// @DnDArgument : "code" "draw_set_alpha(0.5);$(13_10)draw_set_color(c_black);$(13_10)draw_roundrect(600,5,790,90,false);$(13_10)draw_set_alpha(1.0);"
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_roundrect(600,5,790,90,false);
draw_set_alpha(1.0);

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
	/// @DnDArgument : "value" "gui_w-130+(i*30)"
	var _xx = gui_w-130+(i*30);

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
/// @DnDDisabled : 1
/// @DnDArgument : "code" "var pc;$(13_10)pc = (growth/max_growth) * 100;$(13_10)draw_healthbar(670,40,785,50,pc,c_white, c_green, c_red, 0, true, false);"


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 01646344
/// @DnDDisabled : 1
/// @DnDArgument : "x" "550"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Size: ""
/// @DnDArgument : "var" "growth_status"


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 175B85DB
/// @DnDDisabled : 1
/// @DnDArgument : "x" "610"
/// @DnDArgument : "y" "34"
/// @DnDArgument : "caption" ""Power: ""


/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 66D7B2DF
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 468606BE
/// @DnDArgument : "x" "610"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Lives: ""
draw_text(610, 10, string("Lives: ") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5CFC83B5
/// @DnDArgument : "x" "610"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "caption" ""Ability: ""
/// @DnDArgument : "var" "ability_status"
draw_text(610, 40, string("Ability: ") + string(ability_status));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CE76D35
/// @DnDArgument : "var" "growth_stage"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "5"
if(growth_stage < 5)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4F606C8B
	/// @DnDParent : 7CE76D35
	/// @DnDArgument : "x" "610"
	/// @DnDArgument : "y" "65"
	/// @DnDArgument : "caption" ""Citizens Eaten: ""
	/// @DnDArgument : "var" "c_eaten"
	draw_text(610, 65, string("Citizens Eaten: ") + string(c_eaten));
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 544E9332
/// @DnDArgument : "code" "if (isFirstDiagUp) {$(13_10)	draw_set_alpha(0.3);$(13_10)	draw_set_color(c_black);$(13_10)	draw_rectangle(260,140,580,220,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)	draw_text(270, 150, "You have grown stronger.\nFire Breath attack unlocked.\nCAUTION: A Helicopter is coming.");$(13_10)}$(13_10)if(growth_stage == 2){$(13_10)	draw_set_alpha(0.3);$(13_10)	draw_set_color(c_black);$(13_10)	draw_rectangle(280,90,560,180,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)	draw_text(290,100, "Maximum power achieved.\nFireball attack unlocked.\nUse it to destroy everything.");$(13_10)}$(13_10)$(13_10)if(growth_stage == 3){$(13_10)	draw_set_alpha(0.3);$(13_10)	draw_set_color(c_black);$(13_10)	draw_rectangle(220,110,630,190,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)	draw_text(360,120, "WARNING");$(13_10)	draw_text(230,140, "A HERO IS APPROACHING IN 15 SECONDS.");$(13_10)	draw_text(320,160, "PREPARE YOURSELF.");$(13_10)}$(13_10)$(13_10)// when boss spawns (dialogue)$(13_10)if(growth_stage == 4){$(13_10)	draw_set_alpha(0.5);$(13_10)	draw_set_color(c_black);$(13_10)	draw_roundrect(140,340,680,410,false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_set_color(c_white);$(13_10)	draw_text(240,350, "I'M HERE TO STOP YOU, MONSTER.");$(13_10)	draw_text(150,370, "DON'T TRY TO EAT MORE CITIZENS TO REGAIN HEALTH");$(13_10)}$(13_10)$(13_10)$(13_10)"
if (isFirstDiagUp) {
	draw_set_alpha(0.3);
	draw_set_color(c_black);
	draw_rectangle(260,140,580,220,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(270, 150, "You have grown stronger.\nFire Breath attack unlocked.\nCAUTION: A Helicopter is coming.");
}
if(growth_stage == 2){
	draw_set_alpha(0.3);
	draw_set_color(c_black);
	draw_rectangle(280,90,560,180,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(290,100, "Maximum power achieved.\nFireball attack unlocked.\nUse it to destroy everything.");
}

if(growth_stage == 3){
	draw_set_alpha(0.3);
	draw_set_color(c_black);
	draw_rectangle(220,110,630,190,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(360,120, "WARNING");
	draw_text(230,140, "A HERO IS APPROACHING IN 15 SECONDS.");
	draw_text(320,160, "PREPARE YOURSELF.");
}

// when boss spawns (dialogue)
if(growth_stage == 4){
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_roundrect(140,340,680,410,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(240,350, "I'M HERE TO STOP YOU, MONSTER.");
	draw_text(150,370, "DON'T TRY TO EAT MORE CITIZENS TO REGAIN HEALTH");
}