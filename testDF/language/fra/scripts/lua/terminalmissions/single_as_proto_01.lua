function DIALOG()
-- single_as_proto
-- description single_as_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man
				SAY("Votre espoir, votre force, votre rem�de. ProtoPharm, comment puis-je vous aider, monsieur ?")
				SAY("Bienvenue � ProtoPharm. Comment puis-je vous aider, monsieur ?")
				SAY("Bonjour monsieur, vous cherchez un contrat ?")
				SAY("Comment puis-je vous aider, monsieur ?")
				SAY("Bonjour monsieur, bienvenue � ProtoPharm. Nous avons du travail pour vous, si cela peut vous int�resser.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Qu'est-ce que vous pouvez m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour le job.",2)
				ANSWER("Je viens pour votre probl�me de... refroidissement.",2)
				ANSWER("J'ai entendu dire que vous cherchiez � r�soudre quelques probl�mes.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)

			else    -- Player is a Woman:
				SAY("Votre espoir, votre force, votre rem�de. ProtoPharm, comment puis-je vous aider, madame ?")
				SAY("Bienvenue � ProtoPharm. Comment puis-je vous aider, madame ?")
				SAY("Bonjour madame, vous cherchez un contrat ?")
				SAY("Comment puis-je vous aider, madame ?")
				SAY("Bonjour madame, bienvenue � ProtoPharm. Nous avons du travail pour vous, si cela peut vous int�resser.")
				
				ANSWER("Je ne fais que regarder. Merci.",1)
				ANSWER("Qu'est-ce que vous pouvez m'apprendre sur cet endroit ?",1)
				ANSWER("Bonjour, qu'est-ce que c'est ici ?",1)
				ANSWER("D�sol�e, je vous ai pris pour quelqu'un d'autre.",1)
				ANSWER("Je viens pour une ex�cution...",2)
				ANSWER("Sur un terminal j'ai appris que vous recherchiez quelqu'un pour une ex�cution.",2)
				ANSWER("Bonjour, on m'a dit que vous recherchiez quelqu'un pour une ex�cution.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Cette entreprise s'appelle ProtoPharm, et nous travaillons pour vivre. Pliez-vous au programme, ou bien sortez.")
				SAY("Ecoutez, l'ami, je n'ai pas le temps de bavarder. Veuillez partir.")
				SAY("Monsieur, j'ai trop � faire pour bavarder avec vous. Passez une bonne journ�e... sans moi.")
				SAY("Merci. Passez une bonne journ�e.")
				ENDDIALOG()
			else
				SAY("Cette entreprise s'appelle ProtoPharm, et nous travaillons pour vivre. Pliez-vous au programme, ou bien sortez.")
				SAY("Ecoutez, l'amie, je n'ai pas le temps de bavarder. Veuillez partir.")
				SAY("Madame, j'ai trop � faire pour bavarder avec vous. Passez une bonne journ�e... sans moi.")
				SAY("Merci. Passez une bonne journ�e.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Bienvenue, runner. Votre cible s'appelle %NPC_NAME(1), c'est un employ� qui nous vole des m�dicaments. La cible se trouve � %NPC_WORLD(1). Faites-en un exemple pour tous. Et revenez quand vous avez fini.")
			SAY("OK, voil� le dossier. Un de nos employ�s nous vole des drogues, beaucoup de drogues. Il s'agit de %NPC_NAME(1). Vous trouverez la cible � %NPC_WORLD(1), et nous voulons que vous lui r�gliez son compte. Assurez-vous de faire quelque chose de sale, pour que les autres comprennent le message.")
			SAY("Ah, runner, c'est vous. Bien. Le probl�me s'appelle %NPC_NAME(1), vous le trouverez � %NPC_WORLD(1). Une histoire de vol de produits pharmaceutiques. Nous voulons voir la cible morte, et bien morte. Revenez ensuite pour votre r�compense.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Vous �tes encore � la recherche de %NPC_NAME(1), hein ? C'est bon, prenez votre temps, tant que cette histoire se termine par un cadavre et que ce n'est pas le v�tre, �a me convient.")
				SAY("Runner, je ne veux pas vous presser, mais vous avez une cible dont vous devez vous occuper.")
				SAY("J'ai beaucoup de choses � faire, et je n'ai pas d'autres renseignements � vous fournir. Faites comme vous voulez pour �liminer %NPC_NAME(1).")
				SAY("Allez tuer %NPC_NAME(1), et faites-moi un beau tableau d'horreur. Allez, au travail.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Parfait, je pense que vous avez transmis le message. Voici vos %REWARD_MONEY() cr�dits. Au plaisir de vous revoir !")
				SAY("Ah, vous revoil� ! J'ai appris la nouvelle aux informations. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. ProtoPharm vous remercie pour votre professionnalisme. Pensez � surveiller votre terminal pour de futures missions.")
				SAY("Nous avons �t� inform�s que %NPC_NAME(1) n'�tait plus de ce monde. %REWARD_MONEY() cr�dits ont �t� transf�r�s sur votre compte. ProtoPharm vous remercie. Passez une bonne journ�e.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
