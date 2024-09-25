extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with functio



func _on_body_entered(body):
	if body.get_name() == "gallina":
		Global.vidas -= 1
		queue_free()
		print(Global.vidas)
