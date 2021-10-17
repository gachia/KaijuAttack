/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 03101268
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "h_lives"
h_lives += -1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 78C854D0
/// @DnDArgument : "soundid" "sound_HeroDamage"
/// @DnDSaveInfo : "soundid" "sound_HeroDamage"
audio_play_sound(sound_HeroDamage, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32275071
/// @DnDArgument : "var" "h_lives"
/// @DnDArgument : "op" "3"
if(h_lives <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1679C6DB
	/// @DnDParent : 32275071
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4B471C02
	/// @DnDParent : 32275071
	/// @DnDArgument : "objectid" "obj_WinMenu"
	/// @DnDSaveInfo : "objectid" "obj_WinMenu"
	instance_create_layer(0, 0, "Instances", obj_WinMenu);
}