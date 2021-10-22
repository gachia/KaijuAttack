/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 280AE205
/// @DnDComment : Alarm 3 is for changing back the view$(13_10)from Hero to Player
/// @DnDArgument : "code" "view_visible[1] = false;$(13_10)view_visible[0] = true;$(13_10)$(13_10)instance_activate_all();"
view_visible[1] = false;
view_visible[0] = true;

instance_activate_all();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04D16932
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "growth_stage"
growth_stage = 5;