extends CanvasLayer

var vida1
var vida2
var vida3
var vida4
var vida5
var vida6
var vida7
var vida8
var vida9



func _process(delta):
	vida1 = get_node("vida1")
	vida2 = get_node("vida2")
	vida3 = get_node("vida3")
	vida4 = get_node("vida4")
	vida5 = get_node("vida5")
	vida6 = get_node("vida6")
	vida7 = get_node("vida7")
	vida8 = get_node("vida8")
	vida9 = get_node("vida9")
	
	
	actualizar_vidas()

func actualizar_vidas():
	vida1.visible = Global.vidas > 0
	vida2.visible = Global.vidas > 1
	vida3.visible = Global.vidas > 2
	vida4.visible = Global.vidas > 3
	vida5.visible = Global.vidas > 4
	vida6.visible = Global.vidas > 5
	vida7.visible = Global.vidas > 6
	vida8.visible = Global.vidas > 7
	vida9.visible = Global.vidas > 8
	

func manejar_vida(cantidad_vidas):
		Global.vidas = cantidad_vidas
		actualizar_vidas()
