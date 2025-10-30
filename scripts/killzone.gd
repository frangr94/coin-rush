extends Area2D

@onready var timer: Timer = $Timer

# Save last level name
func _ready():
	var config = ConfigFile.new()
	config.set_value("game", "last_scene", get_tree().current_scene.scene_file_path)
	config.save("user://save_data.cfg")
	print(ProjectSettings.globalize_path("user://save_data.cfg"))

func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5 # slowdown on death
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1 # reset speed
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	# get_tree().reload_current_scene()
