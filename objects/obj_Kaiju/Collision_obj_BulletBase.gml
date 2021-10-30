/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1473CCC0
/// @DnDArgument : "expr" "recently_hit"
/// @DnDArgument : "not" "1"
if(!(recently_hit))
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0592024C
	/// @DnDParent : 1473CCC0
	/// @DnDArgument : "code" "audio_play_sound(sound_TakenDamage,10,false);"
	audio_play_sound(sound_TakenDamage,10,false);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E4C41FC
	/// @DnDParent : 1473CCC0
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "p_lives"
	p_lives += -1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 014C08DF
	/// @DnDParent : 1473CCC0
	/// @DnDArgument : "msg" "p_lives"
	show_debug_message(string(p_lives));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A42B814
	/// @DnDParent : 1473CCC0
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
		/// @DnDArgument : "layer" ""Menu_Instances""
		/// @DnDSaveInfo : "objectid" "obj_LoseMenu"
		instance_create_layer(0, 0, "Menu_Instances", obj_LoseMenu);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55AD7F73
	/// @DnDParent : 1473CCC0
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "recently_hit"
	recently_hit = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 63F35FDE
	/// @DnDParent : 1473CCC0
	/// @DnDArgument : "steps" "75"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 75);
}