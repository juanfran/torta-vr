extends Spatial

export (float) var speed = 10
export (int) var throw_time = 2
export (int) var init_delay = 0
export (int) var rotation_speed = 1

var stop = true

var ball_scene = load("res://map-items/CannonBall.tscn")

func _ready():
    yield(get_tree().create_timer(init_delay), "timeout")
    stop = false
    wait_throw()
    
func _physics_process(delta):
    if !stop:
        var change = rotation_speed * delta

        $Inner.rotate_z(change)

func wait_throw(): 
    yield(get_tree().create_timer(throw_time), "timeout")
    throw_ball()    
    
func throw_ball():
    stop = true

    var ball_node = ball_scene.instance()
    ball_node.set_global_transform($Inner/Ballspawn.get_global_transform())

    get_node('/root').add_child(ball_node)
    
    var angle = rotation
    var dest_vector = $Inner/Ballspawn.get_global_transform().origin - $Inner/Ballspawn2.get_global_transform().origin
    
    ball_node.apply_central_impulse(dest_vector * speed)
    yield(get_tree().create_timer(0.5), "timeout")
    stop = false
    rotation_speed = -rotation_speed
    wait_throw()
    
