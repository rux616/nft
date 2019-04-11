--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Grand
--1,D,McMillan



--Startnode, Person
--0 Human Resource
--50 Grand
--100 McMillan


-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("On ne peut plus continuer comme �a. Chaque jour de nouvelles rumeurs sont diffus�es sur le r�seau, et BioTech est attaqu�e � chaque fois. On ne peut pas faire face � tant de hackers diff�rents.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("BioTech a d�cid� de d�terminer qui tire les ficelles de toute cette histoire. Lorsque nous l'aurons trouv�, ces rumeurs dispara�tront. Tue la t�te, le corps mourra, c'est comme cela depuis toujours et je ne vois pas pourquoi �a changerait.")
		
		ANSWER("Je vais faire de mon mieux pour aider BioTech. Par quoi est-ce que je commence?",2)
		ANSWER("Si c'est � moi que vous pensez pour vous aider, d�sol� mais pour l'instant c'est impossible...",5)
	NODE(2)
		SAY("Il semble que ce hacker, celui qui se fait appeler Grand, correspond � ce que nous avons en t�te. Allez le voir � nouveau. Persuadez-le de trouver qui a commenc� tout �a. Qui a lanc� cette guerre ouverte contre nous.")
		
		ANSWER("C'est comme si c'�tait fait.",3)
	NODE(3)
		SAY("Vous pourrez lui proposer 10.000 cr�dits, je pense que �a l'aidera � se d�cider. Evidemment, cette d�pense sera pr�vue dans votre budget. Bonne chance.")
		
		ANSWER("CONTINUER",4)
	NODE(4)
		SAY("Si vous r�ussissez � convaincre le hacker, allez ensuite voir McMillan. Il va vous expliquer les prochaines �tapes.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(5)
		SAY("BioTech aurait pourtant bien appr�ci� votre aide sur ce coup... Vous ne nous aidez pas beaucoup, vous savez.")
		ENDDIALOG()
		
	NODE(6)
		SAY("Vous avez vu Grand dans l'Outzone 01?")
		ENDDIALOG()
		

-----------------------------------------------------
--Grand

	NODE(50)
		SAY("Pas encore vous! Je pensais en avoir fini avec vous!!")
		
		ANSWER("Il y a encore un petit quelque chose que j'aimerais vous demander...",51)

	NODE(51)
		SAY("Je vous ai d�j� tout dit! Qu'est-ce que vous me voulez encore?")
		
		ANSWER("C'est simple. Nous voulons savoir qui est derri�re toutes ces rumeurs. Et vous, vous allez d�couvrir qui c'est.",52)
	NODE(52)
		SAY("Je proteste! Je ne vais pas me laisser exploiter!")
		
		ANSWER("BioTech veut vous donner 10.000 cr�dits si vous acceptez de travailler pour nous. C'est toujours non?",53)

	NODE(53)
		SAY("10.000 cr�dits rien que pour moi? Alors je peux peut-�tre vous aider � faire quelque chose. Mais �a ne va pas �tre facile.")
		
		ANSWER("Si c'�tait facile, j'aurais �t� surpris.",54)
	NODE(54)
		SAY("Lorsque j'aurai ces 10.000 creds, je commencerai � mener mon enqu�te. Ca prendra un certain temps, mais je pense pouvoir y arriver. Mais je pourrais avoir besoin d'un peu d'aide.")
		
		ANSWER("Quel genre d'aide?",55)

	NODE(55)
		SAY("Il existe une sorte de warbot dans les Terres Br�l�es. Ils ont un code d'identification sp�cial imprim� sur leurs micropuces.")
		
		ANSWER("CONTINUER",56)
	NODE(56)
		SAY("Si j'utilise ce code, personne ne pourra me rep�rer, tout le monde pensera que c'est un warbot qui fouille le r�seau. Pour moi, c'est la s�curit� assur�e.")
		
		ANSWER("Si c'est vraiment n�cessaire, alors je vais m'en charger. Chaque jour de nouvelles rumeurs sont diffus�es sur le r�seau, alors on ferait mieux de se d�p�cher. O� est-ce que je peux trouver ce warbot?",57)

	NODE(57)
		SAY("C'est tout simple. Allez dans le secteur i 07 des Terres Br�l�es. Vous y trouverez non seulement une unit� de production, l'usine Emmerson si je me souviens bien, mais vous verrez aussi les warbots en question. Allez me trouver une de ces micropuces. Mais je pense que pour l'obtenir il vous faudra d'abord mettre le warbot hors de combat. Bonne chance!")
		SETNEXTDIALOGSTATE(58)
		ENDDIALOG()

--SPieler holt Warbot Microchips

	NODE(58)
		TAKEITEM(9203)
		if(result==0)then
			SAY("Sans le code de s�curit�, je vais me faire rep�rer en un rien de temps. Vous feriez mieux d'aller me chercher ce sont j'ai besoin.")
			ENDDIALOG()
		else
			SAY("Merci. Maintenant, �a peut prendre un certain temps. Je vais envoyer les r�sultats directement � BioTech, compris? Maintenant, j'esp�re vraiment que c'est la derni�re fois qu'on se parle.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(59)
			ENDDIALOG()
			
		end

	NODE(59)
		SAY("Je vous ai dit que �a allait prendre un certain temps. Plus vous me d�rangez, plus �a prendra de retard. Vous feriez mieux d'attendre chez Biotech.")
		ENDDIALOG()
		


-----------------------------------------------------
--McMillan

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ne vous adressez � moi que si vous avec des informations importantes.")
			ENDDIALOG()
		else
			SAY("Vous voil�! D�cid�ment, on ne parle que de vous � BioTech. Et avec votre aide, on va finir par vaincre cet oiseau de malheur qui commence � nous taper sur les nerfs.")
		
			ANSWER("Grand, le hacker, a accept� de rep�rer la personne qui est derri�re tout �a. Il va transmettre ses r�sultats directement ici. Mais �a peut prendre encore un certain temps.",101)
		end
	NODE(101)
		GIVEMONEY(30000)
		GIVEITEM(9204,255)
		SAY("Bien, tr�s bien. Lorsque nous saurons qui a commenc� tout �a, nous aurons encore besoin de votre aide. Mais nous reparlerons de tout cela le moment venu. Pour l'instant, voil� 30.000 cr�dits pour vous, vous avez �t� d'une aide inestimable. Et je pense que cet implant viendra � point nomm� pour votre prochaine mission. Allez vous entra�ner, vous en aurez besoin...")
		EPICRUNFINISHED(5,4)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		

end