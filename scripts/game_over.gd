extends Control

# get scene path
func _on_try_again_pressed():
	var config = ConfigFile.new()
	var err = config.load("user://save_data.cfg")
	if err == OK:
		var last_scene = config.get_value("game", "last_scene", "res://scenes/menu.tscn")
		get_tree().change_scene_to_file(last_scene)
	else:
		get_tree().change_scene_to_file("res://scenes/menu.tscn")


func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
