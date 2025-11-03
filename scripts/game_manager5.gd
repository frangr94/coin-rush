# duplicar
extends Node

var score = 0
var win_score = 20

@onready var score_label: Label = $"../UI/GridContainer/ScoreLabel"


func add_point():
	score += 1


func _process(_delta: float) -> void:
	score_label.text = str(score) + "/" + str(win_score)
	if score == win_score:
		get_tree().change_scene_to_file("res://scenes/victory_screen.tscn")
