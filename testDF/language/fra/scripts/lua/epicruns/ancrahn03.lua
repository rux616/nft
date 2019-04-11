--new
--Antiregierungsfraktionen

--
--Trigger
--Triggernumber,Type,Person
--0,LOOT,BABEL CERES Cyborgs
--1,PvP, Babel 1 BT
--2,PvP, Babel 1 PP
--3
--
--Startnode, Person
--0, Aufgabenverteiler
--50, BABEL
--100, 
--150,
--200,
--250,
--
--Items
--CYBORG CHIP 50 9434
--DOY R�STUNG + WAFFE
--DoY Raygun 477
--DoY helmet 9435
function DIALOG()
--------------------------------------------------------------------
--Aufgabenverteiler
--0
	
	NODE(0)
		SAY("Tu devrais commencer � avoir tes points de rep�re � pr�sent. Peut-�tre que le g�n�ral aura une mission pour toi.")

		ENDDIALOG()
	
--------------------------------------------------------------------
--GENERAL BABEL
--50
	NODE(50)
		SAY("On m'a signal� que tu avais prouv� ta valeur au champ d'honneur, soldat. F�licitations. Est-ce que tu sais ce que sont les plans de Ceres ? Est-ce que tu sais que Neocron nous les a vol�s ?")

		ANSWER("Je sais que ces plans contiennent toute la connaissance de l'humanit�.",51)
	NODE(51)
		SAY("Oui, et nos cyborgs portent d'ailleurs le nom de Ceres. Neocron a m�me r�ussi � en dupliquer quelques uns. Nous devons savoir si ces cyborgs sont identiques aux n�tres ou non. Va dans le secteur C 12, et empare-toi de quelques pi�ces de deux Y. Trooper Replicant Cyborgs. Nous verrons alors � quoi nous avons affaire.")
		SETNEXTDIALOGSTATE(52)
		ENDDIALOG()

--SPIELER BESORGT CYBORG TEILE

	NODE(52)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Les cibles ont �t� rep�r�es dans le secteur C 12, il s'agit de Y. Trooper Replicant Cyborgs. Prends les pi�ces que tu peux r�cup�rer dessus, et reviens en vitesse.")
			ENDDIALOG()
		else
			TAKEITEM(9434)
--CYBORG CHIP
			if(result==0)then
				SAY("Il nous faut ces pi�ces de Y. Trooper Replicant Cyborg pour analyse.")
				ENDDIALOG()
			else
				SAY("Bon travail, soldat. On se souviendra des gens comme toi apr�s notre victoire. Pendant qu'on analyse ces pi�ces, tu pourrais peut-�tre nous aider dans les Terres Br�l�es. Neocron nous d�range, et ils sont pr�s de d�couvrir nos projets. Occupe-toi d'un runner de Biotech et d'un runner de ProtoPharm, pour l'exemple. Ca les refroidira quelques temps. Va les tuer, et reviens. D'ici l�, on devrait en savoir plus. Si tu r�ponds � nos attentes, je te donnerai de l'�quipement suppl�mentaire.")

				ANSWER("Cette mission ferait bien de valoir le coup.",53)
			end
		end
	NODE(53)
		SAY("Si c'est ton seul souci, alors n'aie pas peur. Maintenant, au travail.")

		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()

--SPIELER KILLT EINEN PROTOPHARM UND EINEN BIOTECH RUNNER

	NODE(54)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			ISMISSIONTARGETACCOMPLISHED(2)
			if(result==0)then
				SAY("Je t'ai demand� de tuer un runner de BioTech et un runner de ProtoPharm. Maintenant, au travail.")
				ENDDIALOG()
			else
				SAY("Trouve un runner de BioTech et aplatis-le. Et enduite tu toucheras ta prime.")
				ENDDIALOG()
			end		

		else
			ISMISSIONTARGETACCOMPLISHED(2)
			if(result==0)then
				SAY("Il faut encore que tu aplatisses un runner de ProtoPharm pour toucher ta prime.")
				ENDDIALOG()
			else

				SAY("Dommage que tu ne viennes pas du D�me de York, parce que tu as une carri�re brillante. Les pi�ces de cyborg que tu nous a ramen�es sont presque identiques aux n�tres. Par exemple, ils ont enlev� le processeur de contr�le autonome. Cela signifie que leurs cyborgs ne sont pas en mesure de prendre des d�cisions autonomes, alors que les n�tres si.")

				ANSWER("Donc ce ne sont que de mauvaises copies ?",55)
	
			end
		end
	NODE(55)
		SAY("Exact. Ils ne pourront pas rivaliser avec nos troupes. Mais je pense qu'ils ont maintenant de bonnes informations sur notre propre technologie. Ils ont peut-�tre m�me d�j� des armes sp�cialement pens�es pour contrer nos unit�s.")

		ANSWER("Neocron ne se rendra pas sans combattre, c'est �vident.",56)
	NODE(56)
		SAY("C'est la raison pour laquelle nous allons utiliser diff�rentes strat�gies. L'une d'elles est de donner nos armes � des runners isol�s, pour qu'ils puissent attaquer CityAdmin. Personne ne pourra pr�dire quand tombera la prochaine attaque, avec un nombre si �lev� d'unit�s individuelles.")

		ANSWER("Int�ressant, mais j'aimerais aussi rappeler qu'on m'avait promis des armes.",57)
	NODE(57)
		GIVEMONEY(60000)
		GIVEITEM(477,255)
		GIVEITEM(9435,255)
--DOY R�STUNG UND WAFFE
		SAY("Pas d'inqui�tude, tu en auras. Une arme issue de notre nouvelle technologie, et une armure. L'arme utilise des munitions standard. Le D�me de York te remercie pour ton aide. Consid�re ce mat�riel comme une prime.")

		
	
		EPICRUNFINISHED(14,5)			
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end
