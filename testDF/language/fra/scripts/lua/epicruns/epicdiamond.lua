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
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(2,0)
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Vous n'�tes pas des n�tres. Arr�tez de me faire perdre mon temps... Mais peut-�tre voulez-vous nous rejoindre?")
			ANSWER("Je viens pour �a en effet. J'aimerais rejoindre Diamond.",301)
			ANSWER("Ca ne m'int�resse pas. Au revoir.",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(2,0)
			if(result==-2)then
				SAY("Navr�, mais vous avez d�j� fait tout ce qui �tait en votre pouvoir pour nous aider. Vous pourriez continuer en cr�ant votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(2,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(2,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(2,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(2,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 0)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(2,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(2,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(2,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(2,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore assez d'exp�rience. Revenez quand vous avez un peu plus d'entra�nement. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(2,5)
				        if(result==-4)then
						SAY("Navr�, mais vous avez d�j� fait tout ce qui �tait en votre pouvoir pour nous aider. Vous pourriez continuer en cr�ant votre propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("J'ai maintenant une r�ponse d�finitive d'Eric Danmund en personne. Il semble avoir d�clar� l'�tat d'urgence, et a accept� de coop�rer avec Tsunami. C'est une information secr�te, et je ne vous en parle que parce que vous avez ma confiance. Alors, vous �tes pr�t � d�barrasser Diamond du Dragon Noir?")

		ANSWER("Et pas qu'un peu!",251)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Vous tombez � pic, on a justement besoin de vous pour une nouvelle mission. Nos pertes grandissent jour apr�s jour parce que le Dragon Noir continue de faire fuir nos clients. De nombreux employ�s ont peur pour leur poste, et je ne fais pas exception � la r�gle.")

		ANSWER("La situation est vraiment si mauvaise? Je ne pensais pas qu'on en �tait arriv� l�.",201)
		ANSWER("J'ai des choses plus urgentes � faire en ce moment.",207)			
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Si vous vous sentez pr�t, voil� une nouvelle chance de convaincre Simmons. Gr�ce � vos efforts, il a finalement d�cid� de nous rejoindre. Il semblait tr�s d�termin�.")

		ANSWER("Il a �t� rapide pour r�cup�rer de la mort de sa femme.",151)
		ANSWER("I am sorry, but I don't yet feel ready for another assignment.",152)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Ravi de vous revoir. Les choses ont �volu� pendant votre absence. Le Dragon Noir ne nous laisse pas de r�pit, et en attendant la mise en place du contrat avec CityMercs nous perdons beaucoup de clients. Et maintenant, on sait que certains ont pens� tirer avantage de la situation actuelle.")

		ANSWER("Je vois que les vautours se pressent...",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Bonne journ�e � vous. Je crois que vous pourriez avez envie de faire quelque chose pour Diamond, non?")

		ANSWER("Vous avez bien devin�. Je pense que je me suis bien pr�par�.",51)
		ANSWER("Pour �tre honn�te, je crois que je ne suis pas encore pr�t.",54)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Ahh, bienvenue � Diamond. Nous avons suivi de pr�s votre progr�s jusqu'ici et certains ici ont �t� tr�s impressionn�s. Pour le prouver, on a d�cid� de vous donner une t�che qui exige une certaine comp�tence.")

		ANSWER("Je suis heureux d'apprendre cela.",11)
		ANSWER("Avant d'accepter une telle t�che, je crois que je devrais me pr�parer un peu mieux.",16)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
	NODE(11)
		SAY("Comme vous devez d�j� le savoir, nous faisons face � certaines difficult�s � cause de ces impr�visibles Dragons Noirs . Ce sont des criminels impitoyables qui ne renonceraient � rien pour atteindre leurs buts. M�me avant que Diamond ne soit privatis� en 2046, le Dragon Noir a �t� la menace la plus s�rieuse que nous ayons eu � traiter.")

		ANSWER("Pourquoi? Que veulent-ils? Diamond ne fait des affaires que dans l'immobilier.",12)
	NODE(12)
		SAY("Oui, exactement. Le but du Dragon Noir est de dominer le march� de l'immobilier, et la seule mani�re de l'atteindre est de neutraliser Diamond. Nous d�j� avons d� diminuer nos efforts dans la r�gion de Pepper Park, puisque le Dragon Noir menace nos clients. M�me Eric Danmund lui-m�me, le chef de Diamond a d�cr�t� l'�tat d'urgence.")

		ANSWER("C'est dommage, mais je croyais que vous vouliez me parler au sujet de ma t�che.",13)
	NODE(13)
		SAY("Naturellement, mais je suis d'avis que vous devriez avoir quelques connaissances de base. Trop de gens ne savent pas que presque tous les appartements et magasins sont propri�t� de Diamond. Sauf que les probl�mes avec le Dragon Noir se sont aggrav�s encore r�cemment. Ils ont d�j� �loign� certains de nos clients. Diamond voudrait que vous rendiez visite � deux personnes qui veulent clore leurs contrats avec nous. Vous devrez les convaincre de revenir sur leur d�cision. �videmment le Dragon Noir ont quelque chose faire avec ceci. Apr�s que vous les aurez convaincus, vous pourriez aller au NCPD et vous assurer qu'ils soient au courant du probl�me avec le Dragon Noir.")

		ANSWER("O� puis-je trouver ces deux personnes? Je ferai de mon mieux.",14)
	NODE(14)
		SAY("Vous trouverez le premier client dans Plaza 02, il a accept� une rencontre dans le restaurant Gariots. Vous trouverez l'autre dans ViaRosso 03. S'il vous reste du temps, ensuite vous devriez vraiment aller au NCPD et venir me faire un compte-rendu de votre travail.")
		STARTMISSION(3582)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

	NODE(15)
		SAY("N'oubliez pas d'�tre amical. Vous pouvez trouver les clients dans Plaza 02 et ViaRosso 03. Ils attendront probablement dans un des restaurants l�.")
		ENDDIALOG()
	NODE(16)
		SAY("Faites donc. Soyez toujours en forme, c'est important. Revenez une fois que vous penserez vous �tre suffisamment pr�par�.")
		ENDDIALOG()
		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
	NODE(51)
		SAY("C'est bien. La menace constitu�e par ces groupes de criminels se d�veloppe constamment. Bien s�r, chacun d'eux a �t� envoy� par le Dragon Noir, il n'y a aucun doute � ce sujet. M. Danmund a donc pr�par� un contrat entre nous et CityMercs pour la protection de nos appartements. Une r�union a �t� organis�e pr�s d'une station de radiodiffusion abandonn�e dans les Terres Br�l�es.")

		ANSWER("C'�tait grandement n�cessaire. On ne peut pas continuer comme �a.",52)

	NODE(52)
		SAY("Exactement... Nous avons encore besoin de quelques documents pour cette r�union, cependant. Il y a deux copies � rassembler chez CityAdmin. Ils les avaient examin�es pour assurer les clauses de rupture dans le contrat.")

		ANSWER("J'y vais.",53)
	NODE(53)
		SAY("Tr�s bien, n'oubliez pas de me renvoyer ces documents. L'employ� CityAdmin devrait avoir tout pr�par� pour vous.")
		STARTMISSION(3583)
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
	NODE(54)
		SAY("Ne perdez pas de temps.")
		ENDDIALOG()		


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
	NODE(101)
		SAY("Une compagnie immobili�re ind�pendante est en train de tirer avantage de la situation pour vendre ses logements � un prix plus �lev�. Nous ne pouvons pas tol�rer cette situation.")

		ANSWER("Je comprends, �a n'est pas bon pour les affaire. Qu'est-ce qu'on peut faire?",102)
	NODE(102)
		SAY("Diamond veut donner � tous ses vendeurs de Diamond un pourcentage sur leurs ventes. Ainsi, nous aurons plus de vendeurs, plus d'appartements, et cela nous permettra d'�craser la comp�tition.")

		ANSWER("Logique. Mais l'op�ration va co�ter cher. Et moi, qu'est-ce que je fais dans cette histoire?",103)
		ANSWER("Si vous �tes en train de me proposer une mission, j'ai bien peur de devoir vous faire attendre.",105)
	NODE(103)
		SAY("J'allais vous demander de convaincre un revendeur ind�pendant de rejoindre notre compagnie. Salaire � d�battre.")

		ANSWER("Je peux essayer. Mais ces ind�pendants ne sont en g�n�ral pas faciles � convaincre.",104)
	NODE(104)
		SAY("Si vous r�ussissez, Diamond aura une prime pour vous aussi. Bonne chance. Il s'appelle Simmons, je pense que vous le trouverez dans Pepper Park 02. On a organis� une rencontre dans un des restaurants de ce quartier. Il n'y en a pas beaucoup, vous devriez le rep�rer facilement.")
		STARTMISSION(3584)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(105)
		SAY("C'est comme vous voulez. Mais on ne sera pas toujours en mesure de vous proposer des missions.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
	NODE(151)

		SAY("Il n'a rien dit � ce sujet. Mais c'est � vous qu'il a fait appel, il �tait convaincu que vous pouviez l'aider � combattre le Dragon Noir. De plus, ces types nous donnent beaucoup de mal ces derniers temps. Je sais qu'il a accept� de venir gr�ce � vous, alors vous avez gagn� une prime de 8.000 cr�dits. Vous l'aurez lorsque vous aurez termin� la mission. Mais ne perdez pas votre temps. Il devrait encore �tre dans Pepper Park 02.")
		STARTMISSION(3585)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

	NODE(152)
		SAY("Comme vous voulez. Mais revenez lorsque vous changez d'avis.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
		SAY("Comme vous �tes parmi les rares personnes � ne pas avoir �t� affect�es par ces incidents. Le Dragon Noir fait peur � notre base de clients en ayant recours � la violence et aux menaces. Nous reconnaissons bien l� leurs tactiques.")

		ANSWER("Alors pourquoi ne peut-on pas les en emp�cher, si on sait comment ils agissent?",202)

	NODE(202)
		SAY("Ce sont les Gardiens du Cr�puscule qui font le sale travail pour eux. C'est la raison pour laquelle on a beaucoup de difficult�s � remonter jusqu'� eux. Nous n'avons pas de preuve tangible de leur responsabilit�, et le NCPD fait de son mieux mais cela n'est pas suffisant.")

		ANSWER("J'esp�re que nous n'avons pas perdu trop de clients.",203)
	NODE(203)
		SAY("C'est notre probl�me principal actuellement. Pour �tre honn�te, tout est sur le point de s'�crouler. Nos clients s'enfuient, et personne ne veux plus des appartements de Diamond. Je ne veux pas vous sembler pessimiste, mais c'est la raison pour laquelle il nous faut vraiment toute l'aide dont nous pouvons disposer.")

		ANSWER("Mais vous n'avez pas sign� un contrat avec CityMercs?",204)
	NODE(204)
		SAY("Si ce contrat �tait d�j� en vigueur, la situation aurait �t� diff�rente. Mais il y a une clause dans le contrat qui l'emp�che de prendre effet maintenant. C'est pour cela que nous mobilisons toutes nos ressources personnelles.")

		ANSWER("Alors je vais avoir beaucoup de travail � faire. Qu'est-ce que vous attendez de moi?",205)
		
	NODE(205)
		SAY("Allez voir Foster, dans ViaRosso 03. D'apr�s votre dossier, je vois que vous vous connaissez d�j�, c'est exact?")

		ANSWER("Oui, mais il a d�j� r�sili� son contrat chez Diamond. Il a eu une mauvaise exp�rience.",206)
		
	NODE(206)
		SAY("Alors c'est d'autant mieux que vous le connaissiez. Nous voulons que vous lui donniez des raisons de revenir chez nous. On a vraiment besoin de vous sur cette affaire, alors utilisez tous les moyens que vous jugerez n�cessaires.")

		STARTMISSION(3586)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()
	NODE(207)
		SAY("Revenez lorsque vous vous sentirez un peu plus concern� par ce qui nous arrive.  Je me demande vraiment si vous n'avez pas perdu votre sens des responsabilit�s.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
	NODE(251)
		SAY("Je n'en attendais pas moins de vous. La premi�re chose � faire sera de transf�rer ces documents � votre contact chez Tsunami. Vous vous souvenez de lui?")

		ANSWER("Certainement, on s'est d�j� parl�s dans le secteur industriel 02. J'y vais tout de suite.",252)
	NODE(252)
		GIVEITEM(9353)
--Dokumente
		SAY("Alors sachez aussi que vous n'aurez pas qu'une livraison � faire. Vous serez directement impliqu� dans la mission en elle-m�me. Vous devrez aider le temps que le contrat des Mercs entre en vigueur. Diamond mise beaucoup sur votre succ�s.")

		STARTMISSION(3587)
		SETNEXTDIALOGSTATE(300)
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------

--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occup�. Circulez.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(2)
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
			CHANGEFACTION(2)
			SAY("Bienvenue chez Diamond Immobilier.")
			ENDDIALOG()
		end
end