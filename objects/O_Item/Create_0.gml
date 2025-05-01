randomise();

if(position_meeting(x,y,O_Support)) {
	achetable = true;
}

if(achetable) {
	item = choose(itemHeal, itemBow, itemKey, itemSword);
}
else {
	item = choose(itemHeal, itemKey, itemMobLoot);
}


switch(item) {
	case itemHeal:
	    sprite_index = S_Heal;
		price = 1;
		break;
	
	case itemBow:
	    sprite_index = S_Bow;
		price = 2;
		break;
	
	case itemKey:
	    sprite_index = S_Key;
		price = 1;
		break;
	
	case itemMobLoot:
	    sprite_index = S_Piece;
		break;
	
	case itemSword:
	    sprite_index = S_Sword;
		price = 2;
		break;
}

if(position_meeting(x,y,O_Support)) {
	O_Support.Item = self;
	O_Support.item = item;
}