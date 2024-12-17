extends Node2D

var object = preload("res://scenes/peg.tscn")

func _ready():
	#spawn(Vector2(100, 100))
	var view = get_viewport().get_visible_rect().size
	#print(view)
	var xcount = 20
	var ycount = 7
	var rowOffset = 36
	var xInit = 46
	var yInit = 110
	var xgap = (view[0] - xInit) / xcount
	var ygap = 50
	for rowIndex in range(ycount):
		var offsetX = rowOffset
		if rowIndex % 2 == 0:
			offsetX = 0
		for colIndex in range(xcount):
			spawn(Vector2(xInit + xgap * colIndex + offsetX, yInit + ygap * rowIndex))


func spawn(pos):
	var instance = object.instantiate()
	instance.position = pos
	add_child(instance)
