extends Spatial

export (float) var speed = 0.1
export (bool) var flip = false

func _physics_process(delta):
    var change = speed * delta
    
    if flip:
        change = -change
        
    $CSGCombiner.rotate_y(change)
