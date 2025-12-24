extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collected_sound: AudioStreamPlayer2D = $CollectedSound
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

signal collected



func _on_body_entered(body: Node2D) -> void:
	animated_sprite_2d.animation = "Collected"
	collected_sound.play()
	collected.emit()
	collision_shape_2d.disabled = true
	pass # Replace with function body.
	

	
	
