function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Bonjour, runner. On m'a prévenu que vous aviez passé la procédure avec succès. Mes félicitations.")
				ANSWER("Procédure? Quelle procédure?",1)
			else
			-- Fall 2: Reza Feind
				SAY("Bonjour, runner. Dirigez-vous immédiatement vers le GenReplicateur et quittez cet endroit au plus vite.")
				ANSWER("Qu'est-ce que vous faites ici? Où suis-je?! ...Ohhh...ma tête... Je ne me souviens plus de rien. Il y avait cette lumière intense, et puis...",11)	
			end
		
	NODE(1)
		SAY("Euh... Oui, d'accord. Qu'est-ce que vous voulez?")
		ANSWER("On m'a dit que vous aviez de l'argent pour que j'utilise un GenReplicateur.",2)
		ANSWER("J'ai besoin de faire quelques achats. C'est possible?",8)
		
	NODE(2)	
		SAY("Bien. Si vous avez un peu de temps libre, vous pourriez nous rendre, en particulier à notre technicien chef, un grand service. Je vous conseille aussi de vous réhabituer à l'interface R.P.O.S.. Parce qu'une fois que vous quittez cet endroit, vous ne pouvez plus y revenir.")
		ANSWER("Désolé, tout ce que je veux c'est retourner à la maison.",6)
		ANSWER("Si je peux vous aider, c'est avec plaisir.",3)

-- Auftrag angenommen
	
	NODE(3)
		SAY("Ravi de l'entendre. Nous avons actuellement quelques problèmes avec nos installations de surveillance. Il semble qu'il y ait un virus là-dedans. Actuellement, on n'a pas de solution.")
		ANSWER("Vous feriez mieux de faire appel à un spécialiste. Comment est-ce que je peux vous aider?",4)
	
	NODE(4)
		SAY("Certaines de ces installation sont des prototypes. Ils contiennent des puce révolutionnaires que nous devons récupérer à tout prix. Vous devez en récupérer au moins 4 et les donner au technicien chef. C'est tout. Le personnel de sécurité, il s'occupe... de sécurité, et il ne veut pas entendre parler de notre problème.")
		ANSWER("Bien. Je vais voir ce que je peux faire.",5)	

	NODE(5)
		SAY("Excellent. Alors allez voir notre technicien chef là-bas, et ne parlez à personne de ce que je viens de vous dire.")
		ENDDIALOG()
	
-- Auftrag abgelehnt
	
	NODE(6)
		SAY("Je comprends. Si vous voulez vous en aller, allez-y. Mais si vous faites ça, je n'aurai pas le droit de vous donner de l'argent.")
		ANSWER("Il fallait me le dire plus tôt! Alors je veux bien vous aider dans ce cas.",3)
		ANSWER("Bien essayé, mais ça ne marche pas avec moi. Tant pis.",7)
	
	NODE(7)
		SAY("Pas de problème. Le GenReplicateur est la petite unité située près de l'unité de commande. Bonne journée.")
		ENDDIALOG()
	
	NODE(8)
		SAY("Pas de problème. Qu'est-ce que vous voulez?")
		TRADE()
		ENDDIALOG()
	


	NODE(11)
		SAY("Je ne peux pas vous donner d'informations. Je suis navré, mais je vais devoir déclencher l'alarme.")
		ANSWER("Hein, quoi?! J'exige de savoir ce qui se passe!!",12)

	NODE(12)
		SAY("Quittez les lieux avant que je fasse venir la sécurité.")
		ENDDIALOG()
		
end
