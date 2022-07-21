extends Area

func _on_GameOver_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
    if body.name == 'KinematicBody':
        Global.reset_player_position()
        
    if body.name == 'CannonBall':
        body.queue_free()
        

