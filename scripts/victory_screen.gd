extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	



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
			get_tree().change_scene_to_file(next_scene)
			print(next_scene)  # res://scenes/level_2.tscn
