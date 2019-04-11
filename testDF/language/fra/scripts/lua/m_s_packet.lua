function DIALOG()

	NODE(0)

		SAY("Bonjour! J'ai du travail pour vous. Ca vous intéresse?")
		SAY("Hé! Vous voulez du travail?")
		SAY("Bonjour! Vous cherchez du travail?")
		SAY("Vous, là-bas! Vous voulez du travail?")
		
		ANSWER("Oui!", 1)
		ANSWER("Evidemment!", 1)
		ANSWER("Hmm... pourquoi pas?", 1)
		ANSWER("Qu'est-ce que c'est, exactement?", 1)

		ANSWER("Non merci.",20)
		ANSWER("Pas maintenant.",20)
		ANSWER("Hmm... non, pas maintenant.",20)

	NODE(1)

		SAY("OK, je vous explique. Prenez ce paquet, et donnez-le à %NPC_NAME(0), qui travaille pour %FRACTION_NAME(%NPC_TYPE(0)) à %NPC_WORLD(0). Revenez me voir ensuite pour votre récompense. Vous acceptez?")

		ANSWER("C'est comme si c'était fait.", 2)
		ANSWER("OK. C'est dans mes cordes.", 2)

		ANSWER("Non... pas vraiment.", 20)
		ANSWER("J'ai une tête à faire des livraisons?", 20)

	NODE(2)
		ACCEPTMISSION()
		GIVEQUESTITEM(99)

		SAY("OK, voilà le paquet dont je vous ai parlé. Prenez-en soin!")
		SAY("Prenez ça, et faites attention!")

		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()

	NODE(3)

		SAY("Pardon, mais je ne peux pas vous parler maintenant. J'ai une énorme pile de choses à faire.")
		SAY("allez-vous-en. J'attends une livraison urgente.")
		SAY("Laissez-moi tranquille. Allez vous adresser à un de nos représentants du service consommateurs si vous voulez parler à quelqu'un.")
		SAY("Je ne fais pas partie du service consommateurs. Pour des questions au sujet de notre faction ou autres sujets similaires, veuillez vous adresser aux bonnes personnes.")

		ANSWER("Mais j'ai une livraison pour vous, de la part de %NPC_NAME(4).",4)

		ANSWER("Si vous en voulez pas ce que je veux vous livrer ça n'est pas grave, je vais le vendre à quelqu'un d'autre.", 21)
		ANSWER("Je voulais seulement vous livrer quelque chose, mais si vous êtes trop occupé...  oublions ça.",21)
		
	NODE(4)

		TAKEQUESTITEM(99)
		if(result==1) then
			SAY("Ah, la livraison! Enfin. Merci beaucoup. Retournez voir %NPC_NAME(4) pour toucher votre récompense.");
			SAY("Enfin! Pourquoi avez-vous mis si longtemps? J'estime que vous ne méritez pas votre récompense, mais je vous suggère tout de même de retourner voir %NPC_NAME(4) pour la toucher.");
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()			
			SETNEXTDIALOGSTATE(21)
		else
			SAY("C'est vrai? Alors, où est mon colis?");
			SAY("C'est ce que vous dites. Mais moi, je ne vois rien du tout.");
			SAY("Et comment est-ce que vous pourriez me donner quelque chose que vous n'avez pas.");
			SAY("Mais vous n'avez rien du tout! Vous mentez!");
			ENDDIALOG()			
			SETNEXTDIALOGSTATE(4)
		end
			
	NODE(5)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Dépêchez-vous, allez livrer ce paquet aussi vite que possible.")
			ENDDIALOG()

		else			

			SAY("Merci pour votre excellent travail. Voici votre récompense. Notre faction a toujours une place pour les gens efficaces comme vous.")
			SAY("Voilà votre argent, vous l'avez bien mérité. Revenez quand vous voulez, il y aura toujours du travail pour les gens comme vous ici.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("A votre aise. On trouvera certainement quelqu'un d'autre.")
		SAY("Revenez si jamais vous changez d'avis.")
		SAY("Si vous ne tenez pas à travailler, vous allez vous retrouver à Pepper Park, à errer dans les rues avec de belles couleurs plein la tête. Vous verrez!")
		SAY("Pas grave, je trouverai quelqu'un d'autre.")
		
		ENDDIALOG()

	NODE(21)

		SAY("Vous essayez de m'avoir! %NPC_NAME(4) ne donnerait jamais un tel travail à quelqu'un comme vous!")
		SAY("Je ne crois pas ce que vous dites. Maintenant, partez avant que je fasse venir la sécurité.")

		
		ENDDIALOG()
end