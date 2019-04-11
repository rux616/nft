--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D, Simmons 50
--1,D, Simmons 150
--2,D, Simmons 250
--3,D, Human Resource Director 300
--
--Startnode, Person
--0, Human Resource Director
--50, Simmons
--100, Crazy Dillan
--150, Simmons
--200, Max Delavare
--250, Simmons
--300, Human resource Director
--
--Items
--Paket mit Wohnungsschlüsseln. 100 Crazy 9351
--CATHRINE ID CUBE 9355

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Ravi de vous revoir. Les choses ont évolué pendant votre absence. Le Dragon Noir ne nous laisse pas de répit, et en attendant la mise en place du contrat avec CityMercs nous perdons beaucoup de clients. Et maintenant, on sait que certains ont pensé tirer avantage de la situation actuelle.")

		ANSWER("Je vois que les vautours se pressent...",1)
	NODE(1)
		SAY("Une compagnie immobilière indépendante est en train de tirer avantage de la situation pour vendre ses logements à un prix plus élevé. Nous ne pouvons pas tolérer cette situation.")

		ANSWER("Je comprends, ça n'est pas bon pour les affaire. Qu'est-ce qu'on peut faire?",2)
	NODE(2)
		SAY("Diamond veut donner à tous ses vendeurs de Diamond un pourcentage sur leurs ventes. Ainsi, nous aurons plus de vendeurs, plus d'appartements, et cela nous permettra d'écraser la compétition.")

		ANSWER("Logique. Mais l'opération va coûter cher. Et moi, qu'est-ce que je fais dans cette histoire?",3)
		ANSWER("Si vous êtes en train de me proposer une mission, j'ai bien peur de devoir vous faire attendre.",5)
	NODE(3)
		SAY("J'allais vous demander de convaincre un revendeur indépendant de rejoindre notre compagnie. Salaire à débattre.")

		ANSWER("Je peux essayer. Mais ces indépendants ne sont en général pas faciles à convaincre.",4)
	NODE(4)
		SAY("Si vous réussissez, Diamond aura une prime pour vous aussi. Bonne chance. Il s'appelle Simmons, je pense que vous le trouverez dans Pepper Park 02. On a organisé une rencontre dans un des restaurants de ce quartier. Il n'y en a pas beaucoup, vous devriez le repérer facilement.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(5)
		SAY("C'est comme vous voulez. Mais on ne sera pas toujours en mesure de vous proposer des missions.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Simmons
--50
	NODE(50)
		SAY("Vous êtes de Diamond?")

		ANSWER("Si vous êtes Simmons, oui. C'est à vous que je dois parler. Vous pouvez m'accorder un peu de votre temps?",51)
	NODE(51)
		SAY("Vous venez vraiment de Diamond?")

		ANSWER("Vous semblez sceptique. Oui, c'est bien avec moi que vous avez rendez-vous.",52)
	NODE(52)
		SAY("Très bien. J'ai toujours l'impression d'être suivi. Toutes les nuits, on entend des tirs d'arme au plasma, et des hurlements dans Pepper park. Si on est pas sur ses gardes tout le temps, autant se faire sauter le caisson tout de suite, le résultat sera le même.")

		ANSWER("N'oubliez pas les GenReps, il y en a partout.",53)
	NODE(53)
		SAY("Quoi, vous voulez dire le clonage? Réfléchissez un peu. Imaginez-vous en train de crevez dans une allée sombre, dans un tas de poubelles. Et votre code génétique est dupliqué. Je vous le demande: est-ce que vous êtes le clone, ou plutôt le cadavre vautré dans le tas de poubelles? Et le clone n'est-il pas simplement quelqu'un d'autre qui prend votre place?")

		ANSWER("Ca vaut le coup d'y réfléchir.",54)
	NODE(54)
		SAY("C'est pour ça que j'ai choisi un travail où on ne prend pas de risques. L'immobilier. Mais même ce secteur est devenu un terrain de chasse. Il y a des membres du Dragon Noir partout, et ils sont prêts à me tuer. Les Tsunami, c'est du pareil au même, mais heureusement qu'ils se fichent de l'immobilier.")

		ANSWER("Et c'est pour ça que je suis là. Diamond a une proposition à vous faire.",55)
	NODE(55)
		SAY("Une proposition? Arrêtez de vous moquer de moi, c'est pas plutôt un piège?")

		ANSWER("Non, pas du tout. Diamond veut vraiment vous engager.",56)
	NODE(56)
		SAY("Moi, travailler pour Diamond? Ah non, en ce moment c'est vraiment pas possible.")

		ANSWER("C'est dommage. Mais si jamais vous changez d'avis...",57)
	NODE(57)
		SAY("Attendez! Je viens de changer d'avis, justement... mais à une condition!")

		ANSWER("Voilà qui est mieux. J'écoute.",58)
	NODE(58)
		SAY("Voilà... J'ai des problèmes avec certaines personnes. Je suis dedans jusqu'au cou.")

		ANSWER("Vous avez besoin d'argent? Je pense que Diamond pourrait...",59)
	NODE(59)
		SAY("Non, non, pas d'argent. Enfin si, de l'argent si vous voulez, mais j'ai vraiment besoin d'aide. Si vous m'aidez, alors j'entrerai chez Diamond. Je suis au bout du rouleau, vous savez!")

		ANSWER("Pourquoi? En quoi est-ce qu'on peut vous aider?",60)
	NODE(60)
		SAY("C'est... C'est ma femme. Elle a été kidnappée par un type. Certainement du Dragon Noir. Leur chef s'appelle Max. J'en sais pas plus. Ils ont menacé de la tuer si je ne leur donnais pas les clés des appartements que j'ai. C'est affreux, je ne sais pas du tout quoi faire. Je ne mange plus, je ne dors plus. Je ne sais pas ce que je ferais si quelque chose lui arrivait.")

		ANSWER("C'est incroyable... Bon, je vais faire tout ce que je peux pour vous aider. Dites-moi seulement ce qu'il faut que je fasse.",61)
	NODE(61)
		SAY("j'ai un ami qui garde des clés en sécurité pour moi. Mais les kidnappeurs m'ont donné un ultimatum, et je n'ai pas le temps d'aller chercher toutes les clés. Vous voulez bien les chercher chez mon ami? Je le préviendrai de votre visite.")

		ANSWER("Et où est-ce que je peux le trouver, votre ami?",62)
	NODE(62)
		SAY("Il est un peu bizarre, mais faut pas avoir peur de lui. C'est un membre des Fils de l'Anarchie, il se trouve aux portes de la ville. Il s'appelle Crazy Dillan. Je vais attendre que vous reveniez, dépêchez-vous.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()	

--------------------------------------------------------------------
-- Crazy Dillan
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Donne-moi ton argent! Ou plutôt non, je vais le prendre moi-même.")
			ATTACK()
			ENDDIALOG()
		else
			SAY("Yo, runner! Quelle surprise! T'as de l'argent à me donner, ou bien faut que je vienne me servir moi-même? Je te préviens, je suis un habitué des GenReps, j'ai pas peur de la mort!")

			ANSWER("Du calme. C'est Simmons qui m'envoie.",101)
		end
	NODE(101)
		SAY("Ben pourquoi tu l'as pas dit plus tôt? C'est vache, ce qui est arrivé à sa bergère. Si ces bâtards montrent le bout de leur nez, je vais leur en faire voir de toutes les couleurs.")

		ANSWER("Je ne sais pas qui ils sont, mais ils sont violents.",102)
	NODE(102)
--Packet mit Schlüsseln
		GIVEITEM(9351)
		SAY("Alors qu'est-ce que vous attendez? Tenez, prenez ces clés et retournez voir Simmons, runner. On joue plus, c'est du sérieux!")
		
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
		
	NODE(103)
		SAY("Dépêche-toi, runner! Simmons a besoin de toi!")
		ENDDIALOG()

	
--------------------------------------------------------------------
--Simmons
--150
	NODE(150)
--Schlüssel
		TAKEITEM(9351)
		if(result==0)then
			SAY("Allez, j'ai vraiment besoin de ces clés. Crazy Dillan doit vous attendre à l'extérieur de la ville, pas très loin des portes.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Bien bien, vous avez les clés? Alors je vous suggère d'aller voir ce type dans Outzone 5. C'est dangereux, mais c'est pas moi qui décide. Vous voulez bien faire ça pour moi?")

			ANSWER("Une minute... Pourquoi vous n'y allez pas vous-même? C'est votre femme, après tout.",151)
		end
	NODE(151)
		SAY("Je... disons que j'ai eu de mauvaises expériences dans l'Outzone.")

		ANSWER("De mauvaises expériences?!! Vous allez devoir vous ressaisir, c'est tout de même votre femme!",152)
	NODE(152)
		SAY("OK!! JE ME CHIE DESSUS QUAND JE VAIS DANS L'OUTZONE!! Ca va, vous êtes content comme ça? Vous en avez assez? Je vous en supplie, aidez-moi à la sauver de ces enflures.")

		ANSWER("Très bien, je vais m'en occuper. Mais n'oubliez pas notre marché.",153)
	NODE(153)
		SAY("Merci, merci beaucoup. Vous me donnez un grand coup de main. Je vais attendre que vous deveniez ici tous les deux.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

		
	

--------------------------------------------------------------------
-- Max Delavare
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Fiche le camp!")
			ENDDIALOG()
		else
			SAY("Tu veux quoi, runner? Tu as perdu ton chemin?")

			ANSWER("Je vous apporte les clés des appartements pour que vous relâchiez Catherine.",201)
		end
	NODE(201)
		SAY("Ah, il s'est enfin décidé à nous payer? Je parie qu'il est déjà en train de se pisser dessus. Mais faut admettre que sa femme était un beau morceau. Bon, maintenant, les clefs, avant que je sois obligé de vous refroidir.")

		ANSWER("Une minute... 'était'? Qu'est-ce que vous lui avez fait?",202)
	NODE(202)
		GIVEITEM(9355)

		SAY("Mais non, te fais pas de bile. Tu la trouveras quelque part dans le secteur industriel 01. Voilà un cube ID qu'on a trouvé sur elle. Maintenant, les clefs!")

		ANSWER("Non, tant que je n'ai pas la preuve que Catherine est vivante vous ne toucherez rien.",203)
	NODE(203)
		SAY("Casse-toi de là, moucheron!")
		SETNEXTDIALOGSTATE(204)
		ENDDIALOG()

	NODE(204)
		SAY("Va te faire foutre!")
		ENDDIALOG()

--------------------------------------------------------------------
-- Simmons
--250
	NODE(250)
		TAKEITEM(9355)
--CATHRINE ID CUBE
		if(result==0)then
			SAY("Allez voir Max, et ramenez-moi ma Catherine. Ou du moins dites-moi où elle se trouve. Une preuve, un objet, n'importe quoi...")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(251)
			SAY("Ne me faites pas attendre. Où est Catherine?")
		
			ANSWER("Je ne sais pas vraiment. Je n'ai pu avoir que ce DataCube contenant quelques notes écrites par elle.",251)
		end
	NODE(251)
		SAY("Oh mon dieu! Comment est-ce possible??")
		
		ANSWER("Je suis désolé. Bon, je pense que je vais vous laisser...",252)
	NODE(252)
		TAKEITEM(9351)
		if(result==0)then
			SAY("Ma pauvre Catherine... Qu'est-ce que je vais faire maintenant? Hein?")
			ACTIVATEDIALOGTRIGGER(2)
			SETNEXTDIALOGSTATE(253)
			ENDDIALOG()
		else
			SAY("Ma pauvre Catherine... Qu'est-ce que je vais faire maintenant? Hein?")
			ACTIVATEDIALOGTRIGGER(2)
			SETNEXTDIALOGSTATE(253)
			ENDDIALOG()
		end
	NODE(253)
		SAY("laissez-moi tranquille. Je n'ai pas envie de parler pour l'instant. Retournez dans votre compagnie.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Human Resource Director
--300

	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Essayez de convaincre Simmons de rejoindre nos rangs. Vous le trouverez dans Pepper Park 02.")
			ENDDIALOG()
		else
			SAY("Ah, vous revoilà. Alors, qu'est-ce que ça a donné?")
		
			ANSWER("Je ne veux pas en parler. Le pauvre homme a déjà trop souffert.",301)
		end
	NODE(301)
		SAY("Les temps sont durs pour nous tous. Peut-être pourrons-nous réessayer un peu plus tard. Diamond vous donnera une autre chance. Vous devriez vous entraîner et devenir un peu plus persuasif la prochaine fois. (prochaine mission au niveau 35)")
		EPICRUNFINISHED(2,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end