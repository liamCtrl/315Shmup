extends CharacterBody2D

@export var bullet_resource : PackedScene
@export var bullet_offset : float = 20.0

func _process(_delta: float) -> void:
	if Input.is_action_pressed("leftInput") :
		self.position.x += -10
	if Input.is_action_pressed("rightInput") :
		self.position.x += 10
	if Input.is_action_pressed("upInput") :
		self.position.y += -10
	if Input.is_action_pressed("downInput") :
		self.position.y += 10
	
	if Input.is_action_just_pressed("shoot_button") :
		shoot_bullet()

func shoot_bullet() -> void:
	if bullet_resource:
		var bullets = bullet_resource.instantiate()
		var direction = Vector2.UP
		bullets.global_position = global_position + direction * bullet_offset
		get_tree().root.add_child(bullets)
