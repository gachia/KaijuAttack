/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B3E9361
/// @DnDComment : Alarm 0 changes to growth_stage 3 to draw warning message
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "growth_stage"
growth_stage = 3;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 50824D94
/// @DnDComment : Set Alarm 1 which starts the boss battle
/// @DnDArgument : "steps" "750"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 750);