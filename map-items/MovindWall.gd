extends Spatial


var direction = 'in'
export (float) var speed = 1.0
export (bool) var start = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float):
    if start:
        if direction == 'in':
            $Wall.transform.origin.z = $Wall.transform.origin.z - delta * speed
            
        if direction == 'out':
            $Wall.transform.origin.z = $Wall.transform.origin.z + delta * speed
            
        if $Wall.transform.origin.z < -2:
            direction = 'out'
        
        if $Wall.transform.origin.z > 0:
            direction = 'in'

