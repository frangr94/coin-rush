extends Area2D

@onready var timer: Timer = $Timer
# cambiar
@onready var time_label: Label = $"../../UI/TimeLabel"

func _ready() -> void:
	$Timer.wait_time = 25


# Called when the body collides
func _on_body_entered(_body: Node2D) -> void:
	timer.start()
	$CollisionShape2D.set_deferred("disabled", true)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	time_label.text = str(int(timer.time_left)) + "/" + str(int(timer.wait_time))


func _on_timer_timeout() -> void:
	timer.stop()
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
