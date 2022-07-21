extends Spatial

export (float) var speed = 5
export (bool) var flip = false

func _physics_process(delta):
    var change = speed * delta
    
    if flip:
        change = -change
        
    $Spatial.rotate_y(change)
