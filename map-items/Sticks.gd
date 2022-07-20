extends Spatial

export (float) var speed = 0.7

func _physics_process(delta):
    $StaticBody.rotate_y(speed * delta)
    $StaticBody2.rotate_y(speed * delta)
