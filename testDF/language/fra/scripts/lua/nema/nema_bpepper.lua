-- concenter_bpepper.lua

function DIALOG()
	NODE(0)
		SAY("Bonjour, qu'est-ce que je peux faire pour vous?")
		SAY("Bienvenue au bureau des renseignements, je peux vous aider?")
		SAY("Bonjour, enchant� de vous voir!")
		SAY("Oui?")
		SAY("Comment puis-je vous aider?")
		
		ANSWER("Je cherche du travail, est-ce que vous avez quelque chose � proposer?",2)
		ANSWER("O� sont les bureaux des Neochroniques?",3)
		ANSWER("J'aimerais des renseignements sur les possibilit�s de publicit�s dans les Neochroniques.",4)
		ANSWER("Attendez, je vous reconnais, vous �tes LE Barry Pepper!? Je vous croyais mort!",5)
		ANSWER("Oh pardon, je vous ai pris pour quelqu'un d'autre.",24)

	NODE(1)
		SAY("Autre chose?")
		
		ANSWER("Je cherche du travail, est-ce que vous avez quelque chose � proposer?",2)
		ANSWER("O� sont les bureaux des Neochroniques?",3)
		ANSWER("J'aimerais des renseignements sur les possibilit�s de publicit�s dans les Neochroniques.",4)
		ANSWER("Non merci, c'�tait tout.",24)

	NODE(2)
		SAY("Ca d�pend de ce que vous recherchez.")
		
		ANSWER("J'aimerais devenir reporter en freelance pour les Neochroniques",8)
		ANSWER("Je voudrais rejoindre l'�quipe des Neochroniques.",9)
		ANSWER("Je viens de changer d'avis.",1)

	NODE(3)
		SAY("CityAdmin et notre dirigeant bien aim� ont approuv� la construction de nouveaux bureaux pour les Neochroniques dans Plaza 2.")
		ANSWER("-continuer",12)

	NODE(4)
		SAY("Qu'est-ce que vous aimeriez savoir?")
		
		ANSWER("Je voudrais passer une annonce commerciale",13)
		ANSWER("Je voudrais passer une annonce personnelle",15)
		ANSWER("Je voudrais passer une annonce classique",17)
		ANSWER("Je viens de changer d'avis.",1)

	NODE(5)
		SAY("Il en existe un autre?")
		
		ANSWER("Oui, mais c'est un sale abruti, et en plus il est moche.",6)
		ANSWER("Non, mais je vous imaginais... diff�rent.",1)
		ANSWER("Je vous ai pos� une question, alors r�pondez-moi!",7)

	NODE(6)
		SAY("Alors �a n'est pas moi, c'est �vident.")
		
		ANSWER("Oui, je crois aussi.",1)

	NODE(7)
		SAY("Oui, c'est bien moi. Surprenant, n'est-ce pas? Le v�ritable Barry Pepper est mort, mais de nombreux fans nostalgiques ont demand� la mise en place d'une repr�sentation holographique de ma personne. Je dois dire que �a me touche beaucoup, c'est une mani�re pour moi de revivre, en quelque sorte. Et puis �a fait plaisir � la r�daction. Sauf que je reste nuit et jour � mon bureau, mais on n'a rien sans rien n'est-ce pas? Enfin vous n'�tes certainement pas l� pour discuter de cela. Quelque chose vous am�ne?")
		
		ANSWER("Oui, je cherche du travail, est-ce que vous avez quelque chose � proposer?",2)
		ANSWER("Oui, o� sont les bureaux des Neochroniques?",3)
		ANSWER("Oui, j'aimerais des renseignements sur les possibilit�s de publicit�s dans les Neochroniques",4)
		ANSWER("Euh... Non... Je voulais juste savoir si vous �tiez le vrai Barry Pepper.",23)

	NODE(8)
		SAY("Tout le monde peut devenir reporter en freelance pour les Neochroniques. Tout ce que vous avez � faire, c'est d'�crire un article et de l'envoyer � Henry Chesterfield.")
		
		ANSWER("Et si je veux par exemple devenir membre de votre r�daction?",9)
		ANSWER("Et comment contacte-t-on M. Chesterfield?",10)
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(9)
		SAY("Si vous voulez vraiment rejoindre notre �quipe, je vous conseille de prendre contact avec Maloch Octavia.")
		
		ANSWER("Et si je veux seulement travailler en freelance?",8)
		ANSWER("Comment contacte-t-on M. Octavia?",11)
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(10)
		SAY("Vous pouvez lui envoyer un mail � h.chesterfield@guildes.org")
		
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(11)
		SAY("Vous pouvez lui envoyer un mail � maloch.octavia@guildes.org")
		
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(12)
		SAY("Vous serez pr�venu lorsque la construction sera achev�e.")
		
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(13)
		SAY("Placer une annonce commerciale, c'est facile. Envoyez un mail � Henry Chesterfield en mentionnant votre nom, le service que vous proposez, et toutes les informations n�cessaires.")
		ANSWER("-continuer",14)

	NODE(14)
		SAY("Par exemple : Michel Dupont, Implanteur niveau 84, pourboires accept�s.")
		
		ANSWER("Et comment contacte-t-on M. Chesterfield?",10)
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(15)
		SAY("Placer une annonce personnelle, c'est facile. Envoyez un mail � Henry Chesterfield en mentionnant votre nom et le message que vous souhaitez faire passer.")
		ANSWER("-continuer",16)

	NODE(16)
		SAY("Par exemple : Michel Dupont - Bonjour, je voulais juste vous dire que je vous aime.")
		
		ANSWER("Et comment contacte-t-on M. Chesterfield?",10)
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(17)
		SAY("Une annonce classique se d�cline sous plusieurs options.")
		
		ANSWER("Je voudrais une annonce en haut de page",18)
		ANSWER("Je voudrais une annonce en bas de page",19)
		ANSWER("Je voudrais une annonce sous forme de popup",20)
		ANSWER("Je viens de changer d'avis",1)
	NODE(18)
		SAY("Une annonce en bas de page co�te 25.000 nc. Si vous voulez r�server l'espace, contactez Henry Chesterfield.")
		
		ANSWER("Et pour une annonce en haut de page?",19)
		ANSWER("Et pour une annonce en popup?",20)
		ANSWER("J'en sais assez sur les publicit�s",1)
		ANSWER("Je n'ai plus de questions",24)
	NODE(19)
		SAY("Une annonce en haut de page co�te 50.000 nc. Si vous voulez r�server l'espace, contactez Henry Chesterfield.")
		
		ANSWER("Et pour une annonce en bas de page?",18)
		ANSWER("Et pour une annonce en popup?",20)
		ANSWER("J'en sais assez sur les publicit�s",1)
		ANSWER("Je n'ai plus de questions",24)
	NODE(20)
		SAY("Une annonce en popup co�te 100.000 nc. Si vous d�sirez r�server l'espace, contactez Henry Chesterfield.")
		
		ANSWER("Et pour une annonce en bas de page?",18)
		ANSWER("Et pour une annonce en haut de page?",19)
		ANSWER("J'en sais assez sur les publicit�s",1)
		ANSWER("Je n'ai plus de questions",24)
	NODE(23)
		SAY("Oui, je vous l'ai dit c'est bien moi. Mais ne me rappelez-plus que je suis un hologramme, j'ai quelques difficult�s � l'accepter... Je ne devrais pas vous dire �a, mais je vais voir un psychologue pour m'aider � assumer �a, c'est loin d'�tre facile et en plus �a me co�te une fortune. Maintenant excusez-moi, hologramme ou pas, j'ai du travail. Bonjour chez vous!")
		ENDDIALOG()
		
	NODE(24)
		SAY("Merci d'�tre pass�.")
		SAY("Au plaisir.")
		SAY("A la prochaine.")
		SAY("Si vous avez encore des questions, n'h�sitez pas.")
		SAY("J'esp�re que j'ai r�pondu � vos questions.")
		SAY("Au revoir.")
		SAY("Bonne chasse.")
end