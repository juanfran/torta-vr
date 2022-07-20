extends Spatial

export (float) var speed = 0.7
export (bool) var flip = false

func _physics_process(delta):
    var change = speed * delta
    
    if flip:
        change = -change
        
    rotate_y(change)
