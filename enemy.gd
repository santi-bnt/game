extends CharacterBody2D

var gravity = 10
var speed = 200
var moving_left = true
var cooldown = false
var can_take_damage = false
var player_current_attack = false
func _ready():
	pass

func _process(delta):
	var anim = $AnimatedSprite2D
	move_character()
	

func move_character():
	var anim = $AnimatedSprite2D
	velocity.y += gravity
	anim.play("default")
	if Input.is_action_just_pressed("ui_click"):
		Global.player_current_attack = true
		
	if Global.vidae == 0:
		queue_free()
		
	if (moving_left):
		velocity.x = speed
		
		
	else:
		velocity.x = -speed
		anim.flip_h = true
	move_and_slide()
	

		


func _on_timer_timeout():
	if  Global.enemy_take_damage == true:
		Global.vidae -= 1
		print ("vida de enemigo: 3")
	


func _on_area_2d_body_entered(body):
	Global.player_take_damage = true
	print ("sp")

func _on_area_2d_body_exited(body):
	Global.player_take_damage = false
	print ("s")
