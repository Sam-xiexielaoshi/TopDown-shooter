extends Node2D

var laser_scene: PackedScene = preload("res://scenes/projectiles/laser.tscn")

func _on_gate_player_entered_gate(body) -> void:
	print("player has entered the gate")

func _on_player_laser() -> void:
	var laser = laser_scene.instantiate()
	add_child(laser)
	
func _on_player_grenade() -> void:
	print("grenade launched")
