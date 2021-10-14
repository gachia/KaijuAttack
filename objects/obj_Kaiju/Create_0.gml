/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 292C33DE
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "p_lives"
p_lives = 4;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 716C4A8A
/// @DnDArgument : "var" "gui_w"
/// @DnDArgument : "function" "display_get_gui_width"
gui_w = display_get_gui_width();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C3477CD
/// @DnDArgument : "var" "growth"
growth = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6316255B
/// @DnDArgument : "expr" "15"
/// @DnDArgument : "var" "max_growth"
max_growth = 15;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D1241C7
/// @DnDArgument : "var" "growth_stage"
growth_stage = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44B01934
/// @DnDArgument : "expr" ""Tiny""
/// @DnDArgument : "var" "growth_status"
growth_status = "Tiny";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DFE22C9
/// @DnDArgument : "var" "c_eaten"
c_eaten = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4BB2FB43
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "recently_hit"
recently_hit = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 39634F14
/// @DnDComment : for temporary invincibility usage
/// @DnDArgument : "var" "counter"
counter = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 020C59F3
/// @DnDArgument : "code" "image_speed = 0;$(13_10)hSpeed = 0;$(13_10)vSpeed = 0;$(13_10)speedWalk = 1.0;$(13_10)firingDelay = 0;"
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.0;
firingDelay = 0;