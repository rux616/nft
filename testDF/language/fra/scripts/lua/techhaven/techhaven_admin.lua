-- tech haven adminstration employee 

function DIALOG()

NODE(0)
	SAY("Bonjour runner. Comment puis-je vous aider?");
	SAY("Bonjour runner, puis-je vous aider?");
	ANSWER("Je cherche un appartement � Tech Haven.",10);
	ANSWER("J'ai entendu parler de bureaux secrets des Anges D�chus ici. Qu'est-ce que vous savez � ce sujet?",20);
	ANSWER("Je ne fais que passer, merci.",30);
NODE(10)
	SAY("Nous proposons plusieurs types d'appartements � Tech Haven. Jugez plut�t...");
	TRADE()
	ENDDIALOG()
NODE(20)
	SAY("Pardon. Je n'ai jamais entendu parler de �a, on a d� mal vous renseigner.");
	ANSWER("Vous �tes vraiment certain que vous ne savez rien � ce propos?",21);
	ANSWER("C'est pas grave... Je vais y aller, merci pour votre aide.",30);
NODE(21)
	SAY("Si je vous dis que je ne sais rien � ce propos, c'est que c'est vrai, je ne vois pas pourquoi je vous mentirais. Je peux faire autre chose pour vous?");
	ANSWER("J'ai compris, merci pour votre aide, � bient�t.",30);
	ANSWER("On m'a mal renseign� alors. Il para�t que vous vendez aussi des appartements?",10);
NODE(3)
	SAY("Tout le plaisir est pour moi, bonne journ�e.");
	ENDDIALOG()
end