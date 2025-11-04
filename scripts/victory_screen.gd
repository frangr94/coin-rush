extends Control

@onready var next_level: Button = $buttons/next_level
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

func _ready():
	$buttons/next_level.grab_focus()
	audio_stream_player.play()


func _on_next_level_pressed() -> void:
	
	var config = ConfigFile.new()
	var err = config.load("user://save_data.cfg")
	if err == OK:
		var path = config.get_value("game", "last_scene", "res://scenes/menu.tscn")
		var regex = RegEx.new()
		regex.compile(r"(\d+)")
		var result = regex.search(path)
		if result:
			var level_num = int(result.get_string(1))
			var next_scene = path.replace(str(level_num), str(level_num + 1))
			if ResourceLoader.exists(next_scene):
				get_tree().change_scene_to_file(next_scene)
			else:
				get_tree().change_scene_to_file("res://scenes/thanks.tscn")




func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
