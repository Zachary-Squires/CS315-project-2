extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	GameController.level = 1
	GameController.gems = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	get_tree().change_scene_to_file("res://level1.tscn")
	pass # Replace with function body.
