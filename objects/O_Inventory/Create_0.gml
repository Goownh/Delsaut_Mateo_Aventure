randomize();
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

item_pos = 0;
item_pos_index = 0;
itemArray = [[ ], [ ], [ ], [ ], [ ]];
for (var i = 0; i < 5; i += 1) {
    itemArray[i][itemType] = itemNone;
    itemArray[i][itemSprite] = -1;
    itemArray[i][itemAmount] = 0;
}