function DIALOG()

	NODE(0)		
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anh�nger
				SAY("Bonjour, runner. Ravi de vous voir repos� et en pleine forme. A pr�sent, vous allez servir notre bien aim� pr�sident Reza comme il se doit.")
				ANSWER("O� suis-je? Depuis combien de temps est-ce que je suis l�? Je ne me souviens de rien!",1)
			else
			-- Fall 2: Reza Feind
				SAY("Bonjour, runner. Ravi de vous voir repos� et en pleine forme. Vous pourrez bient�t servir notre bien aim� pr�sident Reza comme il se doit.")
				ANSWER("Qu'est-ce qui s'est pass�? O� est-ce que vous m'avez emmen�?! Je me sens bizarre... QU'EST-CE QUE VOUS M'AVEZ FAIT!!",11)

			end
		
	NODE(1)
		SAY("Disons que vous �tes dans une sorte de... d'h�pital. Lorsqu'on vous a trouv�, vous �tiez dans un �tat de confusion intense. Vous ne saviez plus quoi faire de votre vie. On a pris soin de vous, et � pr�sent vous allez pouvoir retourner dans votre appartement. L'argent et les objets que vous avez re�us vous ont gracieusement �t� offerts par Lioon Reza, pour vous aider � reprendre une vie normale.")
		ANSWER("Je vous remercie. Reza est un grand homme! ... Je me sens encore un peu bizarre...",2)		
		
	NODE(2)	
		SAY("C'est tr�s vraisemblablement la cons�quence de votre implant. Dans son incommensurable g�n�rosit�, Lioon Reza a offert � tous les visiteurs de l'institution une puce qui les prot�gera du mal. Mais je ne vous conseille pas de l'enlever.")
		ANSWER("Vous m'avez mis quelque chose dans le cerveau? Mais pourquoi?",3)

	NODE(3)
		SAY("Cette puce appartient � la toute derni�re g�n�ration des 'Law Enforcers'. Elle est reli�e � votre syst�me neurologique. Elle vous emp�che, en tant que citoyen respectable, d'entrer en conflit avec les autres runners. Cette petite merveille de la technologie assure la paix de tous. Pour cette merveilleuse invention, nous devons t�moigner � BioTech et au pr�sident Reza toute notre gratitude.")
		ANSWER("Ce que vous dites est tr�s vrai. Merci.",4)

	NODE(4)
		SAY("Vous devriez vous en aller, maintenant. Allez parler � un des employ�s de l'administration, qui paiera les frais de GenR�plicateur pour vous. A votre arriv�e en ville, je vous conseille de vous mettre en relation avec le d�partement de recrutement de la faction � laquelle vous avez �t� assign�. Je vous souhaite une longue et heureuse vie.")
		ANSWER("Merci beaucoup. Je donnerai ma vie pour Lioon Reza ... notre ... bien aim� pr�sident ... Je serai � la hauteur de sa g�n�rosit�.",5)

	NODE(5)
		SAY("Ca, c'est envoy�!")
		ENDDIALOG()
	


		
	NODE(11)
		SAY("Encore! Il va vraiment falloir que j'en parle au technicien, on ne peut pas continuer � travailler dans ces conditions!")
		ANSWER("De quoi est-ce que vous parlez? J'exige de savoir ce qui se passe!!",12)

	NODE(12)
		SAY("Arr�tez vos questions imm�diatement. Quittez les lieux avant que j'appelle la s�curit�!")
		ANSWER("Vous allez regretter ce que vous venez de dire! Je ne tol�rerai pas que...",13)

	NODE(13)
		SAY("*parle dans sa radio* Attention, attention! S�curit�! L'op�ration BW-143 a �chou� sur le runner 2657X/34-RB. Prenez les mesures qui s'imposent! Il faut expulser ce runner!")
		ENDDIALOG()
		
end
