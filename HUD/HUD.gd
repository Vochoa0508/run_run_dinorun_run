extends CanvasLayer

signal start_game

var score = 0
var high_score = 0
var is_mob_on_screen = false
var is_playing = false
var mob_counter = 0

func update_score_label():
	score = score + 10
	$ScoreLabel.text ='Score %d'%(score)

func update_high_score_label():
	is_playing = false
	$ScoreTimer.stop()
	$ButtonStart.visible = true
	if score > high_score:
		high_score = score
		$HighScoreLebel.text = 'high_score: %d'%(high_score)
	
func _on_button_start_pressed():
	start_game.emit()
	is_playing = true
	$ScoreTimer.start()
	$ButtonStart.visible = false
	score = 0
	$ScoreLabel.text = 'score %d'%(score)



func _on_score_timer_timeout():
	update_score_label()
