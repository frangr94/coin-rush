extends Control

@onready var start: Button = $buttons/start

func _ready():	

	$buttons/start.grab_focus()
	
# start
func _on_start_pressed() -> void:
	if get_tree().current_scene.scene_file_path == "res://scenes/level_1.tscn":
		pass
	else:	
		get_tree().change_scene_to_file("res://scenes/level_1.tscn")
	
func _on_level_select_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_select.tscn")

# exit
func _on_exit_pressed() -> void:
	get_tree().quit()
