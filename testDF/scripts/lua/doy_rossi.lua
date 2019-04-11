function DIALOG()

NODE(0)
	SAY("Hallor Runner.")
	ANSWER("Bist du nicht… oh mein Gott, es gibt dich ja wirklich!",1)
NODE(1)
	SAY("Verdammt, schon wieder erkannt. Ja, ich bin Rossi - ja, es gibt mich.")
	ANSWER("Darf ich irgendetwas für dich tun?",2)
NODE(2)
	SAY("Nein, eigentlich nicht. Aber ich kann dir einen Tipp geben. Merk dir gut, welchen Laden man im ersten Stock sieht, wenn man aus dem Norden in diese Bar hineinkommt. Die Antwort gibst du bitte beim Gewinnspiel auf www.pcgames.de")
	ENDDIALOG()
end
