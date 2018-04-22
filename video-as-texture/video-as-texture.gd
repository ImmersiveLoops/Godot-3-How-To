
extends Spatial

var stream = preload("res://metropolis.ogv")

func _ready():

	var player = VideoPlayer.new()

	player.set_stream(stream)
	add_child(player)

	var texture = player.get_video_texture()

	get_node("Screen").material_override.albedo_texture = player.get_video_texture()

	player.play()