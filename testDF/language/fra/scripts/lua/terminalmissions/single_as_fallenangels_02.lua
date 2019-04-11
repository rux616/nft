function DIALOG()
-- single_as_fallen
-- description single_as_02

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
				SAY("Récemment, un hacker du nom de %NPC_NAME(1) a causé une coupure de courant dans un de nos centres de recherches médicales. En conséquence, nos patients volontaires n'ont pas pu bénéficier des traitements appropriés, et de nombreuses personnes sont mortes. Nos projets de recherche ont subi un retard important. Ces recherches médicales doivent bénéficier à tout le monde, et cette attaque prolongera les souffrances de nombreuses personnes. Nous ne tolérons pas ce type d'action, et l'intrus doit être éliminé pour assurer la sécurité de notre réseau. L'intrus a été localisé dans %NPC_WORLD(1). Cette mission doit être menée à bien le plus rapidement possible. Personne ne sait quand le hacker a décidé de frapper à nouveau.")
				SAY("Un hacker du nom de %NPC_NAME(1) a coupé le courant dans une de nos stations de régulation. Nos recherches ont été retardées, et l'électricité a été coupée pendant une longue période dans de nombreux avant-postes que nous possédons. Nous devons assurer la sécurité de nos employés et de nos projets. Il va sans dire que la personne responsable de cet acte criminel doit être effacée. C'est là où vous intervenez. Une fois que la cible a été retirée de la circulation, revenez ici. Sa dernière localisation connue est %NPC_WORLD(1).")
				SAY("En raison d'une coupure de courant causée par %NPC_NAME(1), un de nos boucliers anti-radiations a été désactivé pendant une longue période, et le personnel n'a pas pu s'échapper à temps. Plusieurs de nos employés ont commencé à muter et leur cas nécessitera des semaines de traitement médical. Vous avez été contacté pour mettre un terme à l'existence de ce sinistre individu, qui a été repéré %NPC_WORLD(1).")
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
				SAY("Beau travail. Les hackers qui visent notre réseau sauront quelle est leur place dans l'avenir de la société. %REWARD_MONEY() crédits ont été déposés sur votre compte. Contactez-nous par la suite grâce à votre terminal pour d'autres missions.")
				SAY("Grâce à votre travail, ce criminel ne nous causera plus d'ennuis. Votre contribution à notre succès sera récompensée. Vous trouverez la somme de %REWARD_MONEY() crédits sur votre compte. Si vous avez besoin d'un autre job, veuillez consulter votre terminal.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
end
						
		
			
