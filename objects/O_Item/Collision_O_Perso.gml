var pos = 0;
var type = item;
var sprite = sprite_index;
var nv = false;

for(i = 0; i < array_length(O_Inventory.itemArray); i++) {
	if(O_Inventory.itemArray[i][itemType] == itemNone) {
		nv = true;
		break;
	}
	if(O_Inventory.itemArray[i][itemType] == type) {
		break;
	}
	else {
		pos +=1;
	}
}

if (nv) {
	newArray = [type, sprite, 1];
	O_Inventory.itemArray[pos] = newArray;
	instance_destroy();	
	show_debug_message("fin 3")
}
else {
	O_Inventory.itemArray[pos][itemAmount] += 1;
	instance_destroy();	
}