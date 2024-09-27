extends RigidBody2D

var speed: float = 20

func _ready() -> void:
	set_linear_velocity(Vector2(0, speed))
	

func _on_body_entered(body: Node) -> void:
	var game_controller = get_tree().root.get_node("Node2D")
	queue_free()
	game_controller.incrementScore()
	if body is CharacterBody2D:
		body.queue_free()
