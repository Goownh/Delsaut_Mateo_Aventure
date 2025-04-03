item = choose(item_heal, item_bow, item_key, item_mobloot, item_sword);
switch(item) {
	case item_heal:
	    sprite_index = S_Heal;
		break;
	
	case item_bow:
	    sprite_index = S_Bow;
		break;
	
	case item_key:
	    sprite_index = S_Key;
		break;
	
	case item_mobloot:
	    sprite_index = S_MobLoot;
		break;
	
	case item_sword:
	    sprite_index = S_Sword;
		break;
}