extends Spatial

func _ready():
    $MovindWall.start = true
    yield(get_tree().create_timer(1.0), "timeout")
    $MovindWall2.start = true
    yield(get_tree().create_timer(1.0), "timeout")
    $MovindWall3.start = true
    yield(get_tree().create_timer(1.0), "timeout")
    $MovindWall4.start = true
