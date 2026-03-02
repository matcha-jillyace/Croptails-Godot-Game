class_name HurtComponent
extends Area2D

@export var tool: DataTypes.Tools = DataTypes.Tools.None

signal hurt
		
func _on_area_entered(area: Area2D) -> void:
	var hit_component = area as HitComponent
	print("area entered: ", area)
	
	if hit_component == null:
		print("not a hit component, skipping")
		return

	print("tool match check: ", tool, " vs ", hit_component.current_tool)
	if tool == hit_component.current_tool:
		print("emitting hurt")
		hurt.emit(hit_component.hit_damage)
