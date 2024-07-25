/// @description Draw board and selection

// Draw main board
draw_sprite(spr_board,0,x,y);

// Draw all pieces
for (var r=0; r < BOARD_SIZE; r++) {
	for (var c=0; c < BOARD_SIZE; c++) {
		var piece = global.Board[# c,r];
		if instance_exists(piece) {
			draw_sprite(piece.sprite_index,piece.image_index,boardToRoom(c),boardToRoom(r));
		}
	}
}

// Draw selection (if applicable)
if not array_equals(selected,[-1,-1]) {
	draw_sprite(spr_selection,0,selected[0]*TILE_SIZE+BORDER,selected[1]*TILE_SIZE+BORDER);	
}

// Draw hover
var mx = roomToBoard(mouse_x);
var my = roomToBoard(mouse_y);
if onBoard(mx,my) and not array_equals(selected,[mx,my]) {
	draw_sprite(spr_selection,1,boardToRoom(mx),boardToRoom(my));	
}