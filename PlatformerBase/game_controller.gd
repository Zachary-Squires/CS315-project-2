extends Node2D
@export var gems = 0
@export var level = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gems = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _diamond_collected():
	gems += 1
	if gems == 5:
		if level == 1:
			get_tree().change_scene_to_file("res://level2.tscn")
			level = 2
			gems = 0
		else:
			get_tree().change_scene_to_file("res://menu.tscn")
		
