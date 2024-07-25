/// @description Detect Click and draw selection


var clicked = roomToBoard(mouse_x,mouse_y);

if array_equals(clicked,selected) {
	selected = [-1,-1];	
}
else if (0 <= clicked[0] <= 8) and (0 <= clicked[1] <= 8) {
	selected = clicked;	
}