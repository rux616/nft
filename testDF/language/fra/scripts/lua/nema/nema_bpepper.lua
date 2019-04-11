-- concenter_bpepper.lua

function DIALOG()
	NODE(0)
		SAY("Bonjour, qu'est-ce que je peux faire pour vous?")
		SAY("Bienvenue au bureau des renseignements, je peux vous aider?")
		SAY("Bonjour, enchanté de vous voir!")
		SAY("Oui?")
		SAY("Comment puis-je vous aider?")
		
		ANSWER("Je cherche du travail, est-ce que vous avez quelque chose à proposer?",2)
		ANSWER("Où sont les bureaux des Neochroniques?",3)
		ANSWER("J'aimerais des renseignements sur les possibilités de publicités dans les Neochroniques.",4)
		ANSWER("Attendez, je vous reconnais, vous êtes LE Barry Pepper!? Je vous croyais mort!",5)
		ANSWER("Oh pardon, je vous ai pris pour quelqu'un d'autre.",24)

	NODE(1)
		SAY("Autre chose?")
		
		ANSWER("Je cherche du travail, est-ce que vous avez quelque chose à proposer?",2)
		ANSWER("Où sont les bureaux des Neochroniques?",3)
		ANSWER("J'aimerais des renseignements sur les possibilités de publicités dans les Neochroniques.",4)
		ANSWER("Non merci, c'était tout.",24)

	NODE(2)
		SAY("Ca dépend de ce que vous recherchez.")
		
		ANSWER("J'aimerais devenir reporter en freelance pour les Neochroniques",8)
		ANSWER("Je voudrais rejoindre l'équipe des Neochroniques.",9)
		ANSWER("Je viens de changer d'avis.",1)

	NODE(3)
		SAY("CityAdmin et notre dirigeant bien aimé ont approuvé la construction de nouveaux bureaux pour les Neochroniques dans Plaza 2.")
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
		ANSWER("Non, mais je vous imaginais... différent.",1)
		ANSWER("Je vous ai posé une question, alors répondez-moi!",7)

	NODE(6)
		SAY("Alors ça n'est pas moi, c'est évident.")
		
		ANSWER("Oui, je crois aussi.",1)

	NODE(7)
		SAY("Oui, c'est bien moi. Surprenant, n'est-ce pas? Le véritable Barry Pepper est mort, mais de nombreux fans nostalgiques ont demandé la mise en place d'une représentation holographique de ma personne. Je dois dire que ça me touche beaucoup, c'est une manière pour moi de revivre, en quelque sorte. Et puis ça fait plaisir à la rédaction. Sauf que je reste nuit et jour à mon bureau, mais on n'a rien sans rien n'est-ce pas? Enfin vous n'êtes certainement pas là pour discuter de cela. Quelque chose vous amène?")
		
		ANSWER("Oui, je cherche du travail, est-ce que vous avez quelque chose à proposer?",2)
		ANSWER("Oui, où sont les bureaux des Neochroniques?",3)
		ANSWER("Oui, j'aimerais des renseignements sur les possibilités de publicités dans les Neochroniques",4)
		ANSWER("Euh... Non... Je voulais juste savoir si vous étiez le vrai Barry Pepper.",23)

	NODE(8)
		SAY("Tout le monde peut devenir reporter en freelance pour les Neochroniques. Tout ce que vous avez à faire, c'est d'écrire un article et de l'envoyer à Henry Chesterfield.")
		
		ANSWER("Et si je veux par exemple devenir membre de votre rédaction?",9)
		ANSWER("Et comment contacte-t-on M. Chesterfield?",10)
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(9)
		SAY("Si vous voulez vraiment rejoindre notre équipe, je vous conseille de prendre contact avec Maloch Octavia.")
		
		ANSWER("Et si je veux seulement travailler en freelance?",8)
		ANSWER("Comment contacte-t-on M. Octavia?",11)
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(10)
		SAY("Vous pouvez lui envoyer un mail à h.chesterfield@guildes.org")
		
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(11)
		SAY("Vous pouvez lui envoyer un mail à maloch.octavia@guildes.org")
		
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(12)
		SAY("Vous serez prévenu lorsque la construction sera achevée.")
		
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(13)
		SAY("Placer une annonce commerciale, c'est facile. Envoyez un mail à Henry Chesterfield en mentionnant votre nom, le service que vous proposez, et toutes les informations nécessaires.")
		ANSWER("-continuer",14)

	NODE(14)
		SAY("Par exemple : Michel Dupont, Implanteur niveau 84, pourboires acceptés.")
		
		ANSWER("Et comment contacte-t-on M. Chesterfield?",10)
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(15)
		SAY("Placer une annonce personnelle, c'est facile. Envoyez un mail à Henry Chesterfield en mentionnant votre nom et le message que vous souhaitez faire passer.")
		ANSWER("-continuer",16)

	NODE(16)
		SAY("Par exemple : Michel Dupont - Bonjour, je voulais juste vous dire que je vous aime.")
		
		ANSWER("Et comment contacte-t-on M. Chesterfield?",10)
		ANSWER("J'ai d'autres questions.",1)
		ANSWER("Merci, c'est tout ce que je voulais savoir.",24)

	NODE(17)
		SAY("Une annonce classique se décline sous plusieurs options.")
		
		ANSWER("Je voudrais une annonce en haut de page",18)
		ANSWER("Je voudrais une annonce en bas de page",19)
		ANSWER("Je voudrais une annonce sous forme de popup",20)
		ANSWER("Je viens de changer d'avis",1)
	NODE(18)
		SAY("Une annonce en bas de page coûte 25.000 nc. Si vous voulez réserver l'espace, contactez Henry Chesterfield.")
		
		ANSWER("Et pour une annonce en haut de page?",19)
		ANSWER("Et pour une annonce en popup?",20)
		ANSWER("J'en sais assez sur les publicités",1)
		ANSWER("Je n'ai plus de questions",24)
	NODE(19)
		SAY("Une annonce en haut de page coûte 50.000 nc. Si vous voulez réserver l'espace, contactez Henry Chesterfield.")
		
		ANSWER("Et pour une annonce en bas de page?",18)
		ANSWER("Et pour une annonce en popup?",20)
		ANSWER("J'en sais assez sur les publicités",1)
		ANSWER("Je n'ai plus de questions",24)
	NODE(20)
		SAY("Une annonce en popup coûte 100.000 nc. Si vous désirez réserver l'espace, contactez Henry Chesterfield.")
		
		ANSWER("Et pour une annonce en bas de page?",18)
		ANSWER("Et pour une annonce en haut de page?",19)
		ANSWER("J'en sais assez sur les publicités",1)
		ANSWER("Je n'ai plus de questions",24)
	NODE(23)
		SAY("Oui, je vous l'ai dit c'est bien moi. Mais ne me rappelez-plus que je suis un hologramme, j'ai quelques difficultés à l'accepter... Je ne devrais pas vous dire ça, mais je vais voir un psychologue pour m'aider à assumer ça, c'est loin d'être facile et en plus ça me coûte une fortune. Maintenant excusez-moi, hologramme ou pas, j'ai du travail. Bonjour chez vous!")
		ENDDIALOG()
		
	NODE(24)
		SAY("Merci d'être passé.")
		SAY("Au plaisir.")
		SAY("A la prochaine.")
		SAY("Si vous avez encore des questions, n'hésitez pas.")
		SAY("J'espère que j'ai répondu à vos questions.")
		SAY("Au revoir.")
		SAY("Bonne chasse.")
end