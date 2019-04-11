--new
--CityMerc

function DIALOG()
NODE(0)
--CANDOEPICRUN(8, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(8, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(15,0)
		if (result==-6) then
			SAY("Je suis désolé, mais vous devez d'abord terminer votre mission.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird überprüft
		if(result==-1)then 

			SAY("Tu n'es pas des nôtres, va-t-en. A moins que tu veuilles nous rejoindre?")
			
			ANSWER("Justement, ça m'intéresse.",301)
			ANSWER("Pas question. Au revoir.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(15,0)
			if(result==-2)then
				SAY("La seule manière de nous aider maintenant est de fonder ton propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(15,0)
				if(result==-5)then
					SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(15,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(15,1)
						if(result==-5)then
							SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(15,2)
						if(result==-5)then
							SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(15,3)
						if(result==-5)then
							SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(15,4)
						if(result==-5)then
							SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(15,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(15,5)
				if(result==-5)then
					SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(15,5)
				        if(result==-4)then
						SAY("La seule manière de nous aider maintenant est de fonder ton propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("J'ai entendu dire que tu allais apprendre les bonnes manières au NeoKorps, c'est vrai?")

		ANSWER("En effet.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Donnovan m'a appris l'emplacement de la rencontre NeoKorps. C'est quelque part dans le secteur A 06, le long de la côte. Désolé, j'ai aucune mémoire des chiffres. Ton job sera de descendre le leader des NeoKorps. Ensuite, tu pourras venir chercher ta paie. Dépêche-toi de descendre ce type. Une fois que tu as fini, pense aussi à voir Tovall, je pense qu'il voudra marquer le coup en te récompensant.")

		ANSWER("D'accord...",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("On entend de plus en plus de rumeurs au sujet d'une police secrète mise en place par eza. Ils ont déjà réussi à abattre un grand nombre de nos membres. Ils semblent être violents et très efficaces.")

		ANSWER("On sait autre chose sur eux?",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Les Fils de l'Anarchie ont des problèmes avec CityAdmin, une fois de plus. Heureusement, Reza ne leur a pas envoyé ses CopBots cette fois. Sinon, nos amis seraient dans une sale situation.")

		ANSWER("Les Fils de l'Anarchie? Au fait, pourquoi est-ce qu'on est alliés avec eux?",101)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("T'as entendu parler de notre dernière victoire? On a détruit une usine d'armes. Mais ça a été plus difficile que prévu. Enfin, on sait que Reza n'a pas le peuple avec lui. A long terme, il n'a aucune chance.")

		ANSWER("Des nouvelles de Donnovan? Je pense que je suis prêt à l'aider à nouveau, je me suis entraîné.",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Bienvenue chez les Gardiens du Crépuscule. Tu n'es pas le seul à condamner les mensonges de la dictature de Neocron. Comme tu viens d'arriver, j'imagine que tu ne fais pas encore partie d'une cellule d'action?")

		ANSWER("En effet, j'arrive juste. Et je viens rendre à Reza la monnaie de sa pièce.",11)
					
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 1
	NODE(11)
		SAY("Excellent. On a besoin de gens comme toi. Donnovan va te donner tes directives. C'est un grand combattant, il a participé à de nombreux affrontements.")

		ANSWER("Parfait, je vais lui parler tout de suite.",12)
	NODE(12)
		SAY("Tu ne pourras pas le manquer, il garde l'entrée du QG.")

		STARTMISSION(3621)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 2
	NODE(51)
		SAY("Oui, je me souviens. Il m'a dit que tu allais devoir faire tes preuves contre Heff et Tovall. Un peu de combat contre de vrais adversaires, ça peut pas faire de mal. Tu les trouveras dans le coin, près de l'entrée du QG. Va parler à Donnovan ensuite. Il est convaincu que tu vas bien t'en tirer.")
		
		STARTMISSION(3622)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 3

	NODE(101)
		SAY("Parce que Reza est notre ennemi commun. On a différents projets au final, une fois que Reza sera renversé, mais pour l'instant on n'y pense pas trop.")

		ANSWER("Très bien. Je voulais savoir si Donnovan avait un autre boulot pour moi.",102)
	NODE(102)
		SAY("J'en sais rien, mais va lui demander. Tu sais où le trouver, non?")
		STARTMISSION(3623)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 4
	NODE(151)
		SAY("J'espérais qu'en te disant ça, tu aies d'autres éléments à ajouter, mais je vois que tu n'en sais pas plus que nous. Tiens, j'y pense, Donnovan a quelque chose de spécial pour toi.")

		ANSWER("Excellent, je vais le voir tout de suite.",152)
	NODE(152)
		SAY("D'accord. Moi, je pense payer n'importe quelle information sur cette police secrète, donc si tu entends quelque chose...")
		STARTMISSION(3624)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 5
	NODE(201)
		GIVEITEM(9483)
--CASHCUBE
		SAY("Excellent. Dessoude le commandant des NeoKorps, et pas de quartier. Essaie une des stations radio qui se trouvent dans ce secteur, tu trouveras peut-être quelqu'un qui l'a vu passer.")
		STARTMISSION(3625)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Twilight Guardian 6
	NODE(251)
		SAY("Alors tu as ma bénédiction. Jade t'attend dans Outzone 04. Va leur montrer de quoi on est capables!")
		STARTMISSION(3626)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occupé, fiche-moi la paix.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(15)
		if(result>49)then
			SAY("Content de l'apprendre. Ton statut chez nous est correct, tu peux venir si tu paies 300.000 crédits.")
	
			ANSWER("Sacrée somme.",302)
		else
			SAY("On veut pas de toi dans la faction, dégage.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Personne ne te prendra au sérieux si tu refuses ce genre de dépenses.")

		ANSWER("Compris, je paie.",303)
		ANSWER("Pas grave, je vais pas en faire un ulcère.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Dommage que tu n'aies pas assez d'argent.")
			ENDDIALOG()
		else
			CHANGEFACTION(15)
			SAY("Bienvenue chez les Gardiens du Crépuscule.")
			ENDDIALOG()
		end
end