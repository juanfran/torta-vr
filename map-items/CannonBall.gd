extends RigidBody

func _on_CannonBall_body_entered(body):
    if body.name == 'KinematicBody':
        pass
        #Global.get_player()
        #print('push')
        #print(self.angular_velocity * 100)
        
        #body.move_and_slide(Vector3(0,0,300), Vector3.UP)
        
        #body.move_and_collide(self.angular_velocity * 100)
        
        #body.force_update_transform()
