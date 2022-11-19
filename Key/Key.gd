extends Area


func _ready():
	pass


func _on_Key_body_entered(body):
	if body.name == "Player":
		var exist = get_node_or_null("/root/Game/Maze/Exist")
		var sound = get_node_or_null("/root/Game/Key")
		if sound != null:
			sound.playing = true
		queue_free()
		if exist != null:
			exist.unlock()
			queue_free()
