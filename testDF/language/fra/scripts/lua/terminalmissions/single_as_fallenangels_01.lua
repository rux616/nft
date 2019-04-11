function DIALOG()
-- single_as_fallen
-- description single_as_01

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
				SAY("R�cemment, nous avons d�couvert que %NPC_NAME(1) volait des donn�es importantes concernant nos recherches et les revendait au march� noir. Il est vital que cette cible soit �limin�e avant que d'autres donn�es soient ainsi diffus�es. La derni�re fois que la cible a t�l�charg� des informations, nous avons pu rep�rer son signal et la localiser dans %NPC_WORLD(1). La seule chose dont nous ayons besoin actuellement est que vous mettiez un terme � son existence. D�p�chez-vous, la cible poss�de encore des donn�es nous appartenant, et ces donn�es peuvent �tre vendues sur le march� noir � tout moment.")
				SAY("Au cours d'une enqu�te interne, nous avons mis � jour une op�ration de contrebande dirig�e par %NPC_NAME(1). Cette personne a d�rob� des donn�es confidentielles et les a revendues au plus offrant. Nous avons remont� la source des op�rations dans %NPC_WORLD(1). Occupez-vous de la cible et revenez ici.")
				SAY("Certains de nos informateurs sur le march� noir de Neocron nous ont signal� une op�ration de contrebande organis�e par %NPC_NAME(1). La cible se trouve dans %NPC_WORLD(1). Eliminez cette cible aussi vite que possible. Nous devons nous assurer que nos recherches ne tombent pas entre des mains peu scrupuleuses. Lorsque vous avez fini, revenez me voir.")
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
				SAY("Beau travail. Les hackers qui visent notre r�seau sauront quelle est leur place dans l'avenir de la soci�t�. %REWARD_MONEY() cr�dits ont �t� d�pos�s sur votre compte. Recontactez-nous par la suite gr�ce � votre terminal pour d'autres missions.")
				SAY("Gr�ce � votre travail, ce criminel ne nous causera plus d'ennuis. Votre contribution � notre succ�s sera r�compens�e. Vous trouverez la somme de %REWARD_MONEY() cr�dits sur votre compte. Si vous avez besoin d'un autre job, veuillez consulter votre terminal.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
end
						
		
			
