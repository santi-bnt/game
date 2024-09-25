extends CharacterBody2D

var speed = 150
var moving_left = true
var cooldown = false
var can_take_damage = false
var player_current_attack = false
var vida = Global.vidam
var camina_dere = false
func _ready():
	pass

func _process(delta):
	var anim = $AnimatedSprite2D
	move_character()

	
	

func move_character():
	var anim = $AnimatedSprite2D
	anim.play("default")
	
	if camina_dere == true:
		velocity.x = speed
		anim.flip_h = true
		
		
	if camina_dere == false:
		velocity.x = -speed
		anim.flip_h = false

	if  $RayCast2D.is_colliding():
			camina_dere = true
			
	if  $RayCast2D2.is_colliding():
			camina_dere = false
		
	
	
	
	if Input.is_action_just_pressed("ui_click"):
		Global.player_current_attack = true
		
	if Global.vidae == 0:
		queue_free()
		
	move_and_slide()
	
		




func _on_area_2d_body_entered(body):
	
	if body.get_name() == "gallina":
		Global.vidas -= 1
		


func _on_area_2d_body_exited(body):
		if body.get_name() == "gallina":
			Global.player_take = false
