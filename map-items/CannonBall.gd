extends RigidBody

func _ready():
    yield(get_tree().create_timer(10.0), "timeout")
    queue_free()

func _on_CannonBall_body_entered(body):
    if body.name == 'KinematicBody':
        pass
        #Global.get_player()
        #print('push')
        #print(self.angular_velocity * 100)
        
        #body.move_and_slide(Vector3(0,0,300), Vector3.UP)
        
        #body.move_and_collide(self.angular_velocity * 100)
        
        #body.force_update_transform()
