extends CharacterBody2D

var anim: AnimatedSprite2D
var chanter: AudioStreamPlayer2D

func _ready():
	anim = $AnimatedSprite2D
	chanter = $AudioStreamPlayer2D
	anim.play("Idle")

func _process(_delta):
	if Input.is_action_just_pressed("chanter"):
		anim.play("singing")
		chanter.play()
	elif Input.is_action_just_released("chanter"):
		anim.play("Idle")
		chanter.stop()
