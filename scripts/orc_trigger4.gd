extends Area2D


@onready var player: CharacterBody2D = $"../../../Player"
@onready var animation_player: AnimationPlayer = $"../orc/AnimationPlayer"
@onready var orc: Node2D = $"../orc"


func _on_body_entered(_body: Node2D) -> void:
	animation_player.play("move")
	$CollisionShape2D.set_deferred("disabled", true)
	await animation_player.animation_finished
