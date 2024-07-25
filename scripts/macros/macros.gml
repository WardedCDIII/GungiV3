#macro TILE_SIZE 32 // Height and width of each tile
#macro BORDER 32 // Distance between camera edge and board
#macro BOARD_SIZE 9 // How many tiles in one file of board

// Board information
global.Board = ds_grid_create(BOARD_SIZE,BOARD_SIZE);


#region Testing Alternator
global.alt = 0;

function get_alternator() {
	global.alt = (global.alt+1)%2;
	show_debug_message(global.alt);
	return global.alt;
}
#endregion