extends Node2D

export var template: PackedScene


func _on_Timer_timeout():
	var inst := template.instance()
	add_child(inst)
	pass
