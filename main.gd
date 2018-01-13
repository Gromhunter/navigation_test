extends Node2D

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_load_room_pressed():
	var new_room=ResourceLoader.load("res://room.tscn").instance()
	get_tree().get_root().get_node("root/level").add_child(new_room)		



func _on_reload_room_pressed():
	var child=get_tree().get_root().get_node("root/level/room")
	var parent=get_tree().get_root().get_node("root/level")
	parent.remove_child(child)
	parent.add_child(child)

func _on_reload_tilemap_pressed():
	var child=get_tree().get_root().get_node("root/level/room/navigation/Tilemap")
	var parent=get_tree().get_root().get_node("root/level/room/navigation")
	parent.remove_child(child)
	parent.add_child(child)


func _on_reload_navigation_pressed():
	var child=get_tree().get_root().get_node("root/level/room/navigation")
	var parent=get_tree().get_root().get_node("root/level/room")
	parent.remove_child(child)
	parent.add_child(child)


func _on_reload_pressed():
	for i in get_node("level").get_children():
		i.queue_free()