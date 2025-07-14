extends Node
@onready var node_2d: Node = $".."
@onready var playermanager: Node = $"."

const PLAYER = preload("res://scenes/player.tscn")
@onready var rooms_parent: Node = $"../AreaDetect"
var rooms = []
func  _ready() -> void:
	for i in rooms_parent.get_children():
		rooms.append(i.get_child(1))
		
	var player = PLAYER.instantiate()
	playermanager.add_child(player)
	player.position = rooms[0].global_position
	Global.player.connect("camera_target",move_camera)
	
func move_camera(area):
	print(area)
