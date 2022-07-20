tool
extends Spatial

export (float) var speed = 1
export (bool) var flip = false
export (bool) var sticks = false setget change_sticks
export (float) var stick_speed = 1.0

var sticks_scene = load("res://map-items/SpinStick.tscn")

func _physics_process(delta):
    if !Engine.editor_hint:
        var change = speed * delta
        
        if flip:
            change = -change
            
        $Windmill.rotate_y(change)
    
func change_sticks(new_sticks):
    sticks = new_sticks
    
    var sticks_node = get_node_or_null('SpinStick')
        
    if sticks_node:
            remove_child(sticks_node)
            
    if sticks:
        sticks_node = sticks_scene.instance()
        sticks_node.transform.origin.y = 0.373
        sticks_node.scale.x = 0.55
        sticks_node.scale.y = 0.51
        sticks_node.scale.z = 0.55
        sticks_node.flip = !flip
        sticks_node.speed = stick_speed
        add_child(sticks_node)

        #sticks_node.set_owner(get_tree().edited_scene_root)

        
        
