--new
--BioTech

function DIALOG()
NODE(0)
--CANDOEPICRUN(factionid, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICMISSIONERROR_MISSIONRUNNING		-6
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(6,0)
-- Prüfen ob bereits eine Mission läuft
		if (result==-6) then
			SAY("Désolé, vous devez terminer la mission en cours avant d'en accepter une nouvelle.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Je suis navré, mais vous ne faites pas partie de notre faction. Alors ne me faites pas perdre mon temps. A moins que vous songiez à nous rejoindre?!")
			
			ANSWER("C'est pour cela que je viens. Je voudrais rejoindre votre faction",301)
			ANSWER("Ca ne m'intéresse pas du tout. Au revoir.",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(6,0)
			if(result==-2)then
				SAY("Maintenant que vous avez fait tout ce que vous pouviez pour nous, la seule manière de nous aider est de fonder votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(6,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(6,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(6,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(6,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(6,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(6,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(6,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore les connaissances nécessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(6,5)
				        if(result==-4)then
						SAY("Maintenant que vous avez fait tout ce que vous pouviez pour nous, la seule manière de nous aider est de fonder votre propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("M. George a paru assez tendu lorsqu'il m'a contacté. Il m'a dit que vous deviez le rencontrer aussi rapidement que possible. Ne me demandez pas pourquoi, je n'en sais rien.")
		STARTMISSION(3614)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("J'ai un message pour vous, de la part de Michail, de la section 13. Il a demandé à vous parler en personne. Vous savez déjà où il se trouve, j'imagine?")
		STARTMISSION(3592)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()		
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Brandon George m'a demandé de vous dire qu'il avait besoin de vous. Vous devriez aller le voir tout de suite. J'ai entendu dire que Sandra Frasier lui avait donné les pleins pouvoirs dans cette affaire. Je pense que la mission sera très importante. Bonne chance, quoi que vous fassiez.")

		STARTMISSION(3591)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Qu'est-ce que je peux faire pour vous?")
		
		ANSWER("George a laissé un message pour moi?",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Vous avez enquêté sur le mail mystérieux, c'est bien ça? Celui qui demandait qu'on abandonne ProtoPharm?")

		ANSWER("Je dirais même que j'ai apporté beaucoup de réponses à ce sujet.",51)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Bienvenue chez ProtoPharm. Comment puis-je vous aider?")

		ANSWER("Comme je travaille pour ProtoPharm, j'ai pensé que je pouvais vous donner un coup de main.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Disons plutôt que vous êtes à court d'argent, c'est ça? Mais peu importe. Nous n'avons pas de dossier sur vous, donc je ne vais pouvoir vous donner que des missions basiques. Michail, un de nos employés, a perdu son assistant à la suite d'un malheureux accident de laboratoire. Heureusement, cet assistant n'a été que légèrement blessé. Vous pourriez le remplacer en lui donnant un coup de main. Est-ce que ça vous intéresse?")

		ANSWER("Evidemment, c'est exactement le genre de travail que je recherche. Où est-ce que je peux rencontrer Michail? Et surtout, qu'est-ce que ça va m'apporter?",12)
	NODE(12)
		SAY("Vous le trouverez ici au QG. Et vous toucherez 1000 crédits pour ce travail. Mais si vous faites preuve de sérieux, votre salaire pourra augmenter.")

		ANSWER("Très bien, je vais y aller. Où est-ce que je dois me rendre, déjà?",13)
	NODE(13)
		SAY("C'est très simple. Allez dans le laboratoire adjacent à la tour ProtoPharm. Mais ne touchez à rien, nos appareils sont très fragiles.")
		


		STARTMISSION(3588)		
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(14)
		SAY("Si vous voulez remplacer l'assistante de Michail, vous allez devoir vous rendre au labo. Je pense que vous le trouverez là-bas.")
		ENDDIALOG()

		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Alors M. George va avoir besoin de vous. Dépêchez-vous, il vous attend. Je vous aurais bien contacté plus tôt, mais vous n'arrêtez pas de vous déplacer, vous êtes difficile à joindre. Vous le trouverez dans la tour.")

		STARTMISSION(3589)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(52)
		SAY("Brandon George vous attend. Il fait partie d'un groupe d'enquête de ProtoPharm.")

		ENDDIALOG()	


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Je regarde... Oui, il dit qu'il a décrypté les données, et il vous attend à l'emplacement habituel.")

		STARTMISSION(3590)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(102)
		SAY("George vous attend à l'emplacement habituel.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)
		SAY("George vous cherche partout. Alors dépêchez-vous d'aller lui parler.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
	NODE(201)
		SAY("Michail, du secteur 13, a demandé à vous parler. Vous le trouverez au labo.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
	NODE(251)
		SAY("Vous devriez aller parler à George.")
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis quelqu'un de très occupé. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(6)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",302)
		else
			SAY("Vous feriez mieux de vous en aller, on n'a pas besoin de gens de votre espèce chez nous.")
		end
	NODE(302)
		SAY("Si vous n'êtes pas prêt à dépenser cet argent, on n'a aucune raison de croire que vous voulez vraiment entrer chez nous. Si vous payez, ce sera un signe de dévouement envers notre cause.")

		ANSWER("Très bien, je vais payer.",303)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(3)
			SAY("Bienvenue chez ProtoPharm.")
			ENDDIALOG()
		end

end