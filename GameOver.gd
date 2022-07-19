extends Area

func _on_GameOver_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
    Global.reset_player_position()

