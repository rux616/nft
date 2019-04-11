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
		SAY("Je vois que vous �tes d�j� Ruban Blanc. J'ai entendu certains ici dire que Marcel vous avait facilit� les choses, mais j'ai choisi de ne pas en tenir compte.")

		ANSWER("J'ai envie d'un peu d'action. Vous avez une mission � me confier?",1)
		ANSWER("Pour l'instant, j'ai d'autres choses � faire. Je vous aiderai plus tard.",3)
	NODE(1)
		SAY("Je pense que oui. Marcel a organis� quelque chose. Tout porte � croire que le client de cette op�ration sera Tangent. Vous trouverez Gerome � l'entr�e de Tech Haven. Il devrait pouvoir vous en dire plus. Je vais contacter les Rubans Noirs et leur dire que vous �tes sur l'affaire.")
		SETNEXTDIALOGSTATE(2)
		STARTMISSION()		
		ENDDIALOG()
		
	NODE(2)
		SAY("Si vous voulez cette mission, vous feriez bien de faire attention � ce que je vous dis. Gerome se trouve pr�s d'une des entr�es de Tech Haven.")
		ENDDIALOG()
		
	NODE(3)
		SAY("Comme vous voulez. Mais souvenez-vous que vous �tes des n�tres maintenant, et que vous avez une certaine responsabilit�.")

		ENDDIALOG()
--------------------------------------------------------------------
--Gerome
--50
	NODE(50)
		SAY("Ah, je me souviens de vous. Ca y est, vous avez votre Ruban Blanc? On vous a d�j� expliqu� l'op�ration?")

		ANSWER("Ce que je sais, c'est que c'est un contrat avec Tangent. Mais c'est tout.",51)
	NODE(51)
		SAY("C'est exact. Nous avons d�j� localis� la cible. Il s'est enfui dans le village Tawkeen. Evidemment, il ne va pas s'en sortir comme �a. La mission est de l'attaquer. La cible est arm�e, et tr�s dangereuse, alors mettez-y les moyens. Il transporte sur lui un DataCube, que vous devrez remettre � Marcel. C'est compris?")

		ANSWER("Oui. Il y aura des renforts?",52)
	NODE(52)
		SAY("Des renforts? Mais il n'y a qu'une seule cible! Allons, vous pensiez � quoi? Une escadre enti�re? Nous ne sommes pas en position d'envoyer tant de Mercs pour une seule cible. Vous pouvez emmener des gens pour vous aider, mais je vous pr�viens que c'est vous qui allez devoir faire la plus grosse partie du travail. Ainsi, vous vous assurerez que le DataCube n'a pas �t� endommag� pendant le combat. Bonne chance.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(53)
		ENDDIALOG()
	
		
	NODE(53)
		SAY("Vous savez pourquoi tout le monde aime CityMercs? Parce que nous faisons du bon travail, que nous sommes professionnels. Alors allez faire votre travail. Lorsque vous avez r�cup�r� le DataCube, rapportez-le � Marcel, dans la Base Militaire.")
		ENDDIALOG()


--------------------------------------------------------------------
--Nicolas
--100
--Spieler muss Nico looten
	NODE(100)
	
		SAY("Partez tout de suite, je ne veux pas �tre d�couvert.")
		ATTACK()
		ENDDIALOG()
--------------------------------------------------------------------
--Marcel
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je suis occup�, vous n'avez rien d'autre � faire que de me parler?")
			ENDDIALOG()
		else
			SAY("Vous avez aim� votre premi�re mission en tant que Ruban Blanc? Gerome m'a pr�venu que c'est lui qui vous avait donn� cette mission.")

			ANSWER("Je veux une explication tout de suite. Le DataCube montre qu'il appartient � un Ange D�chu .C'est un Ange D�chu que j'ai attaqu�.",151)
		end
	NODE(151)
		SAY("Oui, et alors?")

		ANSWER("L'Oeil ne veux pas qu'on les attaque.",152)
	NODE(152)
		SAY("Ok, �coutez-moi bien. Vous avez deux possibilit�s. Cajun, ou moi. Si vous n'aimez pas la mani�re dont je traite les probl�mes, vous pouvez aller voir Cajun quand vous voulez. Mais ne parlez plus de �a devant moi. Compris?")

		ANSWER("Je vais y r�fl�chir.",153)
	NODE(153)
		GIVEMONEY(10000)
		SAY("Ce serait dommage de voir un Ruban Blanc talentueux mal finir juste parce qu'il n'a pas choisi le bon camp. Mais je vous conseille en attendant de vous pr�parer pour la prochaine mission. Ca ne va pas �tre plus facile. Mais j'ai aussi de bonnes nouvelles pour vous : comme vous avez �t� bless� en mission, vous avez obtenu votre Ruban Roue. La prochaine fois qu'on se verra, vous serez dans la cour des grands. (prochaine mission au niveau 40)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(11,3)	
		ENDDIALOG()
	


end