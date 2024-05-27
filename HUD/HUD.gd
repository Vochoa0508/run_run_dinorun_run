extends CanvasLayer

var score = 0
var high_score = 0
var is_mob_on_screen = false
var is_playing = false

func update_score_label():
	score = score + 10
	$ScoreLabel.text ='Score %d'%(score)

func update_high_score_label():
	if score > high_score:
		high_score = score
		$HighScoreLebel.text = 'high_score: %d'%(high_score)
	
func _on_button_start_pressed():
	is_playing = true
	$ScoreTimer.start()
	$ButtonStart.visible = false



func _on_score_timer_timeout():
	update_score_label()
