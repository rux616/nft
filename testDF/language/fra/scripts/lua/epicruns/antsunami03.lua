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
--DOY RÜSTUNG + WAFFE
--DoY Raygun 477
--DoY helmet 9435
function DIALOG()
--------------------------------------------------------------------
--Aufgabenverteiler
--0
	
	NODE(0)
		SAY("Tu devrais commencer à avoir tes points de repère à présent. Peut-être que le général aura une mission pour toi.")

		ENDDIALOG()
	
--------------------------------------------------------------------
--GENERAL BABEL
--50
	NODE(50)
		SAY("On m'a signalé que tu avais prouvé ta valeur au champ d'honneur, soldat. Félicitations. Est-ce que tu sais ce que sont les plans de Ceres ? Est-ce que tu sais que Neocron nous les a volés ?")

		ANSWER("Je sais que ces plans contiennent toute la connaissance de l'humanité.",51)
	NODE(51)
		SAY("Oui, et nos cyborgs portent d'ailleurs le nom de Ceres. Neocron a même réussi à en dupliquer quelques uns. Nous devons savoir si ces cyborgs sont identiques aux nôtres ou non. Va dans le secteur C 12, et empare-toi de quelques pièces de deux Y. Trooper Replicant Cyborgs. Nous verrons alors à quoi nous avons affaire.")
		SETNEXTDIALOGSTATE(52)
		ENDDIALOG()

--SPIELER BESORGT CYBORG TEILE

	NODE(52)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Les cibles ont été repérées dans le secteur C 12, il s'agit de Y. Trooper Replicant Cyborgs. Prends les pièces que tu peux récupérer dessus, et reviens en vitesse.")
			ENDDIALOG()
		else
			TAKEITEM(9434)
--CYBORG CHIP
			if(result==0)then
				SAY("Il nous faut ces pièces de Y. Trooper Replicant Cyborg pour analyse.")
				ENDDIALOG()
			else
				SAY("Bon travail, soldat. On se souviendra des gens comme toi après notre victoire. Pendant qu'on analyse ces pièces, tu pourrais peut-être nous aider dans les Terres Brûlées. Neocron nous dérange, et ils sont près de découvrir nos projets. Occupe-toi d'un runner de Biotech et d'un runner de ProtoPharm, pour l'exemple. Ca les refroidira quelques temps. Va les tuer, et reviens. D'ici là, on devrait en savoir plus. Si tu réponds à nos attentes, je te donnerai de l'équipement supplémentaire.")

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
				SAY("Je t'ai demandé de tuer un runner de BioTech et un runner de ProtoPharm. Maintenant, au travail.")
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

				SAY("Dommage que tu ne viennes pas du Dôme de York, parce que tu as une carrière brillante. Les pièces de cyborg que tu nous a ramenées sont presque identiques aux nôtres. Par exemple, ils ont enlevé le processeur de contrôle autonome. Cela signifie que leurs cyborgs ne sont pas en mesure de prendre des décisions autonomes, alors que les nôtres si.")

				ANSWER("Donc ce ne sont que de mauvaises copies ?",55)
	
			end
		end
	NODE(55)
		SAY("Exact. Ils ne pourront pas rivaliser avec nos troupes. Mais je pense qu'ils ont maintenant de bonnes informations sur notre propre technologie. Ils ont peut-être même déjà des armes spécialement pensées pour contrer nos unités.")

		ANSWER("Neocron ne se rendra pas sans combattre, c'est évident.",56)
	NODE(56)
		SAY("C'est la raison pour laquelle nous allons utiliser différentes stratégies. L'une d'elles est de donner nos armes à des runners isolés, pour qu'ils puissent attaquer CityAdmin. Personne ne pourra prédire quand tombera la prochaine attaque, avec un nombre si élevé d'unités individuelles.")

		ANSWER("Intéressant, mais j'aimerais aussi rappeler qu'on m'avait promis des armes.",57)
	NODE(57)
		GIVEMONEY(60000)
		GIVEITEM(477,255)
		GIVEITEM(9435,255)
--DOY RÜSTUNG UND WAFFE
		SAY("Pas d'inquiétude, tu en auras. Une arme issue de notre nouvelle technologie, et une armure. L'arme utilise des munitions standard. Le Dôme de York te remercie pour ton aide. Considère ce matériel comme une prime.")

		
	
		EPICRUNFINISHED(14,5)			
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end
