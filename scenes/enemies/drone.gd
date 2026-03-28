extends CharacterBody2D

func _process(_delta):
	#directions
	var direction = Vector2.RIGHT
	
	#Veolicty
	velocity = direction * 200
	
	#slide and move
	move_and_slide()
