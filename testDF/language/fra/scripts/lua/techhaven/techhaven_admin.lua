-- tech haven adminstration employee 

function DIALOG()

NODE(0)
	SAY("Bonjour runner. Comment puis-je vous aider?");
	SAY("Bonjour runner, puis-je vous aider?");
	ANSWER("Je cherche un appartement à Tech Haven.",10);
	ANSWER("J'ai entendu parler de bureaux secrets des Anges Déchus ici. Qu'est-ce que vous savez à ce sujet?",20);
	ANSWER("Je ne fais que passer, merci.",30);
NODE(10)
	SAY("Nous proposons plusieurs types d'appartements à Tech Haven. Jugez plutôt...");
	TRADE()
	ENDDIALOG()
NODE(20)
	SAY("Pardon. Je n'ai jamais entendu parler de ça, on a dû mal vous renseigner.");
	ANSWER("Vous êtes vraiment certain que vous ne savez rien à ce propos?",21);
	ANSWER("C'est pas grave... Je vais y aller, merci pour votre aide.",30);
NODE(21)
	SAY("Si je vous dis que je ne sais rien à ce propos, c'est que c'est vrai, je ne vois pas pourquoi je vous mentirais. Je peux faire autre chose pour vous?");
	ANSWER("J'ai compris, merci pour votre aide, à bientôt.",30);
	ANSWER("On m'a mal renseigné alors. Il paraît que vous vendez aussi des appartements?",10);
NODE(3)
	SAY("Tout le plaisir est pour moi, bonne journée.");
	ENDDIALOG()
end