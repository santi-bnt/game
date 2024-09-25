extends Node2D

var vidas =  4
var vidae = 3
var vidam = 1
var volador = false
var player_current_attack = false
var player_take_damage = false
var enemy_take_damage = false
var player_take = false


func _on_body_entered(body):
	if body.get_name() == "gallina":
		Global.vidas  += 1
		queue_free()
		print(vidas)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

