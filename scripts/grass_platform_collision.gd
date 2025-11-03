extends Area2D


func _on_body_entered(_body: Node2D) -> void:
	print("hola")
	#$CollisionShape2D.set_deferred("disabled", true)
