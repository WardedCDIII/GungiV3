/// @description Detect and handle clicks


var clicked = [roomToBoard(mouse_x),roomToBoard(mouse_y)];

// Clicked on already selected
if array_equals(clicked,selected) {
	selected = [-1,-1];	
}
// Nothing is already selected
else if array_equals(selected,[-1,-1]) {
	selected=clicked;
} 
// Selected is a piece
else if isPiece(selected[0],selected[1]) {
	if not isPiece(clicked[0],clicked[1]) {
		ds_grid_move(global.Board,selected[0],selected[1],clicked[0],clicked[1]);
		selected = [-1,-1];
	}
}
// Both are empty
else {
	selected = clicked;
}

