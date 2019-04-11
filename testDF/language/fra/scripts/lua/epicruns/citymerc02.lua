--new
--CityMerc
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm
--1
--2
--3
--
--Startnode, Person
--0, Soldat
--50, Frederick
--100, Claudia
--150, Erik
--200, Soldat
--250, Marcel
--
--Items
--Wein von Marcel ID:806

function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("C'est pas un endroit pour les civils.")

		ANSWER("J'ai d�cid� d'entrer � CityMercs. Je me suis entra�n� pour devenir un Rookie.",1)
	NODE(1)
		SAY("Vraiment? Alors j'esp�re que vous savez manier les armes, parce qu'il n'y a pas d'autres moyens. Je pense que vous tr�pignez d�j� d'impatience, alors je ne vais pas vous faire attendre plus longtemps.")

		ANSWER("Continuons, je suis pr�t.",2)
		ANSWER("Je vais encore m'entra�ner un peu.",3)
	NODE(2)
		SAY("Pour devenir un Rookie, vous devez combattre trois personnes de votre choix. On a trouv� des adversaires � votre hauteur, mais �a nous a pris du temps. Le premier s'appelle Frederick, c'est un pr�tendant au grade de Rookie comme vous. Ensuite, vous aurez Claudia et Erik, ils sont d�j� des n�tres. Vous devrez battre l'un d'eux, et ensuite vous serez un Rookie. Revenez lorsque vous avez gagn� votre combat.")
		STARTMISSION()
		SETNEXTDIALOGSTATE()
		ENDDIALOG()
		
	NODE(3)
		SAY("Vous devriez vraiment vous d�cider.")
		ENDDIALOG()

	NODE(4)
		SAY("Vous trouverez vos adversaires dans le secteur 2 de la base. Revenez lorsque vous les avez vaincus.")
		ENDDIALOG()

--------------------------------------------------------------------
-- Frederick
--50
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Bonjour, vous venez pour passer Rookie? Moi, �a fait d�j� deux jours que j'attends de prouver mes comp�tences.")

			ANSWER("Et pourquoi est-ce que vous voulez les rejoindre?",51)
		else
			SAY("Oh non, j'ai encore perdu... Je vais devoir attendre deux jours de plus avant de pouvoir combattre � nouveau. C'est nul.")
			ENDDIALOG()
		end
	NODE(51)
		SAY("Mon p�re est un Ruban Noir, et il veut que j'atteigne le m�me statut que lui. J'ai d�j� essay� trois fois, et j'ai toujours rat�. Mais assez parl�. Vous �tes pr�t?")
		ENDDIALOG()
		SETNEXTDIALOGSTATE(52)
		
	NODE(52)
		SAY("Si vous �tes pr�t, alors attaquez.")
		ENDDIALOG()

--------------------------------------------------------------------
--Claudia
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Salut runner. Et bonne chance, vous allez en avoir besoin contre moi. Je me souviens encore de mon �preuve de Rookie, et c'�tait pas du g�teau, je peux vous le dire.")

			ANSWER("Qui �tes-vous?",101)
		else
			SAY("Je ne pense pas que vous r�ussirez � me battre, mais vous pouvez toujours essayer. Bonne chance.")
			ENDDIALOG()
		end
	NODE(101)
		SAY("Quelle question stupide. Je m'appelle Claudia, et je suis d�j� Rookie. Mais passons sur les d�tails, vous voulez bien?")
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
		
	NODE(102)
		SAY("Vous allez devoir prendre une d�cision.")
		ENDDIALOG()
--------------------------------------------------------------------
--Erik
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Je vais vous donner un conseil d'ami. Claudia est une coriace, vraiment difficile � battre. Je sais que c'est une femme, mais il ne faut pas se fier aux apparences. Les femmes Tank sont aussi fortes que les hommes. Faites attention � vous, parce que je vais pas y aller de main morte.")
			SETNEXTDIALOGSTATE(151)
			ENDDIALOG()
		else
			SAY("Bon, c'est la preuve flagrante que je manque un peu d'entra�nement.")
			ENDDIALOG()
		end
	NODE(151)
		SAY("Choisissez Claudia, Frederik ou moi-m�me, et commen�ons!")
		ENDDIALOG()


--------------------------------------------------------------------
--Soldat
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Vous devez passer cette �preuve pour entrer chez les Mercs. Vous trouverez vos adversaires dans le secteur 2 de la base. Revenez me voir apr�s les avoir vaincus.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Vous devez passer cette �preuve pour faire carri�re chez les Mercs. Vous trouverez vos adversaires dans un entrep�t du secteur 2. Revenez lorsque vous les avez vaincus.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("Vous devez passer l'�preuve des Rookies pour entrer chez les Mercs. Revenez lorsque vous les avez vaincus.")
					ENDDIALOG()
				else
					SAY("Alors vous avez r�ussi? Vous vous sentez comment? Ne vous inqui�tez pas, vos blessures vont rapidement gu�rir, et vous allez vous plaire chez nous.")

					ANSWER("C'est un honneur. Alors, qu'est-ce que je dois faire? On va combattre bient�t?",201)
				end
			end
		end
	NODE(201)
		SAY("Non, tu vas devoir attendre un peu. Nous faisons tr�s attention � nos nouveaux membres, et avant de porter votre ruban blanc vous allez devoir combattre. Mais pour l'instant, l'heure est � la f�te. Le chef de section Marcel aimerait vous f�liciter personnellement. Vous le trouverez dans le secteur 2 de la base militaire. Bonne continuation.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
		
	NODE(202)
		SAY("Marcel est dans le secteur 2 de la base militaire. Il aimerait vous f�liciter. C'est un chef de section tr�s connu qui a beaucoup d'influence chez les Mercs.")
		ENDDIALOG()

--------------------------------------------------------------------
--Marcel
--250
		
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("D'apr�s ce que je peux voir, je sens que vous allez nous rejoindre bient�t. Mais vous allez d'abord devoir passer l'�preuve des Rookies.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("D'apr�s ce que je peux voir, je sens que vous allez nous rejoindre bient�t. Mais vous allez d'abord devoir passer l'�preuve des Rookies.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("D'apr�s ce que je peux voir, je sens que vous allez nous rejoindre bient�t. Mais vous allez d'abord devoir passer l'�preuve des Rookies.")
					ENDDIALOG()
				else
					SAY("Erik m'a dit ce que vous aviez fait en combat. Maintenant, vous �tes des n�tres. Mais je ne pense pas que vous soyez encore pr�t. Vous avez encore beaucoup � apprendre. Mais ne vous d�couragez pas. Ce sera un plaisir de vous avoir dans ma section lorsque vous serez pr�t.")

					ANSWER("On m'a dit que je devais d'abord avoir mon ruban blanc.",251)
				end
			end
		end
	NODE(251)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEMONEY(4000)
		SAY("Oui, c'est vrai. Ma section a achet� quelques bouteilles pour que nous puissions faire la f�te. Cadeau de la maison. A pr�sent, ne nous d�shonorez pas, continuez � vous entra�ner, et je pense que nous aurons � nous revoir tr�s bient�t. Voici votre paiement, faites-en bon usage. (prochaine mission au niveau 30)")
		EPICRUNFINISHED(11,1)	
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end