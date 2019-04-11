-- tech haven adminstration employee 

function DIALOG()

NODE(0)
	SAY("Grüße, Runner. Was kann ich für Dich tun?");
	SAY("Grüße, Runner. Kann ich Dir behilflich sein?");
	ANSWER("Ich suche nach einem Apartment, hier in Tech Haven.",10);
	ANSWER("Ich habe von einem geheimen Fallen Angels Faction Office hier irgendwo in der Nähe gehört. Weißt Du etwas darüber?",20);
	ANSWER("Hab mich nur umgeschaut. Aber Danke.",30);
NODE(10)
	SAY("Wir bieten verschiedene Arten von Apartments in Tech Haven an. Bitte sieh Dich selbst um.");
	TRADE()
	ENDDIALOG()
NODE(20)
	SAY("Ein was? Also ich habe noch nie von einem geheimen Faction Office gehört. Wir würden es wissen, gäbe es irgendwelche geheimen Büros in Tech Haven. Das kann sich nur um Fehlinformation Deinerseits handeln.");
	ANSWER("Hm ... und Du bist Dir wirklich sicher nichts von diesem Büro zu wissen?",21);
	ANSWER("Na gut, dann nicht. Ich muss jetzt weiter... Danke für die Hilfe.",30);
NODE(21)
	SAY("Wenn ich es doch schon sage: Ich weiß nichts über dieses mysteriöse Büro - wirklich! Ich wüsste auch gar keinen Grund warum ich Dich in dieser Sache belügen sollte. Gibt es sonst noch etwas mit dem ich Dir helfen kann?");
	ANSWER("Hmm, ok. Dann kümmere Dich nicht weiter darum. Wir sehen uns noch und danke für Deine Hilfe...",30);
	ANSWER("War ich wohl wirklich falsch informiert. Tja, aber ich habe auch gehört, dass ihr hier Apartments von Tech Haven anbietet - stimmt das wenigstens?",10);
NODE(3)
	SAY("Fühl' Dich wie daheim. Noch einen schönen und produktiven Tag.");
	ENDDIALOG()
end