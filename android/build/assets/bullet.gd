extends MeshInstance3D

func _ready() -> void:

	pass

func _physics_process(delta: float) -> void:
	self.position.x += 10
	pass


func _on_timer_timeout() -> void:
	queue_free()
	pass # Replace with function body.
