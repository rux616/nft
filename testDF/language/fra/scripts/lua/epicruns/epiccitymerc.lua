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

	CANDOEPICRUN(11,0)
-- Fraktion wird �berpr�ft
		if(result==-1)then 

			SAY("Tu n'es pas des n�tres. Arr�te de me faire perdre mon temps... Mais peut-�tre veux-tu nous rejoindre?")
			
			ANSWER("Je viens pour �a en effet. J'aimerais rejoindre CityMercs.",301)
			ANSWER("Ca ne m'int�resse pas. Au revoir.",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(11,0)
			if(result==-2)then
				SAY("Navr�, mais tu as d�j� fait tout ce qui �tait en ton pouvoir pour nous aider. Tu pourrais continuer en cr�ant ton propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(11,0)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(11,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(11,1)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(11,2)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(11,3)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(11,4)
						if(result==-5)then
							SAY("Tu n'as pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(11,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(11,5)
				if(result==-5)then
					SAY("Tu n'as pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(11,5)
				        if(result==-4)then
						SAY("Navr�, mais tu as d�j� fait tout ce qui �tait en ton pouvoir pour nous aider. Tu pourrais continuer en cr�ant ton propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Content de vous voir. Marcel a compl�tement perdu la t�te, il veut se rebeller contre l'Oeil simplement parce qu'il a d�cid� de ne pas attaquer les Anges D�chus. Il veut diviser les Mercs, mais il ne comprend pas que cela pourrait entra�ner notre perte � tous.")

		ANSWER("Oui, j'ai entendu parler de �a.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Cette fois, c'est du s�rieux, soldat. On dira�t que tous nos ennemis ont d�cid� de frapper en m�me temps. On ne peut les laisser s'en tirer comme �a, il faut faire quelque chose.")

		ANSWER("Ceux qui nous menacent doivent se pr�parer � des repr�sailles. Vous pouvez compter sur moi.",201)
		ANSWER("J'ai autre chose � faire d'abord.",204)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		Je vois que vous �tes d�j� Ruban Blanc. J'ai entendu certains ici dire que Marcel vous avait facilit� les choses, mais j'ai choisi de ne pas en tenir compte.")

		ANSWER("J'ai envie d'un peu d'action. Vous avez une mission � me confier?",151)
		ANSWER("Pour l'instant, j'ai d'autres choses � faire. Je vous aiderai plus tard.",153)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Ahh, un tout nouveau Rookie. J'ai du travail pour vous, et vous ne pourrez pas refuser. Vous savez � quoi je fais allusion?")

		ANSWER("Je pense que vous voulez parler de mon ruban blanc?",101)


						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("C'est pas un endroit pour les civils.")

		ANSWER("J'ai d�cid� d'entrer � CityMercs. Je me suis entra�n� pour devenir un Rookie.",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Bienvenue chez CityMercs. J'esp�re que vous avez oubli� tout ce que vous avez v�cu avant, parce que chez nous vous allez commencer une nouvelle vie. Ici, il n'y a que des gens pr�ts � vendre leur �me pour leur m�tier. Le vieux Cajun vous l'expliquerait mieux que moi s'il avait du temps � passer avec chaque nouvelle recrue. C'est notre chef, et tout le monde l'appelle l'Oeil.")

		ANSWER("Compris. Par quoi est-ce qu'on commence?",11)
		ANSWER("Il me faut encore du temps avant de prendre ma d�cision.",15)						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 1
	NODE(11)
		SAY("Pas si vite. Vous aurez tout le temps d'obtenir votre ruban rouge. Nous verrons si vous vous int�grez bien au groupe. De nos jours, les recrues proviennent principalement de la ville. Pour la plupart, ils ne font pas le poids et partent au bout d'une semaine.")

		ANSWER("La vie est si difficile que �a chez les Mercs?",12)
	NODE(12)
		SAY("Si vous passez les premi�res semaines, �a sera plus facile par la suite. Et peut-�tre qu'un jour vous porterez m�me un ruban noir, qui sait.")

		ANSWER("Euh... On ne peut pas dire que �a me rassure.",13)
	NODE(13)
		SAY("Bon. Allons-y doucement. Regardez autour de vous, et r�fl�chissez. Voulez-vous passez votre vie avec nous ou pas? Oh, et avant que j'oublie : vous voulez bien me faire la faveur de livrer ce colis � notre chef de groupe Marcel? Ses hommes ont �t� bless�s lors de la derni�re mission. Il se trouve dans la base militaire, secteur 2. Essayez les diff�rents entrep�ts. Il aime bien cet endroit, ne me demandez pas pourquoi...")

		ANSWER("Bon, tr�s bien. Et si je change d'avis?",14)
	NODE(14)
--PAKET MIT MEDIZIN
		GIVEITEM(9452)
		SAY("Vous me direz �a apr�s la livraison. Vous pouvez aussi demander � des officiers de recrutement de vous donner de nouvelles missions et des infos. Les infos ne restent pas secr�tes bien longtemps chez nous, si vous voyez ce que je veux dire.")

		STARTMISSION(3608)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(15)

		SAY("Comme vous voulez. Revenez quand vous avez d�cid�.")
		
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 2
	NODE(51)
		SAY("Vraiment? Alors j'esp�re que vous savez manier les armes, parce qu'il n'y a pas d'autres moyens. Je pense que vous tr�pignez d�j� d'impatience, alors je ne vais pas vous faire attendre plus longtemps.")

		ANSWER("Continuons, je suis pr�t.",52)
		ANSWER("Je vais encore m'entra�ner un peu.",53)
	NODE(52)
		SAY("Pour devenir un Rookie, vous devez combattre trois personnes de votre choix. On a trouv� des adversaires � votre hauteur, mais �a nous a pris du temps. Le premier s'appelle Frederick, c'est un pr�tendant au grade de Rookie comme vous. Ensuite, vous aurez Claudia et Erik, ils sont d�j� des n�tres. Vous devrez battre l'un d'eux, et ensuite vous serez un Rookie. Revenez lorsque vous avez gagn� votre combat.")
		STARTMISSION(3609)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(53)
		SAY("Vous devriez vraiment vous d�cider.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 3
	NODE(101)
		SAY("Si vous pensez que �a sera une partie de plaisir, laissez-moi vous dire quelque chose. Recevoir un ruban blanc est un honneur. En tant que Rookie, vous �tes d�j� des n�tres, mais si vous avez un Ruban Blanc vous faites vraiment partie de la famille. Cette r�compense vaut vraiment quelque chose.")

		ANSWER("Je vais voir ce que je peux faire. Par quoi est-ce que je commence?",102)
		ANSWER("Je vais encore m'entra�ner. Je ne me sens pas encore � la hauteur.",105)
	NODE(102)
		SAY("Tr�s bien. Alors allez d'abord voir Mitchell, il se trouve juste � l'ext�rieur de la base militaire, dans les Terres Br�l�es. Son travail est d'observer les mouvements des Warbots et de nous avertir en cas de danger. C'est d�j� un ruban noir, mais il semble se plaire dans les Terres Br�l�es.")

		ANSWER("Je pensais que je devais faire trois missions. Quelles sont les deux autres?",103)
		
	NODE(103)
		SAY("Non, pour l'instant je n'ai que cette mission pour vous. Mais je peux demander � Marcel d'organiser quelque chose. Je pense qu'il vous a � la bonne. Il a s�rement des id�es en t�te. Mais allez d'abord voir Mitchell, on l'a pr�venu de votre arriv�e.")
		STARTMISSION(3610)
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(104)
		SAY("Vous trouverez Mitchell � l'ext�rieur de la base militaire. Ensuite, Marcel aura peut-�tre quelque chose pour vous dans le secteur 2.
		ENDDIALOG()
	NODE(105)
		SAY("Bon, vous reviendrez me voir plus tard j'imagine.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 4
	NODE(151)
		SAY("Je pense que oui. Marcel a organis� quelque chose. Tout porte � croire que le client de cette op�ration sera Tangent. Vous trouverez Gerome � l'entr�e de Tech Haven. Il devrait pouvoir vous en dire plus. Je vais contacter les Rubans Noirs et leur dire que vous �tes sur l'affaire.")

		STARTMISSION(3611)		
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(152)
		SAY("Si vous voulez cette mission, vous feriez bien de faire attention � ce que je vous dis. Gerome se trouve pr�s d'une des entr�es de Tech Haven.")
		ENDDIALOG()
	NODE(153)
		SAY("Comme vous voulez. Mais souvenez-vous que vous �tes des n�tres maintenant, et que vous avez une certaine responsabilit�.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMerc 5
	NODE(201)
		SAY("Tr�s bien, j'aime entendre �a. Le probl�me, c'est qu'ils ont recours � des tactiques de gu�rilla. D�s que nous concentrons nos forces pour frapper un grand coup, ils disparaissent. C'est pourquoi nous allons les vaincre avec leur propre tactique, m�me si c'est probablement une manoeuvre � laquelle ils s'attendent.")

		ANSWER("En utilisant de petits groupes pour attaquer leurs points sensibles?",202)
		
	NODE(202)
		SAY("Vous comprenez vite. Nous allons utiliser des soldats isol�s et les frapper l� o� �a fait mal. Vous allez devoir tuer un runner des Gardiens du Cr�puscule, et un runner du Dragon Noir. Cela nous donnera assez de temps pour pr�parer la contre-attaque. Souvenez-vous que vous ne serez pas le seul soldat sur cette mission.")

		ANSWER("Consid�rez-la comme accomplie. Quelque chose � ajouter?",203)
	NODE(203)
		SAY("Oui : ne tuez que des runners qui sont de force �gale � vous. Ignorez les plus forts, et les plus faibles ne sont pas dignes de votre attention Lorsque vous avez fait termin�, Marcel a demand� � vous voir personnellement. Bonne chance, nous comptons sur vous.")
		
		STARTMISSION(3612)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
	NODE(204)
		SAY("Si vous le devez, alors faites-le. Mais d�p�chez-vous, nos ennemis ne nous attendrons pas.")
		ENDDIALOG()
	NODE(205)
		SAY("N'oubliez pas : un runner des Gardiens du Cr�puscule, et un du Dragon Noir. Et allez parler � Marcel quand vous avez termin�.")

		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--CityMercs 6
	NODE(251)
		SAY("Vous pouvez nous aider. Nous soutenons Cajun, aidez-nous � faire le m�nage. On sait que Marcel a suivi votre carri�re de pr�s. Il vous fait confiance, et personne ne peux l'approcher d'aussi pr�s que vous, je pense.")

		ANSWER("Qu'est-ce que vous attendez de moi?",252)
		ANSWER("Pas pour l'instant, j'ai autre chose � faire.",253)
	NODE(252)
		SAY("Vous allez me trouver dur, mais je pense que la bonne m�thode est de le d�fier en duel. Il ne pourra pas refuser, c'est la tradition. Le vainqueur remportera le contr�le de la section. Eljena, un Ruban Rouge de la section de Marcel, a accept� de nous aider. Elle a des informations importantes pour vous. Si vous r�ussissez, revenez me voir et je vous expliquerai la suite des �v�nements. Bonne chance, si vous �chouez les cons�quences seraient tragiques.")
		STARTMISSION(3613)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(253)
		SAY("Vous devriez choisir un autre moment pour nous abandonner. R�fl�chissez encore.")
		ENDDIALOG()
----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occup�. Circulez.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(11)
		if(result>49)then
			SAY("Ravi de l'entendre. Selon votre dossier, vous avez une conduite acceptable. Tr�s bien, il vous co�tera 300.000 cr�dits pour rentrer chez nous.")
	
			ANSWER("Une sacr�e somme!",302)
		else
			SAY("Vous feriez mieux de vous en aller, on ne veut pas de vous ici.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Si vous n'�tes pas pr�t � faire cette d�marche, personne ne vous prendra au s�rieux. On n'aime pas les poules mouill�es ici.")

		ANSWER("Compris, je paie.",303)
		ANSWER("Pas question que je d�bourse un centime pour �a.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Dommage que vous n'ayez pas assez d'argent sur votre compte...")
			ENDDIALOG()
		else
			CHANGEFACTION(11)
			SAY("Bienvenue chez CityMercs.")
			ENDDIALOG()
		end
end