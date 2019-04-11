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
-- Pr�fen ob bereits eine Mission l�uft
		if (result==-6) then
			SAY("D�sol�, vous devez terminer la mission en cours avant d'en accepter une nouvelle.")
			ENDDIALOG()
			-- now prevent any other node to come through
			state = -1
		end
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Je suis navr�, mais vous ne faites pas partie de notre faction. Alors ne me faites pas perdre mon temps. A moins que vous songiez � nous rejoindre?!")
			
			ANSWER("C'est pour cela que je viens. Je voudrais rejoindre votre faction",301)
			ANSWER("Ca ne m'int�resse pas du tout. Au revoir.",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(6,0)
			if(result==-2)then
				SAY("Maintenant que vous avez fait tout ce que vous pouviez pour nous, la seule mani�re de nous aider est de fonder votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(6,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(6,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(6,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(6,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(6,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(6,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(6,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(6,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(6,5)
				        if(result==-4)then
						SAY("Maintenant que vous avez fait tout ce que vous pouviez pour nous, la seule mani�re de nous aider est de fonder votre propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("M. George a paru assez tendu lorsqu'il m'a contact�. Il m'a dit que vous deviez le rencontrer aussi rapidement que possible. Ne me demandez pas pourquoi, je n'en sais rien.")
		STARTMISSION(3614)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("J'ai un message pour vous, de la part de Michail, de la section 13. Il a demand� � vous parler en personne. Vous savez d�j� o� il se trouve, j'imagine?")
		STARTMISSION(3592)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()		
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Brandon George m'a demand� de vous dire qu'il avait besoin de vous. Vous devriez aller le voir tout de suite. J'ai entendu dire que Sandra Frasier lui avait donn� les pleins pouvoirs dans cette affaire. Je pense que la mission sera tr�s importante. Bonne chance, quoi que vous fassiez.")

		STARTMISSION(3591)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Qu'est-ce que je peux faire pour vous?")
		
		ANSWER("George a laiss� un message pour moi?",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Vous avez enqu�t� sur le mail myst�rieux, c'est bien �a? Celui qui demandait qu'on abandonne ProtoPharm?")

		ANSWER("Je dirais m�me que j'ai apport� beaucoup de r�ponses � ce sujet.",51)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Bienvenue chez ProtoPharm. Comment puis-je vous aider?")

		ANSWER("Comme je travaille pour ProtoPharm, j'ai pens� que je pouvais vous donner un coup de main.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Disons plut�t que vous �tes � court d'argent, c'est �a? Mais peu importe. Nous n'avons pas de dossier sur vous, donc je ne vais pouvoir vous donner que des missions basiques. Michail, un de nos employ�s, a perdu son assistant � la suite d'un malheureux accident de laboratoire. Heureusement, cet assistant n'a �t� que l�g�rement bless�. Vous pourriez le remplacer en lui donnant un coup de main. Est-ce que �a vous int�resse?")

		ANSWER("Evidemment, c'est exactement le genre de travail que je recherche. O� est-ce que je peux rencontrer Michail? Et surtout, qu'est-ce que �a va m'apporter?",12)
	NODE(12)
		SAY("Vous le trouverez ici au QG. Et vous toucherez 1000 cr�dits pour ce travail. Mais si vous faites preuve de s�rieux, votre salaire pourra augmenter.")

		ANSWER("Tr�s bien, je vais y aller. O� est-ce que je dois me rendre, d�j�?",13)
	NODE(13)
		SAY("C'est tr�s simple. Allez dans le laboratoire adjacent � la tour ProtoPharm. Mais ne touchez � rien, nos appareils sont tr�s fragiles.")
		


		STARTMISSION(3588)		
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(14)
		SAY("Si vous voulez remplacer l'assistante de Michail, vous allez devoir vous rendre au labo. Je pense que vous le trouverez l�-bas.")
		ENDDIALOG()

		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("Alors M. George va avoir besoin de vous. D�p�chez-vous, il vous attend. Je vous aurais bien contact� plus t�t, mais vous n'arr�tez pas de vous d�placer, vous �tes difficile � joindre. Vous le trouverez dans la tour.")

		STARTMISSION(3589)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(52)
		SAY("Brandon George vous attend. Il fait partie d'un groupe d'enqu�te de ProtoPharm.")

		ENDDIALOG()	


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Je regarde... Oui, il dit qu'il a d�crypt� les donn�es, et il vous attend � l'emplacement habituel.")

		STARTMISSION(3590)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(102)
		SAY("George vous attend � l'emplacement habituel.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)
		SAY("George vous cherche partout. Alors d�p�chez-vous d'aller lui parler.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
	NODE(201)
		SAY("Michail, du secteur 13, a demand� � vous parler. Vous le trouverez au labo.")
		ENDDIALOG()

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
	NODE(251)
		SAY("Vous devriez aller parler � George.")
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis quelqu'un de tr�s occup�. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(6)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les donn�es que j'ai ici, votre statut est tout ce qu'il y a de respectable. Tr�s bien, il vous en co�tera 300.000 cr�dits.")
	
			ANSWER("Eh bien, �a n'est pas donn�!",302)
		else
			SAY("Vous feriez mieux de vous en aller, on n'a pas besoin de gens de votre esp�ce chez nous.")
		end
	NODE(302)
		SAY("Si vous n'�tes pas pr�t � d�penser cet argent, on n'a aucune raison de croire que vous voulez vraiment entrer chez nous. Si vous payez, ce sera un signe de d�vouement envers notre cause.")

		ANSWER("Tr�s bien, je vais payer.",303)
		ANSWER("Laissez tomber. Je ne vais pas d�penser tant d'argent pour une futilit�.",300)
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