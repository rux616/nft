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

	CANDOEPICRUN(9,0)
-- Fraktion wird überprüft
		if(result==-1)then 

			SAY("Tu n'es pas des nôtres. Arrête de me faire perdre mon temps... Mais peut-être veux-tu nous rejoindre?")
			
			ANSWER("Je viens pour ça en effet. J'aimerais rejoindre le Dragon Noir.",301)
			ANSWER("Ca ne m'intéresse pas. Au revoir.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(9,0)
			if(result==-2)then
				SAY("Navré, mais tu as déjà fait tout ce qui était en ton pouvoir pour nous aider. Tu pourrais continuer en créant ton propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(9,0)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'expérience. Reviens quand tu auras un peu plus d'entraînement. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(9,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(9,1)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience. Reviens quand tu auras un peu plus d'entraînement. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(9,2)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience. Reviens quand tu auras un peu plus d'entraînement. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(9,3)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience. Reviens quand tu auras un peu plus d'entraînement. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(9,4)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'expérience. Reviens quand tu auras un peu plus d'entraînement. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(9,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(9,5)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'expérience. Reviens quand tu auras un peu plus d'entraînement. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(11,5)
				        if(result==-4)then
						SAY("Navré, mais tu as déjà fait tout ce qui était en ton pouvoir pour nous aider. Tu pourrais continuer en créant ton propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Il était temps que tu passes. Lucy m'a dit qu'elle voulait te parler. Mais fais attention, Gecko n'aime pas les gens qui tournent autour de sa nana.")
		STARTMISSION(3620)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Leone veut te parler. On commence à parler de toi partout, alors fais attention, c'est pas toujours bon signe.")
		STARTMISSION(3619)
		SETNEXTDIALOGSTATE(0)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Ecoute. Lucky sait que tu l'as doublé. T'es grillé avec lui, et malgré ça, il a demandé à te parler. T'as une veine de cocu, c'est moi qui t'le dis. Si ça tenait qu'à moi...")
		STARTMISSION(3618)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Ecoute, c'est la chance de ta vie. Tu ferais mieux de te tenir à carreaux. Va parler à Lucky au QG, il m'a dit que c'était à propos de Leone. Me demande pas ce qu'il a en tête, j'en ai aucune idée.")
		STARTMISSION(3617)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Salauds de Tsunami. Tu t'es déjà frotté à eux?")

		ANSWER("Parfois. Et ça s'est jamais bien terminé.",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Si tu t'imagines que ça va te tomber tout cuit dans la bouche, tire-toi. Tu vas bosser dur comme tout le monde. Et ça se bouscule, crois-moi.")

		ANSWER("Dis-moi un peu ce que vous faites ici, je vais pas commencer à bosser pour quelqu'un que je connais pas.",11)
					
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 1
	NODE(11)
		SAY("Déjà, tu vas commencer par apprendre le respect, on te prendra plus au sérieux. Pourquoi faut toujours que les bleus aient aucune éducation, bordel?!")

		ANSWER("Pas la peine de me parler comme ça, je comprends très bien quand on me crie pas dessus.",12)
	NODE(12)
		SAY("Bon, d'accord. J'essaie pas de te mettre dehors, mais avec tous ces Tsunami, on sait jamais à qui on a affaire. Alors je vais te demander de faire un peu tes preuves pour commencer. Ensuite, je répondrai à tes questions.")

		ANSWER("Pas de souci, je suis prêt à tout.",13)
	NODE(13)
		SAY("Si tu agis tout le temps comme ça, tu iras loin, c'est moi qui te le dis. Mais rappelle-toi toujours notre première règle, sinon tu feras pas long feu ici.")

		ANSWER("J'écoute...",14)
	NODE(14)
		GIVEITEM(9460)
--DRUGPAKET
		SAY("Pas de regrets et pas de pitié! C'est mauvais pour les affaires, compris? Maintenant que tu connais les subtilités, tu vas nous faire une petite livraison. Manuel est un de nos dealers, et il commence à manquer de stock. Tu vas l'approvisionner en lui portant ça au secteur 08. Il se trouve dans une des allées. Ensuite, tu reviens me voir. Sauf si bien sûr tu veux causer un peu aux gens du coin d'abord. Mais attention, t'avise pas de t'approcher de Lucy, t'as compris? Parle plutôt à Leone ou Lucky si tu veux rencontrer des gens bien.")
		STARTMISSION(3615)
		SETNEXTDIALOGSTATE(100)

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 2
	NODE(51)
		SAY("Ca m'étonne pas. Après tout, ça remonte à loin, tout ça. Mais hier, ils ont tabassé un de nos dealers, ces enflures. Enfin bon, Leone a du boulot pour toi. Tu connais la chanson, va lui parler directement. Il est au QG.")
		STARTMISSION(3616)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 3

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 4

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 5
	
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Black Dragon 6

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occupé. Dégage.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(9)
		if(result>49)then
			SAY("Ravi de l'entendre... Bon dossier! Ca fera 300.000 creds pour rentrer chez nous.")
	
			ANSWER("C'est pas donné...",302)
		else
			SAY("Alors fiche le camp si tu veux pas payer.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Si tu veux pas payer, on te prendra jamais au sérieux. On aime les gars sérieux ici.")

		ANSWER("Compris, je paie.",303)
		ANSWER("Pas question que je débourse un centime pour ça.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("On diraît bien que tu es fauché...")
			ENDDIALOG()
		else
			CHANGEFACTION(9)
			SAY("Bienvenue chez le Dragon Noir.")
			ENDDIALOG()
		end
end