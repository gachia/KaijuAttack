/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 622A2108
/// @DnDArgument : "soundid" "sound_Eat"
/// @DnDSaveInfo : "soundid" "sound_Eat"
audio_play_sound(sound_Eat, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 19B2D9E0
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_BloodVFX"
/// @DnDArgument : "layer" ""Citizen_Instances""
/// @DnDSaveInfo : "objectid" "obj_BloodVFX"
instance_create_layer(x + 0, y + 0, "Citizen_Instances", obj_BloodVFX);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 55D98F51
instance_destroy();