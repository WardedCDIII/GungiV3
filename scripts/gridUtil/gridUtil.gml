// Moves content of one cell to another, leaving the other undefined
function ds_grid_move(index,x1,y1,x2,y2) {
	var con = index[# x1,y1];
	ds_grid_set(index,x1,y1,undefined);
	ds_grid_set(index,x2,y2,con);
}

// Swaps the content of two cells
function ds_grid_swap(index,x1,y1,x2,y2){
	var con1 = index[# x1,y1];
	var con2 = index[# x2,y2];
	ds_grid_set(index,x1,y1,con2);
	ds_grid_set(index,x2,y2,con1);
}