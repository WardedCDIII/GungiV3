/// @description Detect Click and draw selection


var clicked = [roomToBoard(mouse_x),roomToBoard(mouse_y)];

// Nothing is already selected
if array_equals(selected,[-1,-1]) {
	selected=clicked;
} 
// Selected is a piece
else if isPiece(selected[0],selected[1]) {
	if not isPiece(clicked[0],clicked[1]) {
		ds_grid_move(global.Board,selected[0],selected[1],clicked[0],clicked[1]);
		selected = [-1,-1];
	}
}

