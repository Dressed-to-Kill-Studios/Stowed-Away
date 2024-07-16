extends Node

#Difficulty
enum DIFFICULTIES {
	EASY,
	NORMAL,
	HARD,
}
var current_difficulty : DIFFICULTIES

#Character
enum CHARACTERS {
	JOHN,
	EMILY,
}
var playing_as : CHARACTERS


func _init(_playing_as : CHARACTERS = CHARACTERS.JOHN, _difficulty : DIFFICULTIES = DIFFICULTIES.NORMAL):
	playing_as = _playing_as
	current_difficulty = _difficulty
