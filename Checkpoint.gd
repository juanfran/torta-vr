extends Area

func _on_Area_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
    if body is KinematicBody:
        Global.set_player_position(get_global_transform().origin, get_rotation())
