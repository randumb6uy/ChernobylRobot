extends Node
@onready var camera: Camera2D = $"../Camera2D"
var tween
@onready var area_detect: Node = $"../AreaDetect"
var cam_pos
@onready var rooms_parent: Node = $"../AreaDetect"
var rooms_pos = []
var rooms_area = []
func _ready() -> void:
	for i in rooms_parent.get_children():
		rooms_pos.append(i.get_child(1))
	camera.position = rooms_pos[0].global_position
	#print(camera.position)
	for i in rooms_parent.get_children():
		rooms_area.append(i.get_child(0))
		i.connect("camera_target" , change_pos)
	
func change_pos(pos):
	print(pos)
	tween = create_tween()
	tween.tween_property( camera , "position" , pos , 0.8).set_trans(Tween.TRANS_QUART)
