extends CharacterBody2D


class_name FrogEnemy

const speed = 50
var is_chase_frog: bool

var health = 80
var helath_max = 80
var health_min = 0

var dead: bool = false
var taking_damage : bool = false
var damage_to_deal =20
var is_dealing_damage: bool = false

var direction: Vector2
const gravity = 900
var knockback_force =200
var is_rooming: bool = true
