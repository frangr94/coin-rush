extends Area2D
@onready var collision_area: Area2D = $"."

@onready var animation_player: AnimationPlayer = $"../AnimatableBody2D/AnimationPlayer"


func _on_body_entered(_body: Node2D) -> void:
	print("hit collision area")
	animation_player.play("move")
	collision_area.queue_free()
