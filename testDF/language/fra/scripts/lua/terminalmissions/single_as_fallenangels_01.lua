function DIALOG()
-- single_as_fallen
-- description single_as_01

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Bonjour monsieur, que puis-je faire pour vous ?")
				SAY("Bonjour monsieur, puis-je vous aider ?")
				SAY("Bonjour monsieur, puis-je vous être d'une aide quelconque ?")
				SAY("Avez-vous besoin d'une aide quelconque ?")
				SAY("Bonjour monsieur, avez-vous besoin d'aide ?")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Je cherche des informations au sujet d'une mission.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)
				ANSWER("On m'a dit de m'adresser à vous pour connaître les détails d'une mission que j'ai acceptée.",2)
				ANSWER("C'est joli ici. On y fait quoi ?",1)
			else
				SAY("Bonjour madame, que puis-je faire pour vous ?")
				SAY("Bonjour madame, puis-je vous aider ?")
				SAY("Bonjour madame, puis-je vous être d'une aide quelconque ?")
				SAY("Avez-vous besoin d'une aide quelconque ?")
				SAY("Bonjour madame, avez-vous besoin d'aide ?")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Je cherche des informations au sujet d'une mission.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)
				ANSWER("On m'a dit de m'adresser à vous pour connaître les détails d'une mission que j'ai acceptée.",2)
				ANSWER("C'est joli ici. On y fait quoi ?",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Monsieur, si vous cherchez des informations d'ordre général, je vous conseille de demander à quelqu'un d'autre.")
				SAY("Je n'ai pas le temps de vous aider, monsieur. Si vous cherchez un job, demandez-moi, sinon adressez-vous à quelqu'un d'autre.")
				SAY("Monsieur, j'ai un travail, je n'ai le temps de parler qu'à des gens qui cherchent à travailler pour nous.")
				ENDDIALOG()
			else
				SAY("Madame, si vous cherchez des informations d'ordre général, je vous conseille de demander à quelqu'un d'autre.")
				SAY("Je n'ai pas le temps de vous aider, monsieur. Si vous cherchez un job, demandez-moi, sinon adressez-vous à quelqu'un d'autre.")
				SAY("Madame, j'ai un travail, je n'ai le temps de parler qu'à des gens qui cherchent à travailler pour nous.")
				ENDDIALOG()
			end
	NODE(2)
				SAY("Récemment, nous avons découvert que %NPC_NAME(1) volait des données importantes concernant nos recherches et les revendait au marché noir. Il est vital que cette cible soit éliminée avant que d'autres données soient ainsi diffusées. La dernière fois que la cible a téléchargé des informations, nous avons pu repérer son signal et la localiser dans %NPC_WORLD(1). La seule chose dont nous ayons besoin actuellement est que vous mettiez un terme à son existence. Dépêchez-vous, la cible possède encore des données nous appartenant, et ces données peuvent être vendues sur le marché noir à tout moment.")
				SAY("Au cours d'une enquête interne, nous avons mis à jour une opération de contrebande dirigée par %NPC_NAME(1). Cette personne a dérobé des données confidentielles et les a revendues au plus offrant. Nous avons remonté la source des opérations dans %NPC_WORLD(1). Occupez-vous de la cible et revenez ici.")
				SAY("Certains de nos informateurs sur le marché noir de Neocron nous ont signalé une opération de contrebande organisée par %NPC_NAME(1). La cible se trouve dans %NPC_WORLD(1). Eliminez cette cible aussi vite que possible. Nous devons nous assurer que nos recherches ne tombent pas entre des mains peu scrupuleuses. Lorsque vous avez fini, revenez me voir.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Je vous ai dit tout ce que vous aviez besoin de savoir. Revenez ici pour toucher votre prime.")
				SAY("Vous ne pouvez avoir accès à des informations supplémentaires concernant cette mission. J'ai du travail, et vous aussi. Allez accomplir votre mission.")
				SAY("Nos informateurs n'ont pas signalé la mort de la cible. Vous devez accomplir votre mission avant d'envisager quoi que ce soit d'autre.")
				SAY("Vous avez toutes les informations nécessaires pour accomplir votre mission. Allez chercher ce dont vous avez besoin, agisse, et revenez.")
				ENDDIALOG()
			else
				SAY("Bon travail. La mort de la cible a été confirmée par des sources indépendantes. La somme de %REWARD_MONEY() crédits a été transférée sur votre compte. Nous cherchons toujours à protéger nos scientifiques du monde extérieur. Toute l'aide que vous pouvez nous apporter est la bienvenue, n'oubliez pas de consulter votre terminal.")
				SAY("Beau travail. Les hackers qui visent notre réseau sauront quelle est leur place dans l'avenir de la société. %REWARD_MONEY() crédits ont été déposés sur votre compte. Recontactez-nous par la suite grâce à votre terminal pour d'autres missions.")
				SAY("Grâce à votre travail, ce criminel ne nous causera plus d'ennuis. Votre contribution à notre succès sera récompensée. Vous trouverez la somme de %REWARD_MONEY() crédits sur votre compte. Si vous avez besoin d'un autre job, veuillez consulter votre terminal.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
end
						
		
			
