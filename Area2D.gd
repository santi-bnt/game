extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$AnimatedSprite2D.play("kiwi")




func _on_body_entered(body):
	if body.get_name() == "gallina":
		Global.vidas += 1
		queue_free()
		print(Global.vidas)
