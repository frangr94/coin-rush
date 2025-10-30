extends Node

var score = 0
var win_score = 20

@onready var score_label: Label = $"../UI/ScoreLabel"
@onready var timer: Timer = $Timer
@onready var time_label: Label = $"../UI/TimeLabel"
@onready var player: CharacterBody2D = $"../Player"


func add_point():
	score += 1


func _process(delta: float) -> void:
	score_label.text = str(score) + "/" + str(win_score)
	if score == win_score:
		print("You win!")
		get_tree().reload_current_scene()
