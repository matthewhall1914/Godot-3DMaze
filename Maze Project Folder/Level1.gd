extends Spatial



func _on_Goal_body_entered(body):
	if body is KinematicBody:
		get_parent().nextLevel(self, "Level2")
