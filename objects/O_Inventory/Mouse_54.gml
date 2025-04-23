if (itemArray[item_pos][itemType] != itemNone) {
    var _type = itemArray[item_pos][itemType];
    var _sprite = itemArray[item_pos][itemSprite];
    itemArray[item_pos][itemAmount] += -1;
    var _inst = instance_create_layer(mouse_x, mouse_y, "Instances", O_Item);
	
    with (_inst) {
        item = _type;
        sprite_index = _sprite;
    }
    if (itemArray[item_pos][itemAmount] < 1) {
        itemArray[item_pos][itemType] = itemNone;
    }
}