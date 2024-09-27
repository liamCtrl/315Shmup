extends RigidBody2D

var speed: float = 200.0

func _ready():
	var direction = (Vector2(0,-1))
	linear_velocity = direction.normalized() * speed


func _on_body_entered(body):
	print("Collision detected with ", body.name)
	if body is RigidBody2D:
		queue_free()
