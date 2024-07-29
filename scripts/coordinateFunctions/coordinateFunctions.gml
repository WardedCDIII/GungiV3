
// Returns the square that contains the given pixel coordinates
function roomToBoard(n){
	return floor((n-BORDER)/TILE_SIZE);
}

// Returns the pixel coordiantes of the top left of the given tile
function boardToRoom(n) {
	return (BORDER+(n*TILE_SIZE));
}

// Checks if the given cell is on the board
function onBoard(_x,_y) {
	return _x >= 0 and _x < BOARD_SIZE and _y >= 0 and _y < BOARD_SIZE;
}