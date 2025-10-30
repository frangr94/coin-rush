extends Area2D

@onready var timer: Timer = $Timer
@onready var time_label: Label = $"../../UI/TimeLabel"

# Called when the body collides
func _on_body_entered(body: Node2D) -> void:
	timer.start()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time_label.text = str(int(timer.time_left)) + "/" + str(int(timer.wait_time))


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	print("You win!")
