function DIALOG()

NODE(0)
	SAY("Ehrwürdiger Runner, willkommen in der Kathedrale der Bruderschaft von Crahn.")
	ANSWER("Ja, eine schicke Hütte habt ihr hier.",1)
NODE(1)
	SAY("Vielleicht kannst du dich gleich nützlich machen, wenn du schon mal hier bist.")
	ANSWER("Gern.",2)

NODE(2)
	SAY("Ich möchte heute einen alten Freund besuchen, der sich im Black-Dragon-Sektor niedergelassen hat. Leider habe ich unser Hauptquartier schon so lange nicht mehr verlassen, dass ich gar nicht mehr weiß, wie ich überhaupt dorthin komme. War es durch DoY-North-East… oder doch South-West?")
	ANSWER("Warte einen Augenblick, ich schaue nach.",3)
NODE(3)
	SAY("Du bist eine reine Seele. Ich warte hier. Die Antwort gibst du bitte beim Gewinnspiel auf www.pcgames.de.")
	ENDDIALOG()
end
