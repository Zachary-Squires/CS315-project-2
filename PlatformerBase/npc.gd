extends Area2D

var playerInside = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(playerInside == true):
		$NpcLabel.show()


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		playerInside = true

func _on_body_exited(body: Node2D) -> void:
	playerInside = false
	$NpcLabel.hide()
