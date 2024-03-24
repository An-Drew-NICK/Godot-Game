extends Node2D

var item = ""

func set_item(item_name):
	$Sprite.texture = load("res://Aset/Tilemap/Мечь.png" % item_name)
	item = item_name

func _ready():
	pass

func _input(event):
	if event.is_acion_pressed("Clic"):
		var pl = get_parent().get_parent().get_palyer()
		if abs(pl.position.x - position.x) < 64 and abs(pl.position.y - position.y) < 64:
			get_parent().remove_child(self)
			pl.pick(self)
			
