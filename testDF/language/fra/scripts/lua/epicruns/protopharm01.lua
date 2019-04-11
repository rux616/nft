--new
--ProtoPharm

--
--Trigger
--Triggernumber,Type,Person
--0,D,MICHAIL 50
--1,D,Gregory 100
--2
--3
--
--Startnode, Person
--0, Human Resource Director
--50, Michail
--100, Gregory
--150, Grand
--200, Gregory
--250, Grand
--300, Michail
--
--Items
--Codebrecherdaten, 150 9400
--Codebrecher, 200 9401

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Bienvenue chez ProtoPharm. Comment puis-je vous aider?")

		ANSWER("Comme je travaille pour ProtoPharm, j'ai pens� que je pouvais vous donner un coup de main.",1)
	NODE(1)
		SAY("Disons plut�t que vous �tes � court d'argent, c'est �a? Mais peu importe. Nous n'avons pas de dossier sur vous, donc je ne vais pouvoir vous donner que des missions basiques. Michail, un de nos employ�s, a perdu son assistant � la suite d'un malheureux accident de laboratoire. Heureusement, cet assistant n'a �t� que l�g�rement bless�. Vous pourriez le remplacer en lui donnant un coup de main. Est-ce que �a vous int�resse?")

		ANSWER("Evidemment, c'est exactement le genre de travail que je recherche. O� est-ce que je peux rencontrer Michail? Et surtout, qu'est-ce que �a va m'apporter?",2)
	NODE(2)
		SAY("Vous le trouverez ici au QG. Et vous toucherez 1000 cr�dits pour ce travail. Mais si vous faites preuve de s�rieux, votre salaire pourra augmenter.")

		ANSWER("Tr�s bien, je vais y aller. O� est-ce que je dois me rendre, d�j�?",3)
	NODE(3)
		SAY("C'est tr�s simple. Allez dans le laboratoire adjacent � la tour ProtoPharm. Mais ne touchez � rien, nos appareils sont tr�s fragiles.")

		SETNEXTDIALOGSTATE(4)
		STARTMISSION()		
		ENDDIALOG()
	NODE(4)
		SAY("Si vous voulez remplacer l'assistante de Michail, vous allez devoir vous rendre au labo. Je pense que vous le trouverez l�-bas.")
		ENDDIALOG()

--------------------------------------------------------------------
--Michail
--50
	NODE(50)
		SAY("Je vous rappelle que les laboratoires sont interdits aux civils.")

		ANSWER("On m'a dit de remplacer votre assistant qui a eu un accident.",51)
	NODE(51)
		SAY("Alors comme �a, vous venez remplacer ce pauvre Marco? Je lui avais pourtant dit de faire attention avec la fermeture automatique des CryoVaults. Je ne sais pas s'il pourra un jour �tre comme avant. Et � cause de cet accident, mon projet a �t� assign� � une priorit� inf�rieure. Tout ce qui me reste actuellement, c'est une pile de documents.")

		ANSWER("Et moi, qu'est-ce que je fais dans tout �a?",52)
	NODE(52)
		SAY("J'ai d�j� quelque chose en t�te. J'ai besoin de quelqu'un sachant �tre discret lorsque le besoin s'en fait sentir. Il faut que vous sachiez que de nombreux d�partements de ProtoPharm ont re�u le m�me mail �trange. Je vais vous expliquer quelques �l�ments pour que vous sachiez ce qui se passe.")

		ANSWER("Oui, je pense que �a sera n�cessaire. Continuez.",53)
	NODE(53)
		SAY("Vous savez peut-�tre d�j� que ProtoPharm a �t� cr��e gr�ce � la fusion de plusieurs compagnies pharmaceutiques. Cette fusion a �t� op�r�e en 2646, et le premier directeur de la compagnie a �t� un certain Jakob Finster. C'est � cette �poque qu'a �t� mis au point le CryoVault, qui a �t� l'une des plus grandes inventions de la compagnie. En 2664, Finster a d�cid� de s'isoler dans un de ces caissons cryog�niques, et a c�d� le contr�le de la compagnie � son fils. Depuis cette �poque, les directeurs se sont succ�d�s. Sandra Frasier est la derni�re en date.")

		ANSWER("Et quel est le rapport avec le mail?",54)
	NODE(54)
		SAY("Ce mail d�clare que Frasier est revenu et qu'il lance un ultimatum � ProtoPharm pour r�cup�rer le contr�le de la compagnie. Je veux juste m'assurer que ce mail n'est pas une blague avant de le signaler � mes sup�rieurs. Je veux au moins d�couvrir d'o� il provient.")

		ANSWER("Attendez, vous �tes en train de me dire qu'un directeur centenaire est ressuscit� d'entre les morts pour se remettre au travail?",55)
	NODE(55)
		SAY("Vous comprendrez ais�ment que je dois d'abord faire quelques v�rifications. Je pense que vous pourriez vous en charger. Gregory est un scientifique de talent, et il a probablement d�j� d�termin� l'origine du message. Allez le voir, et revenez me faire un rapport sur ce qu'il a �ventuellement d�couvert.")
		SETNEXTDIALOGSTATE(300)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()


