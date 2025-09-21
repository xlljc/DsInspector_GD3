extends Node2D


func _ready():
	DsInspector.add_cheat_button("测试做弊（控制台打印日志）", self, "_test_cheat")
	pass

func _test_cheat():
	print("测试做弊按钮按下!")
	pass
