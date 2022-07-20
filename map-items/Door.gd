extends Spatial

var direction = 'down'
export (bool) var start = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float):
    if start:
        if direction == 'down':
            $StaticBody.transform.origin.y = $StaticBody.transform.origin.y - delta * 1.2
            
        if direction == 'up':
            $StaticBody.transform.origin.y = $StaticBody.transform.origin.y + delta * 1.2
        
        if $StaticBody.transform.origin.y < -2:
            direction = 'up'
        
        if $StaticBody.transform.origin.y > 2:
            direction = 'down'
