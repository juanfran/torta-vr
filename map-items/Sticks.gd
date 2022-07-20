extends Spatial

export (float) var speed = 0.7
export (bool) var flip = false

func _physics_process(delta):
    var change = speed * delta
    
    if flip:
        change = -change
        
    $StaticBody.rotate_y(change)
    $StaticBody2.rotate_y(change)
