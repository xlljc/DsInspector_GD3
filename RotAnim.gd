extends Sprite


export var rotation_speed: float = 90.0

func _process(delta):
    rotation += deg2rad(rotation_speed) * delta