extends Control


func _on_try_again_pressed() -> void:
	# load last scene in config file
	var config = ConfigFile.new()
	var err = config.load("user://save_data.cfg")
	if err == OK:
		var last_scene = config.get_value("game", "last_scene", "res://scenes/default_level.tscn")
		get_tree().change_scene_to_file(last_scene)

func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
