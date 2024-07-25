/// @description Draw board and selection

// Draw main board
draw_sprite(spr_board,0,x,y);

// Draw selection (if applicable)
if not array_equals(selected,[-1,-1]) {
	draw_sprite(spr_selection,0,selected[0]*tile_s+32,selected[1]*tile_s+32);	
}
