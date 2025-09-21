extends Timer

func _ready():
	# start(3)
	start(rand_range(5, 10))
	pass


func _on_TestTimer_timeout():
	queue_free()
	pass
