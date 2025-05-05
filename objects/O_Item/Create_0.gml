randomise();
var instance = instance_position(x,y,O_Support);

if(instance > 0) {
	achetable = true;
	supportactu = instance;
}

if(achetable) {
	item = choose(itemHeal, itemSword);
}
else {
	item = choose(itemHeal, Gold);
}


switch(item) {
	case itemHeal:
	    sprite_index = S_Heal;
		price = 1;
		break;
	
	case Gold:
	    sprite_index = S_Gold;
		break;
	
	case itemSword:
	    sprite_index = S_Sword;
		price = 2;
		break;
}

if(instance > 0) {
	instance.Item = self;
}