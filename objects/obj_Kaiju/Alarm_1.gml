/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DEDEEE0
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "growth_stage"
growth_stage = 4;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 08FE5374
/// @DnDArgument : "xpos" "470"
/// @DnDArgument : "ypos" "150"
/// @DnDArgument : "var" "hero"
/// @DnDArgument : "objectid" "obj_Hero"
/// @DnDArgument : "layer" ""Hero_Instances""
/// @DnDSaveInfo : "objectid" "obj_Hero"
hero = instance_create_layer(470, 150, "Hero_Instances", obj_Hero);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 460CCB7A
/// @DnDArgument : "code" "//camera_set_view_target(view_camera[1], hero);$(13_10)halfViewWidth = camera_get_view_width(view_camera[1]) / 2;$(13_10)halfViewHeight = camera_get_view_height(view_camera[1]) / 2;$(13_10)$(13_10)camera_set_view_pos(view_camera[1], hero.x - halfViewWidth, hero.y - halfViewHeight);$(13_10)view_visible[0] = false;$(13_10)view_visible[1] = true;"
//camera_set_view_target(view_camera[1], hero);
halfViewWidth = camera_get_view_width(view_camera[1]) / 2;
halfViewHeight = camera_get_view_height(view_camera[1]) / 2;

camera_set_view_pos(view_camera[1], hero.x - halfViewWidth, hero.y - halfViewHeight);
view_visible[0] = false;
view_visible[1] = true;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 42C873BD
/// @DnDArgument : "steps" "150"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 150);