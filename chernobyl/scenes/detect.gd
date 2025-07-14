extends TileMapLayer
@onready var area_2d: Area2D = $Area2D
@onready var cam_pos: Node2D = $Node2D

signal camera_target(pos)

func _ready() -> void:
	area_2d.connect("area_entered",move_camera)
	
func move_camera(area):
	if area.is_in_group("player"):
		print(area)
		camera_target.emit(cam_pos.global_position)
