// Contains mappings for all the piece
// As well as piece utility functions
// Includes names and piece movements

#region Utility

// Checks if the specified square holds a piece
function isPiece(_x,_y) {
	if not onBoard(_x,_y) { return false; }
	var piece = global.Board[# _x, _y];
	return instance_exists(piece);
}

// Gets piece ID from board
function getId(_x,_y) {
	var piece = global.Board[# _x, _y];
	with piece {
		return front;	
	}
}

// Gets piece name from board
function getName(_x,_y) {
	var _id = getId(_x,_y);
	return pieceName(_id);
}
#endregion

#region Name <-> ID
function pieceName(id) {
	switch(id) {
		case 0:
			return "Arrow";
		case 1:
			return "Bow";
		case 2:
			return "Bronze";
		case 3:
			return "Captain";
		case 4:
			return "Catapult";
		case 5:
			return "Clandestine";
		case 6:
			return "Commander";
		case 7:
			return "Dragon King";
		case 8:
			return "Fortress";
		case 9:
			return "Gold";
		case 10:
			return "Hidden Dragon";
		case 11:
			return "Lance";
		case 12:
			return "Pawn";
		case 13:
			return "Phoenix";
		case 14:
			return "Pike";
		case 15:
			return "Pistol";
		case 16:
			return "Prodigy";
		case 17:
			return "Samurai";
		case 18:
			return "Silver";
		case 19:
			return "Spy";
	}
}
function pieceId(name) {
	switch(name) {
		case "Arrow":
			return 0;
		case "Bow":
			return 1;
		case "Bronze":
			return 2;
		case "Captain":
			return 3;
		case "Catapult":
			return 4;
		case "Clandestine":
			return 5;
		case "Commander":
			return 6;
		case "Dragon King":
			return 7;
		case "Fortress":
			return 8;
		case "Gold":
			return 9;
		case "Hidden Dragon":
			return 10;
		case "Lance":
			return 11;
		case "Pawn":
			return 12;
		case "Phoenix":
			return 13;
		case "Pike":
			return 14;
		case "Pistol":
			return 15;
		case "Prodigy":
			return 16;
		case "Samurai":
			return 17;
		case "Silver":
			return 18;
		case "Spy":
			return 19;
	}
}
#endregion

