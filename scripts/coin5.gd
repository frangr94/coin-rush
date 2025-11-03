extends Area2D
@onready var game_manager: Node = $"../../GameManager"

@onready var animation_player: AnimationPlayer = $AnimationPlayer



# Collision effect
func _on_body_entered(_body: Node2D) -> void:
	game_manager.add_point()
	animation_player.play("pickup_animation")
	#queue_free() # Remove the coin from the map
