--new
--Anti Neocron

function DIALOG()
NODE(0)
--CANDOEPICRUN(factionid, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(9,0)
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Tu n'es pas des nôtres, va-t-en. A moins que tu veuilles nous rejoindre ?")
			
			ANSWER("C'est pour ça que je viens, justement.",301)
			ANSWER("Non, ça m'intéresse pas...",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(9,0)
			if(result==-2)then
				SAY("Désolé, mais la seule aide que tu peux nous apporter maintenant est de fonder un clan pour soutenir notre cause.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(9,0)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'expérience, reviens plus tard. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(9,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(9,1)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience, reviens plus tard. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(9,2)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience, reviens plus tard. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(9,3)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience, reviens plus tard. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(9,4)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience, reviens plus tard. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(9,5)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'expérience, reviens plus tard. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(9,5)
				        if(result==-4)then
						SAY("Désolé, mais la seule aide que tu peux nous apporter maintenant est de fonder un clan pour soutenir notre cause.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Tu devrais commencer à avoir tes points de repère à présent. Peut-être que le général aura une mission pour toi.")

		STARTMISSION(3607)
		SETNEXTDIALOGSTATE(0)
		ENDDIALOG()	
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Il y a rien a voir ici, décampe.")
		
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Il y a rien a voir ici, décampe.")
		
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Il y a rien a voir ici, décampe.")
		
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Pour le moment, tu peux tenter de tirer quelques crédits de l'avant-poste du Dôme de York. Secteur J 08, je pense que tu connais déjà le chemin.")
		
		STARTMISSION(3606)
		SETNEXTDIALOGSTATE(0)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Tu as probablement remarqué l'alliance imminente avec le Dôme de York, j'imagine ? A cet emplacement, on peut trouver un avant-poste à moitié dissimulé. J'y suis déjà allé, alors je te raconte pas d'histoires, c'est pas mon genre.")
		
		ANSWER("Je ne comprends pas ce que tu veux dire. Qu'est-ce que cet endroit a de si spécial ?",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--ANTIREGIERUNGSFRAKTION 1
	NODE(11)
		SAY("Ils sont en train de préparer quelque chose, et je sens que c'est pas un pique-nique. Si j'avais un peu plus de tripes, je serais allé les rejoindre. Ils recherchent des runners dans ton genre, et ils les paient bien. Malheureusement, notre faction n'a pas de missions à te proposer. Pour l'instant, du moins.")
		
		ANSWER("J'imagine qu'ils ne vont pas me payer pour ne rien faire. Alors, quelle est l'astuce ?",12)
	NODE(12)
		SAY("Leurs missions ne m'ont pas l'air simples. Tuer des runners, faire de l'espionnage, des choses de ce genre. Moi, ça ne me dit rien. Mais si tu te sens à la hauteur...")
		
		ANSWER("Je comprends. Je vais peut-être aller y faire un tour. Tu peux me donner l'emplacement exact ?",13)
	NODE(13)
		SAY("Si tu sais où regarder, c'est pas très difficile de trouver. Mais fais attention, l'endroit est bien gardé. Va voir du côté du secteur J 08.")
		

		STARTMISSION(3605)
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(14)
		SAY("Souviens-toi : le secteur J 08 !")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--ANTIREGIERUNGSFRAKTION 2

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--ANTIREGIERUNGSFRAKTION 3

------------------------------------------------------------------------------
------------------------------------------------------------------------------
-- 4

------------------------------------------------------------------------------
------------------------------------------------------------------------------
-- 5

------------------------------------------------------------------------------
------------------------------------------------------------------------------
-- 6

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("On a rien à se dire.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(9)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, ton statut est tout ce qu'il y a de respectable. Très bien, il t'en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné !",302)
		else
			SAY("Alors va-t-en. On a pas besoin de gens comme toi ici.")
		end
	NODE(302)
		SAY("Si tu veux pas payer, ça montre bien que tu comptes pas rester dans notre camp.")

		ANSWER("Bon, très bien, je vais payer.",303)
		ANSWER("Pas question, je vais pas dépenser tant d'argent pour ça.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Allez, avoue que t'as honte de pas pouvoir aligner les sous !")
			ENDDIALOG()
		else
			CHANGEFACTION(9)
			SAY("Bienvenue dans ta nouvelle faction.")
			ENDDIALOG()
		end
end
