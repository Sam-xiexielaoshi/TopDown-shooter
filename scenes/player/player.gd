extends CharacterBody2D

func _process(delta: float) -> void:
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * 500
	move_and_slide()
	
	if Input.is_action_pressed("primary actions"):
		print("shot laser")
	
	if Input.is_action_pressed("secondary actions"):
		print("grenade")
