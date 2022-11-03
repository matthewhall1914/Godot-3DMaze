extends Node

func _ready():
	get_node("Win").hide()

func nextLevel(old,new):
	old.queue_free()
	
	var newLevelPath = load("res://" + new + ".tscn")
	if newLevelPath:
		
		var newLevel = newLevelPath.instance()
		add_child(newLevel)
	else:
		get_node("Win").show()

