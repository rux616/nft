-- tech haven adminstration employee 

function DIALOG()

NODE(0)
	SAY("Gr��e, Runner. Was kann ich f�r Dich tun?");
	SAY("Gr��e, Runner. Kann ich Dir behilflich sein?");
	ANSWER("Ich suche nach einem Apartment, hier in Tech Haven.",10);
	ANSWER("Ich habe von einem geheimen Fallen Angels Faction Office hier irgendwo in der N�he geh�rt. Wei�t Du etwas dar�ber?",20);
	ANSWER("Hab mich nur umgeschaut. Aber Danke.",30);
NODE(10)
	SAY("Wir bieten verschiedene Arten von Apartments in Tech Haven an. Bitte sieh Dich selbst um.");
	TRADE()
	ENDDIALOG()
NODE(20)
	SAY("Ein was? Also ich habe noch nie von einem geheimen Faction Office geh�rt. Wir w�rden es wissen, g�be es irgendwelche geheimen B�ros in Tech Haven. Das kann sich nur um Fehlinformation Deinerseits handeln.");
	ANSWER("Hm ... und Du bist Dir wirklich sicher nichts von diesem B�ro zu wissen?",21);
	ANSWER("Na gut, dann nicht. Ich muss jetzt weiter... Danke f�r die Hilfe.",30);
NODE(21)
	SAY("Wenn ich es doch schon sage: Ich wei� nichts �ber dieses mysteri�se B�ro - wirklich! Ich w�sste auch gar keinen Grund warum ich Dich in dieser Sache bel�gen sollte. Gibt es sonst noch etwas mit dem ich Dir helfen kann?");
	ANSWER("Hmm, ok. Dann k�mmere Dich nicht weiter darum. Wir sehen uns noch und danke f�r Deine Hilfe...",30);
	ANSWER("War ich wohl wirklich falsch informiert. Tja, aber ich habe auch geh�rt, dass ihr hier Apartments von Tech Haven anbietet - stimmt das wenigstens?",10);
NODE(3)
	SAY("F�hl' Dich wie daheim. Noch einen sch�nen und produktiven Tag.");
	ENDDIALOG()
end