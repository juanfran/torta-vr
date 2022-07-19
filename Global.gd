extends Node

var player_position = Vector3(0, 0, 0)
var player_position_rotation = Vector3(0, 0, 0)

func _ready():
    var initial_position = get_node('/root/Main/World/Zone1/PlayerPosition')
    player_position = initial_position.get_global_transform().origin
    player_position_rotation = initial_position.get_rotation()

func get_player():
    return get_node('/root/Main/Player/FPController')
    
func reset_player_position():
    var player = get_player()
    var new_player_position = player.get_global_transform()
    new_player_position.origin = player_position
    player.set_global_transform(new_player_position)
    player.set_rotation(player_position_rotation)

func set_player_position(new_player_position, rotation):
    player_position = new_player_position
    player_position_rotation = rotation
