extends Area2D

func _on_body_entered(body: Node2D):
	print("detected")
	print("detected: ", body.name)
	queue_free()
	pass # Replace with function body.
