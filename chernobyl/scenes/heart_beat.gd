extends Node
var ray
var target
signal temp(temp)
func _ready() -> void:
	ray = Global.player.get_child(3)

func _process(delta: float) -> void:
	if ray.is_colliding():
		target = ray.get_collider()
