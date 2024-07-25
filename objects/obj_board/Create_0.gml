/// @description

// Holds the currently selected cell
selected = [-1,-1];


// intialize all cells to empty
for (var i=0; i < ds_grid_height(global.Board); i++) {
	for (var j=0; j < ds_grid_width(global.Board); j++) {
		ds_grid_set(global.Board,j,i,undefined)	
	}
}

// TEST PIECES AT 0,0 and 8,8 //
var piece = instance_create_layer(0,0,"Instances",obj_piece);
ds_grid_set(global.Board,0,0,piece);

var piece2 = instance_create_layer(0,0,"Instances",obj_piece);
ds_grid_set(global.Board,8,8,piece2);