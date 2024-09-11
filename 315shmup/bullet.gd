extends RigidBody2D

var speed: float = 20

func _ready() -> void:
	set_linear_velocity(Vector2(10, speed))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
