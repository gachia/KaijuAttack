/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 05CB9A2F
/// @DnDArgument : "soundid" "sound_VehicleDestroyed"
/// @DnDSaveInfo : "soundid" "sound_VehicleDestroyed"
audio_play_sound(sound_VehicleDestroyed, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7C5260DF
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_ExplosionVFX"
/// @DnDArgument : "layer" ""Heli_Instances""
/// @DnDSaveInfo : "objectid" "obj_ExplosionVFX"
instance_create_layer(x + 0, y + 0, "Heli_Instances", obj_ExplosionVFX);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 64CEC92C
instance_destroy();