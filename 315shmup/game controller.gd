extends Node2D

var score = 0
@export var txtScore : Label
	
func incrementScore() -> void:
	score += 1
	var scoreStr = str(score)
	get_node("Label").text = scoreStr
