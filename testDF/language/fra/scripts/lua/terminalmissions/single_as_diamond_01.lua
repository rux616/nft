function DIALOG()
-- single_as_diamond
-- description single_as_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Bonjour monsieur, avez-vous besoin d'aide ?")
				SAY("Bonjour monsieur, puis-je vous aider ?")
				SAY("Bien le bonjour, monsieur. Puis-je vous aider ?")
				SAY("Oui monsieur ? Comment puis-je vous aider ?")
				SAY("Vous venez pour la livraison ? Oh, excusez-moi, je voulais dire, avez-vous besoin de quelque chose ?")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Qu'est-ce que c'est, ici ?",1)
				ANSWER("Désolé, je me suis trompé de personne.",1)
				ANSWER("Je viens pour un... job.",2)
				ANSWER("Je viens pour un problème de refroidissement.",2)
				ANSWER("On m'a dit que vous cherchiez un tueur.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Bonjour madame, avez-vous besoin d'aide ?")
				SAY("Bonjour madame, puis-je vous aider ?")
				SAY("Bien le bonjour, madame. Puis-je vous aider ?")
				SAY("Oui madame, comment puis-je vous aider ?")
				SAY("Oui, oui. Que puis-je faire pour vous, chère madame ?")
				
				ANSWER("Je regarde, c'est tout. Merci.",1)
				ANSWER("Que pouvez-vous m'apprendre sur cet endroit ?",1)
				ANSWER("Qu'est-ce que c'est, ici ?",1)
				ANSWER("Désolée, je me suis trompé de personne.",1)
				ANSWER("Je viens pour un... job.",2)
				ANSWER("Je viens pour un problème de refroidissement.",2)
				ANSWER("On m'a dit que vous cherchiez un tueur.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Ne me faites pas perdre mon temps. J'ai beaucoup à faire ici. Bonne journée.")
				SAY("Ecoutez, mon petit, je n'ai pas de temps à vous consacrer. Fichez le camp... monsieur.")
				SAY("Monsieur, pour des informations d'ordre général veuillez consulter les terminaux. Bonne journée.")
				SAY("Merci. Passez une bonne journée.")
				ENDDIALOG()
			else
				SAY("Ne me faites pas perdre mon temps, madame. J'ai beaucoup à faire. Bonne journée.")
				SAY("Ecoutez, j'essaie de travailler, alors si vous n'y voyez pas d'inconvénient...")
				SAY("Pour des information d'ordre général, veuillez consulter les terminaux. Bonne journée à vous.")
				SAY("Merci madame. Passez une bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving mission
			SAY("Juste à temps. Votre cible est %NPC_NAME(1), c'est un client à problèmes qui a besoin d'une expulsion définitive. La cible se trouve dans %NPC_WORLD(1). Eliminez-la sans faire de vagues, et revenez me voir pour un compte-rendu.")
			SAY("Bien, allons droit au but. Il faut refroidir un client qui nous pose quelques difficultés, disons que c'est une solution permanente à un problème qui n'est que temporaire. Localisez votre cible, %NPC_NAME(1), à %NPC_WORLD(1), et abattez-le. Faites passer ça pour un règlement de compte ou comme un mort par balle perdue... Enfin, débrouillez-vous. La prochaine fois que je vous vois, je veux que %NPC_NAME(1) soit de l'histoire ancienne.")
			SAY("Ah oui, Runner. Ca fait plaisir de vous voir. Le problème que nous avons concerne un client un peu turbulent du nom de %NPC_NAME(1). La solution, c'est de le refroidir. La cible vit à %NPC_WORLD(1). Je sais que vous comprenez la nécessité d'agir discrètement. Revenez ici lorsque la cible aura été abattue.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	NODE(3)
		ISmissIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- mission is not accomplished
				SAY("Qu'est-ce que vous faites ici ? %NPC_NAME(1) est encore en vie. Allez vous occuper de son problème.")
				SAY("Runner, n'avez-vous pas quelqu'un dont vous devez vous occuper ? Nos rapports nous indiquent que %NPC_NAME(1) est encore en vie. Allez, au travail !")
				SAY("Ecoutez, %NPC_NAME(1) est encore en vie. Arrêtez de traîner et faites votre travail comme il faut !")
				SAY("Mais qu'est-ce que vous fichez encore ici ? Je vous demande de mettre un terme à votre mission le plus vite possible, ou bien vous allez comprendre ce que le mot souffrance veut dire.")
				ENDDIALOG()
			else -- mission was accomplished
				SAY("Félicitations pour votre travail, runner. Ce fut un plaisir d'avoir affaire à un professionnel. %REWARD_MONEY() crédits ont été transférés sur votre compte. J'espère vous revoir bientôt.")
				SAY("Ah, c'est vous. Beau travail ! Vous avez bien agi, et vous avez gagné la somme de %REWARD_MONEY() crédits. Diamond Immobilier vous est reconnaissante pour votre professionnalisme. Pensez à surveiller votre terminal pour de futures propositions. Passez une bonne journée.")
				SAY("Runner, mes félicitations. On nous a informé que %NPC_NAME(1) ne faisait plus partie de ce monde. %REWARD_MONEY() crédits ont été transférés sur votre compte. Nous apprécions votre aide. Pensez à surveiller votre terminal pour des offres similaires. Passez une bonne journée.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
