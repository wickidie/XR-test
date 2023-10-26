extends Sprite3D

@export var look_target: Node3D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	look_at(look_target.position + Vector3(0, 0.7, 0))
	pass
