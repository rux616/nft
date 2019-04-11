--new
function DIALOG()
--Trigger
--0, 2 Dialog
--6, 66 Kill Multiple
-----------------------------------------------------------------
--Resource officer
	NODE(0)
		SAY("Bienvenue, � fr�re du Cercle Noir. P�re Agnus vient de me dire que tu as les cinq reliques Tacholytium en ta possession.")

		ANSWER("C'est uniquement gr�ce � l'aide du p�re Manus et du fr�re Agnus que je dois ma r�ussite.",1)
	NODE(1)
		SAY("Avant que j'oublie, p�re Agnus pense que le vieux Kev Critter poss�de encore un plan permettant de construire l'amplificateur PSI � partir des pi�ces d�tach�es.")

		ANSWER("Bonnes nouvelles. O� puis-je trouver ce Kev Critter?",2)
	NODE(2)
		SAY("Kev tient un commerce de pi�ces de m�tal usag�e dans les Terres Br�l�es, � la Blakkmist Creek. Officiellement, son commerce est un d�potoir. Tu peux le trouver dans ce d�potoir.")

		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Critter est un vieil homme stupide qui peut se transformer en un fin renard s'il flaire une bonne affaire.")

		ANSWER("Il ne serait pas le premier.",4)
	NODE(4)
		SAY("Alors sois prudent et ne lui laisse pas voir � quel point tu veux le plan de construction. Tu ne ferais que faire augmenter le prix inutilement. P�re Agnus va s�rement t'aider une fois que tu auras le plan.")

		ANSWER("Merci, je vais tenir compte de tes conseils. Que Crahn t'accompagne.",5)
	NODE(5)
		SAY("Bonne chance dans ta mission.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()	
		
	NODE(6)
		SAY("Ne voulais-tu pas aller voir Kev Critter au d�potoir de Blakkmist? Si tu as d�j� tout ce qu'il te faut, je te conseille d'aller voir p�re Agnus pour construire l'artefact.")

		ENDDIALOG()	

-----------------------------------------------------------------
--kEV cRITTER

	NODE(50)
		SAY("Oh, oh... un p�re du cercle noir. C'est pas bon signe.")

		ANSWER("Salutations, n'aie pas peur.",51)
	NODE(51)
		SAY("La derni�re fois qu'un groupe de fr�res haut grad�s est entr� ici, �a a mal fini.")

		ANSWER("Ils ont trouv� quelque chose?",52)
	NODE(52)
		SAY("Le chef du groupe, son nom �tait Harkon je crois, est devenu furieux quand ils n'ont pas trouv� ce qu'ils cherchaient.")

		ANSWER("Fr�re Harkon est venu ici? J'imagine qu'il cherchait un objet fait � partir de Tacholytium?",53)
	NODE(53)
		SAY("Tacholytium... oui, c'est bien �a. Il semble y avoir de la demande pour cette substance. J'ai entendu dire que le groupe dirig� par Harkon avait �t� suivi des Tsunami.")

		ANSWER("Oui, les h�r�tiques sont partout de nos jours.",54)
	NODE(54)
		SAY("Ca m'a presque donn� l'impression que Tsunami cherchaient la m�me chose.")

		ANSWER("Cette affaire avec Tsunami a d�j� �t� r�gl�e.",55)
	NODE(55)
		SAY("Oui, j'ai entendu parler de �a. Et est exactement ce que je ne comprends pas. Pourquoi vous dites que vous �tes un ordre sacr� si vous employez n'importe quel moyen pour atteindre votre but?")

		ANSWER("Silence! Fais attention � ne pas insulter l'ordre. Je ne suis pas venu ici pour discuter des moyens que l'ordre utilise. ",56)
	NODE(56)
		SAY("J'avais compris. Mais dis-moi, pourquoi es-tu venu chez moi, p�re? ")

		ANSWER("J'ai besoin d'un plan. On m'a dit que tu poss�dais le plan d'un amplificateur PSI de Gaya.",57)
	NODE(57)
		SAY("J'ai toujours pu extraire presque chaque plan � partir de mes vieux microdisques. Mais je ne veux pas de ton argent.")

		ANSWER("C'est tr�s gentil � toi. Je vais louer ta g�n�rosit�. Alors donne-moi le plan.",58)
	NODE(58)
		SAY("Non, non... J'ai seulement dit que je ne voulais pas de ton argent... Ca ne veut pas dire que je ne veux rien.")

		ANSWER("Apr�s tout ce que j'ai entendu � ton sujet, j'aurais �t� surpris que tu me donnes ce plan sans poser de questions. Alors, qu'attends-tu en �change?",59)
	NODE(59)
		SAY("Ben... C'est tr�s calme ici dans les Terres Br�l�es, et les nuits sont longues. De temps en temps je me m�lange quelques drogues pour que �a soit plus facile � vivre.")

		ANSWER("Viens-en au fait, je n'ai pas toute la journ�e!",60)
	NODE(60)
		SAY("Quelques-uns des meilleurs ingr�dients sont cependant tr�s difficiles � avoir. Mais �a ne devrait pas �tre un probl�me pour un moine puissant du cercle noir de m'apporter quelque chose qu'on trouve dans les Terres Br�l�es.")

		ANSWER("Au fait, imb�cile, au fait!",61)
	NODE(61)
		SAY("J'ai besoin de la glande de poison bleue de l'araign�e-PSI Latekulus. ")

		ANSWER("Bien. Et o� est-ce qu'on peut trrouver �a?",62)
	NODE(62)
		SAY("On trouve ces araign�es pr�s de Point Red. Une seule, �a suffira.")

		ANSWER("Parfait. Ne bouge pas d'ici.",63)
	NODE(63)
		SAY("Apporte-moi cette glande, et je te donne le plan.")

		ANSWER("Dis, tu aurais pu penser � quelque chose de plus difficile, non?",64)
	NODE(64)
		SAY("C'est un ingr�dient essentiel pour un Tearson Booster. Et tu es un p�re exp�riment� du cercle noir. Ca devrait �tre facile pour toi d'avoir cet ingr�dient.")

		ANSWER("Si c'�tait si facile, tu n'aurais pas besoin de mon aide",65)
	NODE(65)
		SAY("Je ne veux m�me pas en discuter. Ou tu m'apportes cette glande, ou je ne fais pas de march� avec toi. Reviens quand tu auras ma glande.")
		SETNEXTDIALOGSTATE(66)
		ENDDIALOG()
--Spieler besorgt Drogen Zutaten
	NODE(66)

			TAKEITEM(9012)
			if(result==0)then
				SAY("Tu voulais que je t'apporte quelque chose, tu te rappelles?")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(67)
				SAY("Tu as �t� parti pendant longtemps, l'ami. J'�tais certain que quelque chose de terrible t'�tais arriv� et que je ne te reverrais pas. ")

				ANSWER("Qu'est-ce que tu veux dire? J'ai les ingr�dients pour ta drogue.",67)

			end

	NODE(67)
		SAY("C'est trop tard. J'ai vendu l'unique plan et le minidisque � quelqu'un d'autre. Peut-�tre que tu devrais �tre un peu plus rapide la prochaine fois?")

		ANSWER("Tu veux rire? Attends un peu, mon arme va t'apprendre � tenir tes promesses.",68)
	NODE(68)
		SAY("Minute... peut-�tre que l'acheteur du minidisque pourrait t'en faire une copie?")

		ANSWER("Qui a achet� le disque? Allez...parle!",69)
	NODE(69)
		SAY("Avant, donne-moi les ingr�dients... et promets sur ton honneur de membre du cercle noir que tu ne l�veras pas la main sur moi.")

		ANSWER("Je te donnerai tes ingr�dients, mais si je ne r�ussis pas � mettre la main sur le plan, je reviendrai... et je vous r�duirai en poussi�re, toi et ton maudit d�potoir.",70)
	NODE(70)
		SAY("On dirait que je n'ai pas le choix. Ok... l'acheteur �tait un certain Mark Cole.")

		ANSWER("ETHAN! Encore lui...",71)
	NODE(71)
		SAY("Tu le connais?")

		ANSWER("Et pas qu'un peu. Il est bien connu de l'ordre.",72)
	NODE(72)
		SAY("Donc tu sais d�j� o� le trouver...Alors vas-y... et j'esp�re ne plus jamais te revoir.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(73)
		ENDDIALOG()
	NODE(73)
		SAY("Je t'en ai d�j� dit plus que je ne voulais.")
		ENDDIALOG()

-----------------------------------------------------------------
--eTHAN cOLE

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
		SAY("Quelle surprise! Vite, pars ou quelqu'un pourrait nous voir ensemble.")
		ENDDIALOG()	
		else
		SAY("Incroyable!!! Ca fait longtemps que je ne t'avais pas vu, vieille branche.")

		ANSWER("On n'a jamais �t� amis, Mark. Tu dois me confondre avec une de tes vip�res.",101)
		end
	NODE(101)
		SAY("Je vois que tu as �t� accept� dans le cercle noir. F�licitations! Ce tatouage du cercle est tout � fait impressionnant.")

		ANSWER("Venons-en aux faits. Tu as un plan de Kev Critter et un minidisque en ta possession. Donne-moi ce plan et je dispara�trai. Ne me le donne pas... et c'est toi qui disparais.",102)
	NODE(102)
		SAY("Des menaces? Tu perds ton temps... Penses-tu que j'ai achet� ce plan pour l'encadrer et l'accrocher sur le mur au-dessus de mon lit? C'�tait une mission pay�e par Tsunami.")

		ANSWER("Tu ne savais pas que je recherchais ce plan?",103)
	NODE(103)
		SAY("Je ne sais pas ce � quoi sert cet objet, mais � en juger par le prix que le Syndicat m'a pay�, j'en connais qui s'y int�ressent beaucoup.")

		ANSWER("Mark, c'�tait la derni�re fois que tu nuis � mon travail. Pr�pare-toi � mourir.",104)
	NODE(104)
		SAY("J'ai pris des pr�cautions. Si tu m'attaques, p�re Agnus va avoir un stiletto sur son bureau d�s demain. Celui avec lequel fr�re Gabriel a �t� attaqu�, tu te rappelles?")

		ANSWER("Fr�re Agnus est du cercle rouge, et moi du cercle noir. Ils ne le croiraient pas si jamais il m'accusait. Mais vu que je n'ai pas besoin d'avoir des soucis en ce moment, je vais t'�pargner si tu me dis o� je peux trouver le plan.",105)
	NODE(105)
		SAY("Hmmmm... tu sembles bien d�termin�. Tr�s bien. Je l'ai donn� � Taylor Gomez. Je ne sais pas s'il l'a encore, mais c'est ta seule chance de le r�cup�rer.")

		ANSWER("Et o� trouve-t-on ce Taylor?",106)
	NODE(106)
		SAY("Taylor travaille au quartier secret de Tsunami. Tu vas devoir le prendre par surprise lorsqu'il quitte le bureau de la faction en passant par le Secret Passage-2. Tu vas devoir aller chercher le plan dans la fosse aux lions, on dirait.")

		ANSWER("Qu'il en soit ainsi. Ethan, j'esp�re que tu vas rester hors de ma route � l'avenir. Si nos chemins devaient se croiser de nouveau, je t'avertis... Je tire d'abord et je parle ensuite. Compris?",107)
	NODE(107)
		SAY("Oui. Je n'ai pas envie de finir comme Drakkhan Helios ou Calvin Grimwood. Mais d�p�che-toi, je ne sais pas combien de temps Gomez va avoir ce disque sur lui ou pour combien de temps il va rester au QG secret Tsunami.")
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()
	NODE(108)
		SAY("Je croyais t'avoir d�j� dit que si tu veux cet objet qui a un lien avec le Tacholytium, tu dois tuer Taylor Gomez au QG des Tsunami.")
		ENDDIALOG()

--Spieler killt Taylor Gomez Trigger 66
-----------------------------------------------------------------
--Pater Agnus
	
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
		SAY("D�sol�, p�re. Je n'ai pas le temps pour l'instant.")
		ENDDIALOG()
		else
		SAY("On m'a dit que tu �tais sur les traces du plan de l'amplificateur PSI.")

		ANSWER("Oui, et je l'ai sur moi. Mais j'ai besoin de ton aide pour l'assembler.",151)
		end
	NODE(151)
		TAKEITEM(9010)
		if(result==0)then
		SAY("Mais qu'est-ce que c'est �a? Tu n'as pas de plan. Honte � toi de t'�tre moqu� de moi de la sorte!")
		ENDDIALOG()
		else
		SETNEXTDIALOGSTATE(152)
		SAY("Vraiment? Tu as le plan, mon fr�re? C'est un moment historique!!!")

		ANSWER("Oui, le voici. Regarde.",152)
		end
	NODE(152)
		SAY("A partir de ces plans, il nous sera facile de construire un amplificateur PSI.")

		ANSWER("Merci pour ton aide.",153)
	NODE(153)
		GIVEMONEY(50000)
		GIVEITEM(9014,255)
		SAY("C'est un plaisir d'aider un p�re aussi c�l�bre que toi. Voici l'amplificateur PSI! Prends-le et que Crahn te b�nisse.")
		EPICRUNFINISHED(10,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

--Taylor
	NODE(200)
		SAY("D�gage Runner! C'est notre territoire!")
		ENDDIALOG()


end
