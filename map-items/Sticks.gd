extends Spatial


func _physics_process(delta):
    $StaticBody.rotate_y(0.7 * delta)
    $StaticBody2.rotate_y(0.7 * delta)
