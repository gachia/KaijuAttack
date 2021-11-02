/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 611F9436
/// @DnDArgument : "expr" "recently_hit"
/// @DnDArgument : "not" "1"
if(!(recently_hit))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03101268
	/// @DnDParent : 611F9436
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "h_lives"
	h_lives += -1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 78C854D0
	/// @DnDParent : 611F9436
	/// @DnDArgument : "soundid" "sound_HeroDamage"
	/// @DnDSaveInfo : "soundid" "sound_HeroDamage"
	audio_play_sound(sound_HeroDamage, 0, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32275071
	/// @DnDParent : 611F9436
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
		/// @DnDArgument : "layer" ""Menu_Instances""
		/// @DnDSaveInfo : "objectid" "obj_WinMenu"
		instance_create_layer(0, 0, "Menu_Instances", obj_WinMenu);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 305E46BF
	/// @DnDParent : 611F9436
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "recently_hit"
	recently_hit = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 582E075A
	/// @DnDParent : 611F9436
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);
}