extends Area2D

@export var sceneName: String = "Level 1"
@onready var death_sfx = get_node("../DeathSFX")

func _on_Area_Trigger_body_entered(body):
	var current_scene = get_tree().get_current_scene().get_name()

	if body.get_name() == "Player":
		if current_scene == sceneName:
			Global.lives -= 1

		death_sfx.play()

		await get_tree().create_timer(0.5).timeout

		if Global.lives == 0:
			get_tree().call_deferred(
				"change_scene_to_file",
                "res://scenes/GameOver.tscn"
			)
		else:
			get_tree().call_deferred(
				"change_scene_to_file",
				"res://scenes/" + sceneName + ".tscn"
			)
