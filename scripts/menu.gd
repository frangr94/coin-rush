extends Control

# start
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")

# options
func _on_options_pressed() -> void:
	print("options")

# exit
func _on_exit_pressed() -> void:
	get_tree().quit()
