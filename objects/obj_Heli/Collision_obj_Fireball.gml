/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 47DE749B
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "h_lives"
h_lives += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74BCD1D5
/// @DnDArgument : "var" "h_lives"
if(h_lives == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5580C68A
	/// @DnDParent : 74BCD1D5
	/// @DnDArgument : "soundid" "sound_VehicleDestroyed"
	/// @DnDSaveInfo : "soundid" "sound_VehicleDestroyed"
	audio_play_sound(sound_VehicleDestroyed, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 445D40A9
	/// @DnDParent : 74BCD1D5
	instance_destroy();
}