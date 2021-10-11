/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7AAB3583
/// @DnDArgument : "soundid" "sound_TakenDamage"
/// @DnDSaveInfo : "soundid" "sound_TakenDamage"
audio_play_sound(sound_TakenDamage, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E4C41FC
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "p_lives"
p_lives += -1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 014C08DF
/// @DnDArgument : "msg" "p_lives"
show_debug_message(string(p_lives));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A42B814
/// @DnDArgument : "var" "p_lives"
/// @DnDArgument : "op" "3"
if(p_lives <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5AA373FC
	/// @DnDParent : 3A42B814
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 66C1E2A8
	/// @DnDParent : 3A42B814
	/// @DnDArgument : "objectid" "obj_LoseMenu"
	/// @DnDSaveInfo : "objectid" "obj_LoseMenu"
	instance_create_layer(0, 0, "Instances", obj_LoseMenu);
}