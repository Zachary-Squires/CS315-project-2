extends Area2D


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	var bodies = get_overlapping_bodies()
	for n in bodies:
		if n.is_in_group("Player"):
			n.velocity.y = -100

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Player"):
		body.velocity.y = -100
		$climb.play()

func _on_body_exited(body: Node) -> void:
	if body.is_in_group("Player"):
		body.velocity.y = 0
