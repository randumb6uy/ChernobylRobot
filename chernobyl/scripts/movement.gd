extends Node

@onready var body : CharacterBody2D = $".."
func _ready() -> void:
	Global.player = body

func _physics_process(delta: float) -> void:
	#print(body.velocity)
	#Global.direction = Input.get_vector("left","right","up","down").normalized()
	body.velocity = - body.transform.y * Global.direction.y * Global.move_speed 
	body.rotate(Global.direction.x * Global.turn_speed)
	body.move_and_slide()
