extends CharacterBody2D

var  velocidad = 120
var  brinco = -220
var  gravedad = 300
const  maxspeed = 200
var parar = false
var entered = false
var enemyposx = 0
var cooldown = false
var can_take_damage = false
var timer = 0

func _ready():
	pass

	
func _physics_process(delta):
	var anim = $AnimatedSprite2D
	velocity.x = 0
	velocity.y += gravedad * delta
	
	if Input.is_action_pressed("ui_esc"):
		get_tree().change_scene_to_file("res://sprites/menu.tscn")
		
	
	if Input.is_action_pressed("ui_click"):
		anim.play("atack")
		Global.player_current_attack = true
		if Global.enemy_take_damage == true  and Global.player_current_attack == true:
			Global.vidae -= 1
			Global.player_current_attack = false
		
		elif Global.enemy_take == true  and Global.player_current_attack == true:
			Global.vidam -= 1
			
		
	if Global.vidas <= 0:
		get_tree().change_scene_to_file("res://game over.tscn")
	
		
	if Input.is_action_pressed("ui_righT"):
		anim.play("caminar")
		anim.flip_h = true
		velocity.x += 1*maxspeed

	if Input.is_action_pressed("ui_lefT"):
		anim.play("caminar")
		anim.flip_h = false
		velocity.x -= 1 * maxspeed
	
	
	
	if is_on_floor() && Input.is_action_pressed("ui_accept"):
		velocity.y = brinco
		
	
	move_and_slide()
	
	
			
	if entered == true:
		if Input.is_action_pressed("ui_ata"):
			get_tree().change_scene_to_file("res://sprites/Mundo2.tscn")
			
			
	else:
		Global.player_current_attack = false
		

func _on_zona__game_over_body_entered(body):
	if body.get_name() == "gallina":
		Global.vidas -= 1
		get_tree().reload_current_scene()
		
func vidass():
	if Global.vidas <= 0:
		queue_free()
	


func _on_attack_timeout():
	if Global.player_take_damage == true:
		Global.vidas -= 1
	
	
	


func _on_area_2d_body_entered(body):
	Global.enemy_take_damage = true
	


func _on_area_2d_body_exited(body):
	Global.enemy_take_damage = false



func _on_zona_game_over_body_entered(body):
	if body.get_name() == "gallina":
		Global.vidas -= 1
		get_tree().reload_current_scene()


func _on_cambio_escena_body_entered(body):
	if body.get_name() == "gallina":
		
		entered = true


func _on_cambio_escena_body_exited(body):
	if body.get_name() == "gallina":

		entered = false
