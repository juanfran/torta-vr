extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func door1():
    $Door.start = true
    
func door2():
    $Door2.start = true
    
func door3():
    $Door3.start = true    

func _ready():
    door1()
    yield(get_tree().create_timer(5.0), "timeout")
    door2()
    yield(get_tree().create_timer(5.0), "timeout")
    door3()


