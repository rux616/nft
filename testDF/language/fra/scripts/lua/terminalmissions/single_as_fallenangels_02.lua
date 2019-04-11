function DIALOG()
-- single_as_fallen
-- description single_as_02

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Bonjour monsieur, que puis-je faire pour vous ?")
				SAY("Bonjour monsieur, puis-je vous aider ?")
				SAY("Bonjour monsieur, puis-je vous �tre d'une aide quelconque ?")
				SAY("Avez-vous besoin d'une aide quelconque ?")
				SAY("Bonjour monsieur, avez-vous besoin d'aide ?")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Je cherche des informations au sujet d'une mission.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)
				ANSWER("On m'a dit de m'adresser � vous pour conna�tre les d�tails d'une mission que j'ai accept�e.",2)
				ANSWER("C'est joli ici. On y fait quoi ?",1)
			else
				SAY("Bonjour madame, que puis-je faire pour vous ?")
				SAY("Bonjour madame, puis-je vous aider ?")
				SAY("Bonjour madame, puis-je vous �tre d'une aide quelconque ?")
				SAY("Avez-vous besoin d'une aide quelconque ?")
				SAY("Bonjour madame, avez-vous besoin d'aide ?")
				
				ANSWER("Je ne fais que regarder, merci.",1)
				ANSWER("Que pouvez-vous me dire sur cet endroit ?",1)
				ANSWER("Je cherche des informations au sujet d'une mission.",2)
				ANSWER("Je viens pour une mission que j'ai prise sur un terminal.",2)
				ANSWER("On m'a dit de m'adresser � vous pour conna�tre les d�tails d'une mission que j'ai accept�e.",2)
				ANSWER("C'est joli ici. On y fait quoi ?",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Monsieur, si vous cherchez des informations d'ordre g�n�ral, je vous conseille de demander � quelqu'un d'autre.")
				SAY("Je n'ai pas le temps de vous aider, monsieur. Si vous cherchez un job, demandez-moi, sinon adressez-vous � quelqu'un d'autre.")
				SAY("Monsieur, j'ai un travail, je n'ai le temps de parler qu'� des gens qui cherchent � travailler pour nous.")
				ENDDIALOG()
			else
				SAY("Madame, si vous cherchez des informations d'ordre g�n�ral, je vous conseille de demander � quelqu'un d'autre.")
				SAY("Je n'ai pas le temps de vous aider, monsieur. Si vous cherchez un job, demandez-moi, sinon adressez-vous � quelqu'un d'autre.")
				SAY("Madame, j'ai un travail, je n'ai le temps de parler qu'� des gens qui cherchent � travailler pour nous.")
				ENDDIALOG()
			end
	NODE(2)
				SAY("R�cemment, un hacker du nom de %NPC_NAME(1) a caus� une coupure de courant dans un de nos centres de recherches m�dicales. En cons�quence, nos patients volontaires n'ont pas pu b�n�ficier des traitements appropri�s, et de nombreuses personnes sont mortes. Nos projets de recherche ont subi un retard important. Ces recherches m�dicales doivent b�n�ficier � tout le monde, et cette attaque prolongera les souffrances de nombreuses personnes. Nous ne tol�rons pas ce type d'action, et l'intrus doit �tre �limin� pour assurer la s�curit� de notre r�seau. L'intrus a �t� localis� dans %NPC_WORLD(1). Cette mission doit �tre men�e � bien le plus rapidement possible. Personne ne sait quand le hacker a d�cid� de frapper � nouveau.")
				SAY("Un hacker du nom de %NPC_NAME(1) a coup� le courant dans une de nos stations de r�gulation. Nos recherches ont �t� retard�es, et l'�lectricit� a �t� coup�e pendant une longue p�riode dans de nombreux avant-postes que nous poss�dons. Nous devons assurer la s�curit� de nos employ�s et de nos projets. Il va sans dire que la personne responsable de cet acte criminel doit �tre effac�e. C'est l� o� vous intervenez. Une fois que la cible a �t� retir�e de la circulation, revenez ici. Sa derni�re localisation connue est %NPC_WORLD(1).")
				SAY("En raison d'une coupure de courant caus�e par %NPC_NAME(1), un de nos boucliers anti-radiations a �t� d�sactiv� pendant une longue p�riode, et le personnel n'a pas pu s'�chapper � temps. Plusieurs de nos employ�s ont commenc� � muter et leur cas n�cessitera des semaines de traitement m�dical. Vous avez �t� contact� pour mettre un terme � l'existence de ce sinistre individu, qui a �t� rep�r� %NPC_WORLD(1).")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Je vous ai dit tout ce que vous aviez besoin de savoir. Revenez ici pour toucher votre prime.")
				SAY("Vous ne pouvez avoir acc�s � des informations suppl�mentaires concernant cette mission. J'ai du travail, et vous aussi. Allez accomplir votre mission.")
				SAY("Nos informateurs n'ont pas signal� la mort de la cible. Vous devez accomplir votre mission avant d'envisager quoi que ce soit d'autre.")
				SAY("Vous avez toutes les informations n�cessaires pour accomplir votre mission. Allez chercher ce dont vous avez besoin, agisse, et revenez.")
				ENDDIALOG()
			else
				SAY("Bon travail. La mort de la cible a �t� confirm�e par des sources ind�pendantes. La somme de %REWARD_MONEY() cr�dits a �t� transf�r�e sur votre compte. Nous cherchons toujours � prot�ger nos scientifiques du monde ext�rieur. Toute l'aide que vous pouvez nous apporter est la bienvenue, n'oubliez pas de consulter votre terminal.")
				SAY("Beau travail. Les hackers qui visent notre r�seau sauront quelle est leur place dans l'avenir de la soci�t�. %REWARD_MONEY() cr�dits ont �t� d�pos�s sur votre compte. Contactez-nous par la suite gr�ce � votre terminal pour d'autres missions.")
				SAY("Gr�ce � votre travail, ce criminel ne nous causera plus d'ennuis. Votre contribution � notre succ�s sera r�compens�e. Vous trouverez la somme de %REWARD_MONEY() cr�dits sur votre compte. Si vous avez besoin d'un autre job, veuillez consulter votre terminal.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
end
						
		
			
