item = choose(itemHeal, itemBow, itemKey, itemMobLoot, itemSword);
switch(item) {
	case itemHeal:
	    sprite_index = S_Heal;
		break;
	
	case itemBow:
	    sprite_index = S_Bow;
		break;
	
	case itemKey:
	    sprite_index = S_Key;
		break;
	
	case itemMobLoot:
	    sprite_index = S_MobLoot;
		break;
	
	case itemSword:
	    sprite_index = S_Sword;
		break;
}