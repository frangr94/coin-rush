extends Node

var score = 0
var win_score = 20

@onready var score_label: Label = $"../UI/ScoreLabel"
@onready var timer: Timer = $Timer
@onready var time_label: Label = $"../UI/TimeLabel"


func add_point():
	score += 1

func _process(delta: float) -> void:
	
	time_label.text = str(int(timer.time_left)) + "/" + str(int(timer.wait_time))
	score_label.text = str(score) + "/" + str(win_score)
	if score == win_score:
		get_tree().reload_current_scene()
	

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
