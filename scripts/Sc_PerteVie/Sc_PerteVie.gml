/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 14CAA5F6
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "Sc_PerteVie"
/// @DnDArgument : "arg" "quantite=1"
function Sc_PerteVie(quantite=1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63D04567
	/// @DnDParent : 14CAA5F6
	/// @DnDArgument : "expr" "-quantite"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Hp"
	Hp += -quantite;}