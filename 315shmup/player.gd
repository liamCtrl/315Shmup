extends CharacterBody2D

func _process(_delta: float) -> void:
	if Input.is_action_pressed("leftInput") :
		self.position.x += -10
	if Input.is_action_pressed("rightInput") :
		self.position.x += 10
	if Input.is_action_pressed("upInput") :
		self.position.y += -10
	if Input.is_action_pressed("downInput") :
		self.position.y += 10
