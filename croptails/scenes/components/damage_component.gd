class_name DamageComponent
extends Node2D

@export var max_damage = 1
@export var current_damage = 0

var log_scene = preload("res://scenes/objects/trees/log.tscn")

signal max_damaged_reached

func apply_damage(damage: int) -> void:
	print("applying damage: ", damage, " current: ", current_damage, " max: ", max_damage)
	current_damage = clamp(current_damage + damage, 0, max_damage)
	if current_damage == max_damage:
		print("emitting max_damaged_reached")
		max_damaged_reached.emit()
		
