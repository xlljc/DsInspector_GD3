extends Node

var debug_tool: Node;

onready var template: PackedScene = preload("res://addons/ds_inspector_gd3/DsInspectorTool.tscn")

var _cheat_node: Node;

func _ready():
	if !OS.has_feature("editor"): # 判断是否是导出模式
		return
	debug_tool = template.instance()
	_cheat_node = debug_tool.get_node(debug_tool.cheat_path)
	_cheat_node.init_node()
	call_deferred("_deff_init")
	pass

func _deff_init():
	var parent: Node = get_parent()
	parent.add_child(debug_tool)
	parent.remove_child(self)
	debug_tool.add_child(self)
	pass

func add_cheat_button(title: String, target: Node, method: String):
	if _cheat_node == null:
		return
	_cheat_node.add_cheat_button(title, target, method)
	pass
