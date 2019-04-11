function DIALOG()
-- single_as_proto
-- description single_as_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man
				SAY("Votre espoir, votre force, votre remède. ProtoPharm, comment puis-je vous aider, monsieur ?")
				SAY("Bienvenue à ProtoPharm. Comment puis-je vous aider, monsieur ?")
				SAY("Bonjour monsieur, vous cherchez un contrat ?")
				SAY("Comment puis-je vous aider, monsieur ?")
				SAY("Bonjour monsieur, bienvenue à ProtoPharm. Nous avons du travail pour vous, si cela peut vous intéresser.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Qu'est-ce que vous pouvez m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le job.",2)
				ANSWER("Je viens pour votre problème de... refroidissement.",2)
				ANSWER("J'ai entendu dire que vous cherchiez à résoudre quelques problèmes.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Votre espoir, votre force, votre remède. ProtoPharm, comment puis-je vous aider, madame ?")
				SAY("Bienvenue à ProtoPharm. Comment puis-je vous aider, madame ?")
				SAY("Bonjour madame, vous cherchez un contrat ?")
				SAY("Comment puis-je vous aider, madame ?")
				SAY("Bonjour madame, bienvenue à ProtoPharm. Nous avons du travail pour vous, si cela peut vous intéresser.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Qu'est-ce que vous pouvez m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("Désolée, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour une exécution...",2)
				ANSWER("Sur un terminal j'ai appris que vous recherchiez quelqu'un pour une exécution.",2)
				ANSWER("Bonjour, on m'a dit que vous recherchiez quelqu'un pour une exécution.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Cette entreprise s'appelle ProtoPharm, et nous travaillons pour vivre. Pliez-vous au programme, ou bien sortez.")
				SAY("Ecoutez, l'ami, je n'ai pas le temps de bavarder. Veuillez partir.")
				SAY("Monsieur, j'ai trop à faire pour bavarder avec vous. Passez une bonne journée... sans moi.")
				SAY("Merci. Passez une bonne journée.")
				ENDDIALOG()
			else
				SAY("Cette entreprise s'appelle ProtoPharm, et nous travaillons pour vivre. Pliez-vous au programme, ou bien sortez.")
				SAY("Ecoutez, l'amie, je n'ai pas le temps de bavarder. Veuillez partir.")
				SAY("Madame, j'ai trop à faire pour bavarder avec vous. Passez une bonne journée... sans moi.")
				SAY("Merci. Passez une bonne journée.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Bienvenue, runner. Votre cible s'appelle %NPC_NAME(1), c'est un employé qui nous vole des médicaments. La cible se trouve à %NPC_WORLD(1). Faites-en un exemple pour tous. Et revenez quand vous avez fini.")
			SAY("OK, voilà le dossier. Un de nos employés nous vole des drogues, beaucoup de drogues. Il s'agit de %NPC_NAME(1). Vous trouverez la cible à %NPC_WORLD(1), et nous voulons que vous lui régliez son compte. Assurez-vous de faire quelque chose de sale, pour que les autres comprennent le message.")
			SAY("Ah, runner, c'est vous. Bien. Le problème s'appelle %NPC_NAME(1), vous le trouverez à %NPC_WORLD(1). Une histoire de vol de produits pharmaceutiques. Nous voulons voir la cible morte, et bien morte. Revenez ensuite pour votre récompense.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Vous êtes encore à la recherche de %NPC_NAME(1), hein ? C'est bon, prenez votre temps, tant que cette histoire se termine par un cadavre et que ce n'est pas le vôtre, ça me convient.")
				SAY("Runner, je ne veux pas vous presser, mais vous avez une cible dont vous devez vous occuper.")
				SAY("J'ai beaucoup de choses à faire, et je n'ai pas d'autres renseignements à vous fournir. Faites comme vous voulez pour éliminer %NPC_NAME(1).")
				SAY("Allez tuer %NPC_NAME(1), et faites-moi un beau tableau d'horreur. Allez, au travail.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Parfait, je pense que vous avez transmis le message. Voici vos %REWARD_MONEY() crédits. Au plaisir de vous revoir !")
				SAY("Ah, vous revoilà ! J'ai appris la nouvelle aux informations. %REWARD_MONEY() crédits ont été transférés sur votre compte. ProtoPharm vous remercie pour votre professionnalisme. Pensez à surveiller votre terminal pour de futures missions.")
				SAY("Nous avons été informés que %NPC_NAME(1) n'était plus de ce monde. %REWARD_MONEY() crédits ont été transférés sur votre compte. ProtoPharm vous remercie. Passez une bonne journée.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
