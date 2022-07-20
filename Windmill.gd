extends Spatial

export (float) var speed = 0.9

func _physics_process(delta):
    $Blades.rotate_z(speed * delta)
