extends StaticBody3D

@export var enemy_scene: PackedScene
@onready var path_follow_3d: PathFollow3D = $Path3D/PathFollow3D
var enemy_limit: int = 10
var enemy_count: int = 0


func _ready() -> void:
	Global.enemy_killed.connect(on_enemy_killed)
	pass

func _process(delta: float) -> void:

	pass

func _on_timer_timeout() -> void:
	if (enemy_count >= enemy_limit):
		return

	var enemy = enemy_scene.instantiate()
	path_follow_3d.progress_ratio = randf_range(0, 1)

	enemy.position = path_follow_3d.position
	enemy_count += 1
	add_child(enemy)

	pass # Replace with function body.

func on_enemy_killed():
	enemy_count -= 1
	pass
