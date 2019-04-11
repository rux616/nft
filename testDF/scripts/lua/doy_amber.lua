function DIALOG()

NODE(0)
	SAY("Hey, was machst du denn hier mein Hübscher?")
	ANSWER("Dasselbe könnte ich dich fragen, meine Hübsche…",1)
NODE(1)
	SAY("Wenn du Lust auf einen lukrativen Deal hast, weihe ich dich ein.")
	ANSWER("Schieß los.",2)

NODE(2)
	SAY("Ich plane gerade einen Überfall - wenn wir den richtigen Laden erwischen, haben wir ausgesorgt und können uns vielleicht sogar ein schickes Bike leisten. Ich bin mir nur noch nicht sicher, in welchem Laden man gewinnbringende Sachen erbeuten kann. Weiß du, was Dragon Drugs verkauft?")
	ANSWER("Nein, weiß ich nicht. Aber plan du schon mal weiter, ich sehe kurz nach.",3)
NODE(3)
	SAY("Stark, du bist ein wirklich guter Kumpel. Die Antwort gibst du bitte beim Gewinnspiel auf www.pcgames.de.")
	ENDDIALOG()
end
