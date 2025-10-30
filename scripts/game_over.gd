extends Control


const level = "1"

const placeholder_path = "res://scenes/level_%s.tscn"

var path = placeholder_path % level

func _on_try_again_pressed() -> void:
	get_tree().change_scene_to_file(path)

func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