--------------------------------------------------------------------
-- Gregory
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je n'ai pas le temps de vous parler.")
			ENDDIALOG()
		else
			SAY("C'est Michail qui vous envoie, j'imagine?")

			ANSWER("Oui. Alors, vous avez des informations sur la provenance du mail?",101)
		end
	NODE(101)
		SAY("Hrmph, �videmment. Je ne suis pas stupide. Les coordonn�es ont �t� redirig�es par un satellite, �tant donn� que l'envoyeur s'est servi d'un �metteur mobile. Mais on sait qu'il n'a pas boug� depuis plusieurs semaines. Il se trouve � pr�sent dans l'Outzone 01. Lorsque vous y serez, vous pourrez suivre le signal depuis votre afficheur.")

		ANSWER("Pourquoi est-ce que j'irais dans l'Outzone?",102)
	NODE(102)
		SAY("Vous ne voulez pas y aller? Michail serait vraiment heureux que vous le fassiez, je pense. Mais je ne fais que sugg�rer, je ne vous oblige � rien. Michail peut �tre quelqu'un d'assez compliqu�. Il ne dit pas explicitement ce qu'il veut. Il �chafaude des plans compliqu�s, et il oublie les probl�mes essentiels. Mais c'est surtout un grand r�veur, parfois il est m�me compl�tement d�connect� du monde r�el.")

		ANSWER("Mais l'Outzone, c'est dangereux.",103)
	NODE(103)
		SAY("J'irais bien, mais on ne me paye pas pour �a. Faites attention, deux assistants de la m�me section pourraient avoir un accident dans la m�me semaine, �a ne ferait pas bon effet sur les rapports.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	
--------------------------------------------------------------------
--Grand
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'ai rien � vous dire, rien du tout. C'est clair?")
			ENDDIALOG()
		else
			SAY("Client, ou pas?")

			ANSWER("Ni l'un ni l'autre.",151)
		end
	NODE(151)
		SAY("Alors allez-vous en, j'aime pas les ni-l'un-ni-l'autre.")

		ANSWER("Je viens � cause d'un mail quia �t� envoy� � ProtoPharm depuis votre machine.",152)
	NODE(152)
		SAY("Allez-vous en... Attendez, de ma machine vous dites? J'ai jamais envoy� de mail � ProtoPharm. Vous devez faire une erreur, runner.")

		ANSWER("Je sais que le signal remonte pourtant jusqu'� vous.",153)
	NODE(153)
		SAY("Possible. Alors �a veut dire que quelqu'un a mis un virus dans mon syst�me. C'est rageant, il y a deux jours � peine que j'ai fait une v�rification. Et j'arrive m�me pas � l'effacer manuellement. Et merde!")

		ANSWER("Vous avez envoy� ce mail, ou pas? Et si �a n'est pas vous, qui l'a fait?",154)
	NODE(154)
		SAY("Ecoutez-moi bien, OK? J'ai pas envoy� votre mail, c'est probablement ce satan� virus. Et maintenant, j'arrive m�me plus � l'effacer. Il va me falloir un d�codeur puissant, mais j'en ai pas.")

		ANSWER("ProtoPharm devrait en avoir un. Si vous trouvez o� vous avez eu ce virus, je vous apporte le programme de la part de Gregory. Ca marche?",155)
	NODE(155)
		GIVEITEM(9400)
--Codebrecherdaten
		SAY("Affaire conclue. Moi, tout ce que je veux c'est me d�barrasser de ce virus. Ma pauvre console... Tenez, voil� les infos n�cessaires pour le programme.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

--------------------------------------------------------------------
--Gregory
--200
	NODE(200)
		TAKEITEM(9400)
		if(result==0)then
			SAY("Vous �tes d�j� all� dans l'Outzone 01?")
			ENDDIALOG()
		else
			SAY("D�j� de retour? Alors, qu'est-ce que vous avez trouv�?")

			ANSWER("Je suis sur une piste, mais il va d'abord falloir me donner un programme de d�codage. Ensuite, je pense que j'aurai toutes les informations que d�sire Michail.",201)
		end
	NODE(201)
--SOFTWARE codebrecher
		GIVEITEM(9401)
		SAY("Tr�s bien. Mais utilisez-le avec pr�caution, ne le laissez pas filer entre des mains mal intentionn�es. Faites votre rapport directement � Michail la prochaine fois, je ne suis pas responsable de cette affaire. Et pour �tre honn�te, �a n'est pas plus mal ainsi.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Je ne peux pas vous conseiller. Allez dans l'Outzone, et puis faites votre rapport � Michail.")
		ENDDIALOG()
--------------------------------------------------------------------
--Grand
--250

	NODE(250)
		TAKEITEM(9401)
		if(result==0)then
			SAY("D�p�chez-vous de me trouver ce d�codeur! Vite! Vous n'aviez pas dit que quelqu'un de ProtoPharm avait une solution?")
			ENDDIALOG()
		else
			SAY("Donnez-moi �a, runner! Il me faut ce programme!")

			ANSWER("Pas si vite, l'ami. Je veux d'abord savoir qui a envoy� ce mail.",251)
		end
	NODE(251)
		SAY("Bon, tr�s bien. Le mail a �t� envoy� par un virus, originaire d'une section ProtoPharm. La section 13, pour �tre pr�cis. Maintenant, donnez-moi ce programme.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(252)
		ENDDIALOG()
	NODE(252)
		SAY("Le mail vient de la section 13. Faites-moi confiance, je sais ce que je dis.")
		ENDDIALOG()

--------------------------------------------------------------------
--Michail
--300	
	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous avez demand� � Gregory au sujet de ce mail? Ca pourrait �tre tr�s important.")
			ENDDIALOG()
		else
			SAY("Alors dites-moi ce que vous avez trouv�. J'esp�re que vous avez des �l�ments explicites.")

			ANSWER("Evidemment. Ce mail a �t� remont� jusqu'� un hacker qui se trouve dans l'Outzone.",301)
		end
	NODE(301)
		SAY("Ah, donc c'�tait une attaque de hacker. Probablement quelqu'un qui a cherch� � nous faire peur.")

		ANSWER("Non, pas vraiment. En fait, le hacker n'�tait qu'un leurre. Le mail vient en premier lieu de ProtoPharm, la section 13 pour �tre pr�cis.",302)
	NODE(302)
		GIVEMONEY(5000)
		SAY("La section 13? Ce nom... C'est la section des CryoVaults! Personne ne peut envoyer de mail de l�-bas. Je pense que je vais transmettre tout �a � mes sup�rieurs. Tr�s int�ressant, je ne pensais pas que c'�tait possible. Tenez, voici votre r�compense. Ce serait raisonnable d'aller voir notre directeur des ressources humaines lorsque vous serez plus comp�tent. Pour l'instant, je n'ai plus besoin d'un assistant. Vous pouvez y aller (prochaine mission au niveau 20)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(6,0)
		ENDDIALOG()
		


end