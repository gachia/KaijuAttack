/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1C60A9FB
/// @DnDArgument : "expr" "recently_hit"
/// @DnDArgument : "not" "1"
if(!(recently_hit))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6BB21066
	/// @DnDParent : 1C60A9FB
	/// @DnDArgument : "soundid" "sound_TakenDamage"
	/// @DnDSaveInfo : "soundid" "sound_TakenDamage"
	audio_play_sound(sound_TakenDamage, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B945216
	/// @DnDParent : 1C60A9FB
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "p_lives"
	p_lives += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1482AB82
	/// @DnDParent : 1C60A9FB
	/// @DnDArgument : "var" "p_lives"
	/// @DnDArgument : "op" "3"
	if(p_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3926FD83
		/// @DnDParent : 1482AB82
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5C9A2923
		/// @DnDParent : 1482AB82
		/// @DnDArgument : "objectid" "obj_LoseMenu"
		/// @DnDArgument : "layer" ""Menu_Instances""
		/// @DnDSaveInfo : "objectid" "obj_LoseMenu"
		instance_create_layer(0, 0, "Menu_Instances", obj_LoseMenu);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A4D0748
	/// @DnDParent : 1C60A9FB
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "recently_hit"
	recently_hit = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5E3F8534
	/// @DnDParent : 1C60A9FB
	/// @DnDArgument : "steps" "75"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 75);
}