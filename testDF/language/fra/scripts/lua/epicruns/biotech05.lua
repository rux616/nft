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
		SAY("On ne peut plus continuer comme ça. Chaque jour de nouvelles rumeurs sont diffusées sur le réseau, et BioTech est attaquée à chaque fois. On ne peut pas faire face à tant de hackers différents.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("BioTech a décidé de déterminer qui tire les ficelles de toute cette histoire. Lorsque nous l'aurons trouvé, ces rumeurs disparaîtront. Tue la tête, le corps mourra, c'est comme cela depuis toujours et je ne vois pas pourquoi ça changerait.")
		
		ANSWER("Je vais faire de mon mieux pour aider BioTech. Par quoi est-ce que je commence?",2)
		ANSWER("Si c'est à moi que vous pensez pour vous aider, désolé mais pour l'instant c'est impossible...",5)
	NODE(2)
		SAY("Il semble que ce hacker, celui qui se fait appeler Grand, correspond à ce que nous avons en tête. Allez le voir à nouveau. Persuadez-le de trouver qui a commencé tout ça. Qui a lancé cette guerre ouverte contre nous.")
		
		ANSWER("C'est comme si c'était fait.",3)
	NODE(3)
		SAY("Vous pourrez lui proposer 10.000 crédits, je pense que ça l'aidera à se décider. Evidemment, cette dépense sera prévue dans votre budget. Bonne chance.")
		
		ANSWER("CONTINUER",4)
	NODE(4)
		SAY("Si vous réussissez à convaincre le hacker, allez ensuite voir McMillan. Il va vous expliquer les prochaines étapes.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(5)
		SAY("BioTech aurait pourtant bien apprécié votre aide sur ce coup... Vous ne nous aidez pas beaucoup, vous savez.")
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
		SAY("Je vous ai déjà tout dit! Qu'est-ce que vous me voulez encore?")
		
		ANSWER("C'est simple. Nous voulons savoir qui est derrière toutes ces rumeurs. Et vous, vous allez découvrir qui c'est.",52)
	NODE(52)
		SAY("Je proteste! Je ne vais pas me laisser exploiter!")
		
		ANSWER("BioTech veut vous donner 10.000 crédits si vous acceptez de travailler pour nous. C'est toujours non?",53)

	NODE(53)
		SAY("10.000 crédits rien que pour moi? Alors je peux peut-être vous aider à faire quelque chose. Mais ça ne va pas être facile.")
		
		ANSWER("Si c'était facile, j'aurais été surpris.",54)
	NODE(54)
		SAY("Lorsque j'aurai ces 10.000 creds, je commencerai à mener mon enquête. Ca prendra un certain temps, mais je pense pouvoir y arriver. Mais je pourrais avoir besoin d'un peu d'aide.")
		
		ANSWER("Quel genre d'aide?",55)

	NODE(55)
		SAY("Il existe une sorte de warbot dans les Terres Brûlées. Ils ont un code d'identification spécial imprimé sur leurs micropuces.")
		
		ANSWER("CONTINUER",56)
	NODE(56)
		SAY("Si j'utilise ce code, personne ne pourra me repérer, tout le monde pensera que c'est un warbot qui fouille le réseau. Pour moi, c'est la sécurité assurée.")
		
		ANSWER("Si c'est vraiment nécessaire, alors je vais m'en charger. Chaque jour de nouvelles rumeurs sont diffusées sur le réseau, alors on ferait mieux de se dépêcher. Où est-ce que je peux trouver ce warbot?",57)

	NODE(57)
		SAY("C'est tout simple. Allez dans le secteur i 07 des Terres Brûlées. Vous y trouverez non seulement une unité de production, l'usine Emmerson si je me souviens bien, mais vous verrez aussi les warbots en question. Allez me trouver une de ces micropuces. Mais je pense que pour l'obtenir il vous faudra d'abord mettre le warbot hors de combat. Bonne chance!")
		SETNEXTDIALOGSTATE(58)
		ENDDIALOG()

--SPieler holt Warbot Microchips

	NODE(58)
		TAKEITEM(9203)
		if(result==0)then
			SAY("Sans le code de sécurité, je vais me faire repérer en un rien de temps. Vous feriez mieux d'aller me chercher ce sont j'ai besoin.")
			ENDDIALOG()
		else
			SAY("Merci. Maintenant, ça peut prendre un certain temps. Je vais envoyer les résultats directement à BioTech, compris? Maintenant, j'espère vraiment que c'est la dernière fois qu'on se parle.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(59)
			ENDDIALOG()
			
		end

	NODE(59)
		SAY("Je vous ai dit que ça allait prendre un certain temps. Plus vous me dérangez, plus ça prendra de retard. Vous feriez mieux d'attendre chez Biotech.")
		ENDDIALOG()
		


-----------------------------------------------------
--McMillan

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ne vous adressez à moi que si vous avec des informations importantes.")
			ENDDIALOG()
		else
			SAY("Vous voilà! Décidément, on ne parle que de vous à BioTech. Et avec votre aide, on va finir par vaincre cet oiseau de malheur qui commence à nous taper sur les nerfs.")
		
			ANSWER("Grand, le hacker, a accepté de repérer la personne qui est derrière tout ça. Il va transmettre ses résultats directement ici. Mais ça peut prendre encore un certain temps.",101)
		end
	NODE(101)
		GIVEMONEY(30000)
		GIVEITEM(9204,255)
		SAY("Bien, très bien. Lorsque nous saurons qui a commencé tout ça, nous aurons encore besoin de votre aide. Mais nous reparlerons de tout cela le moment venu. Pour l'instant, voilà 30.000 crédits pour vous, vous avez été d'une aide inestimable. Et je pense que cet implant viendra à point nommé pour votre prochaine mission. Allez vous entraîner, vous en aurez besoin...")
		EPICRUNFINISHED(5,4)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		

end