--new
--CityMerc

--
--Trigger
--Triggernumber,Type,Person
--0,D,Gerome 50
--1, Loot, Nico 
--2,D, Marcel
--3
--
--Startnode, Person
--0, Soldat
--50, Gerome
--100, Nicolas
--150, Marcel
--200,
--250,
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Je vois que vous êtes déjà Ruban Blanc. J'ai entendu certains ici dire que Marcel vous avait facilité les choses, mais j'ai choisi de ne pas en tenir compte.")

		ANSWER("J'ai envie d'un peu d'action. Vous avez une mission à me confier?",1)
		ANSWER("Pour l'instant, j'ai d'autres choses à faire. Je vous aiderai plus tard.",3)
	NODE(1)
		SAY("Je pense que oui. Marcel a organisé quelque chose. Tout porte à croire que le client de cette opération sera Tangent. Vous trouverez Gerome à l'entrée de Tech Haven. Il devrait pouvoir vous en dire plus. Je vais contacter les Rubans Noirs et leur dire que vous êtes sur l'affaire.")
		SETNEXTDIALOGSTATE(2)
		STARTMISSION()		
		ENDDIALOG()
		
	NODE(2)
		SAY("Si vous voulez cette mission, vous feriez bien de faire attention à ce que je vous dis. Gerome se trouve près d'une des entrées de Tech Haven.")
		ENDDIALOG()
		
	NODE(3)
		SAY("Comme vous voulez. Mais souvenez-vous que vous êtes des nôtres maintenant, et que vous avez une certaine responsabilité.")

		ENDDIALOG()
--------------------------------------------------------------------
--Gerome
--50
	NODE(50)
		SAY("Ah, je me souviens de vous. Ca y est, vous avez votre Ruban Blanc? On vous a déjà expliqué l'opération?")

		ANSWER("Ce que je sais, c'est que c'est un contrat avec Tangent. Mais c'est tout.",51)
	NODE(51)
		SAY("C'est exact. Nous avons déjà localisé la cible. Il s'est enfui dans le village Tawkeen. Evidemment, il ne va pas s'en sortir comme ça. La mission est de l'attaquer. La cible est armée, et très dangereuse, alors mettez-y les moyens. Il transporte sur lui un DataCube, que vous devrez remettre à Marcel. C'est compris?")

		ANSWER("Oui. Il y aura des renforts?",52)
	NODE(52)
		SAY("Des renforts? Mais il n'y a qu'une seule cible! Allons, vous pensiez à quoi? Une escadre entière? Nous ne sommes pas en position d'envoyer tant de Mercs pour une seule cible. Vous pouvez emmener des gens pour vous aider, mais je vous préviens que c'est vous qui allez devoir faire la plus grosse partie du travail. Ainsi, vous vous assurerez que le DataCube n'a pas été endommagé pendant le combat. Bonne chance.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()
	
		
	NODE(53)
		SAY("Vous savez pourquoi tout le monde aime CityMercs? Parce que nous faisons du bon travail, que nous sommes professionnels. Alors allez faire votre travail. Lorsque vous avez récupéré le DataCube, rapportez-le à Marcel, dans la Base Militaire.")
		ENDDIALOG()


--------------------------------------------------------------------
--Nicolas
--100
--Spieler muss Nico looten
	NODE(100)
	
		SAY("Partez tout de suite, je ne veux pas être découvert.")
		ATTACK()
		ENDDIALOG()
--------------------------------------------------------------------
--Marcel
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je suis occupé, vous n'avez rien d'autre à faire que de me parler?")
			ENDDIALOG()
		else
			SAY("Vous avez aimé votre première mission en tant que Ruban Blanc? Gerome m'a prévenu que c'est lui qui vous avait donné cette mission.")

			ANSWER("Je veux une explication tout de suite. Le DataCube montre qu'il appartient à un Ange Déchu .C'est un Ange Déchu que j'ai attaqué.",151)
		end
	NODE(151)
		SAY("Oui, et alors?")

		ANSWER("L'Oeil ne veux pas qu'on les attaque.",152)
	NODE(152)
		SAY("Ok, écoutez-moi bien. Vous avez deux possibilités. Cajun, ou moi. Si vous n'aimez pas la manière dont je traite les problèmes, vous pouvez aller voir Cajun quand vous voulez. Mais ne parlez plus de ça devant moi. Compris?")

		ANSWER("Je vais y réfléchir.",153)
	NODE(153)
		GIVEMONEY(10000)
		SAY("Ce serait dommage de voir un Ruban Blanc talentueux mal finir juste parce qu'il n'a pas choisi le bon camp. Mais je vous conseille en attendant de vous préparer pour la prochaine mission. Ca ne va pas être plus facile. Mais j'ai aussi de bonnes nouvelles pour vous : comme vous avez été blessé en mission, vous avez obtenu votre Ruban Roue. La prochaine fois qu'on se verra, vous serez dans la cour des grands. (prochaine mission au niveau 40)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(11,3)	
		ENDDIALOG()
	


end