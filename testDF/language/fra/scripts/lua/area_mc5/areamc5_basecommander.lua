function DIALOG()

	NODE(0)		
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Bonjour, runner. Ravi de vous voir reposé et en pleine forme. A présent, vous allez servir notre bien aimé président Reza comme il se doit.")
				ANSWER("Où suis-je? Depuis combien de temps est-ce que je suis là? Je ne me souviens de rien!",1)
			else
			-- Fall 2: Reza Feind
				SAY("Bonjour, runner. Ravi de vous voir reposé et en pleine forme. Vous pourrez bientôt servir notre bien aimé président Reza comme il se doit.")
				ANSWER("Qu'est-ce qui s'est passé? Où est-ce que vous m'avez emmené?! Je me sens bizarre... QU'EST-CE QUE VOUS M'AVEZ FAIT!!",11)

			end
		
	NODE(1)
		SAY("Disons que vous êtes dans une sorte de... d'hôpital. Lorsqu'on vous a trouvé, vous étiez dans un état de confusion intense. Vous ne saviez plus quoi faire de votre vie. On a pris soin de vous, et à présent vous allez pouvoir retourner dans votre appartement. L'argent et les objets que vous avez reçus vous ont gracieusement été offerts par Lioon Reza, pour vous aider à reprendre une vie normale.")
		ANSWER("Je vous remercie. Reza est un grand homme! ... Je me sens encore un peu bizarre...",2)		
		
	NODE(2)	
		SAY("C'est très vraisemblablement la conséquence de votre implant. Dans son incommensurable générosité, Lioon Reza a offert à tous les visiteurs de l'institution une puce qui les protégera du mal. Mais je ne vous conseille pas de l'enlever.")
		ANSWER("Vous m'avez mis quelque chose dans le cerveau? Mais pourquoi?",3)

	NODE(3)
		SAY("Cette puce appartient à la toute dernière génération des 'Law Enforcers'. Elle est reliée à votre système neurologique. Elle vous empêche, en tant que citoyen respectable, d'entrer en conflit avec les autres runners. Cette petite merveille de la technologie assure la paix de tous. Pour cette merveilleuse invention, nous devons témoigner à BioTech et au président Reza toute notre gratitude.")
		ANSWER("Ce que vous dites est très vrai. Merci.",4)

	NODE(4)
		SAY("Vous devriez vous en aller, maintenant. Allez parler à un des employés de l'administration, qui paiera les frais de GenRéplicateur pour vous. A votre arrivée en ville, je vous conseille de vous mettre en relation avec le département de recrutement de la faction à laquelle vous avez été assigné. Je vous souhaite une longue et heureuse vie.")
		ANSWER("Merci beaucoup. Je donnerai ma vie pour Lioon Reza ... notre ... bien aimé président ... Je serai à la hauteur de sa générosité.",5)

	NODE(5)
		SAY("Ca, c'est envoyé!")
		ENDDIALOG()
	


		
	NODE(11)
		SAY("Encore! Il va vraiment falloir que j'en parle au technicien, on ne peut pas continuer à travailler dans ces conditions!")
		ANSWER("De quoi est-ce que vous parlez? J'exige de savoir ce qui se passe!!",12)

	NODE(12)
		SAY("Arrêtez vos questions immédiatement. Quittez les lieux avant que j'appelle la sécurité!")
		ANSWER("Vous allez regretter ce que vous venez de dire! Je ne tolérerai pas que...",13)

	NODE(13)
		SAY("*parle dans sa radio* Attention, attention! Sécurité! L'opération BW-143 a échoué sur le runner 2657X/34-RB. Prenez les mesures qui s'imposent! Il faut expulser ce runner!")
		ENDDIALOG()
		
end
