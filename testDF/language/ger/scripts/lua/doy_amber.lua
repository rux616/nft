function DIALOG()

NODE(0)
	SAY("Hey, was machst du denn hier mein H�bscher?")
	ANSWER("Dasselbe k�nnte ich dich fragen, meine H�bsche�",1)
NODE(1)
	SAY("Wenn du Lust auf einen lukrativen Deal hast, weihe ich dich ein.")
	ANSWER("Schie� los.",2)

NODE(2)
	SAY("Ich plane gerade einen �berfall - wenn wir den richtigen Laden erwischen, haben wir ausgesorgt und k�nnen uns vielleicht sogar ein schickes Bike leisten. Ich bin mir nur noch nicht sicher, in welchem Laden man gewinnbringende Sachen erbeuten kann. Wei� du, was Dragon Drugs verkauft?")
	ANSWER("Nein, wei� ich nicht. Aber plan du schon mal weiter, ich sehe kurz nach.",3)
NODE(3)
	SAY("Stark, du bist ein wirklich guter Kumpel. Die Antwort gibst du bitte beim Gewinnspiel auf www.pcgames.de.")
	ENDDIALOG()
end
