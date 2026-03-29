extends CharacterBody2D

signal laser
signal grenade

var can_laser: bool = true
var can_grenade: bool = true

func _process(_delta: float) -> void:
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * 500
	move_and_slide()
	
	if Input.is_action_pressed("primary actions") and can_laser:
		can_laser = false
		$GunReloadTimer.start()
		laser.emit()
	
	if Input.is_action_pressed("secondary actions") and can_grenade:
		can_grenade = false
		$GrenadeReloadTimer.start()
		grenade.emit()


func _on_gun_reload_timer_timeout() -> void:
	can_laser = true


func _on_grenade_reload_timer_timeout() -> void:
	can_grenade = true
