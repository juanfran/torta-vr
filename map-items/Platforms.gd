tool
extends Spatial
# extends EditorScript

export (int) var rows = 1 setget new_row
export (int) var columns = 1 setget new_column

var plaform_scene = load("res://map-items/Platform.tscn")
var is_ready = false

func new_row(new_value):
    rows = new_value
    render()

func new_column(new_value):
    columns = new_value
    render()
    
func _ready():
    is_ready = true
    render()

func render():     
    if !is_ready:  
        return
        
    var old_root_node = find_node("Spatial")
    
    if old_root_node:
        remove_child(old_root_node)
        
    var root_node = Spatial.new()
    add_child(root_node)
    root_node.set_owner(get_tree().edited_scene_root)
    
    for row in range(rows):
        for column in range(columns):
            var platform = plaform_scene.instance()
            platform.transform.origin.z = row * 1.8
            platform.transform.origin.x = column * 1.8
            # get_scene().add_child(platform)
            root_node.add_child(platform)

            # platform.set_owner(get_scene())
            platform.set_owner(get_tree().edited_scene_root)
