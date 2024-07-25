
function roomToBoard(_x,_y){
	return [floor((_x-BORDER)/TILE_SIZE), floor((_y-BORDER) / TILE_SIZE)];
}