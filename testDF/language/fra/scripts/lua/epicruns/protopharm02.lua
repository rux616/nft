--new
--ProtoPharm

--
--Trigger
--Triggernumber,Type,Person
--0,D,GEORGE 50
--1,D,GEORGE 150
--2,D,Michail 350
--3
--
--Startnode, Person
--0, Human Resource Director
--50, George
--100, FIGARO
--150, GEORGE
--200, MICHAIL
--250, GEORGE
--300, SUSAN
--350, Michail
--400, George
--
--Items
--SPIRULA PAKET 100 9402
--DATENDISK F�R SUSAN 200 9403
--DATACUBE F�R MICHAIL 350 9404

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Vous avez enqu�t� sur le mail myst�rieux, c'est bien �a? Celui qui demandait qu'on abandonne ProtoPharm?")

		ANSWER("Je dirais m�me que j'ai apport� beaucoup de r�ponses � ce sujet.",1)
	NODE(1)
		SAY("Alors M. George va avoir besoin de vous. D�p�chez-vous, il vous attend. Je vous aurais bien contact� plus t�t, mais vous n'arr�tez pas de vous d�placer, vous �tes difficile � joindre. Vous le trouverez dans la tour.")
		SETNEXTDIALOGSTATE(2)
		STARTMISSION()
		ENDDIALOG()
		
	NODE(2)
		SAY("Brandon George vous attend. Il fait partie d'un groupe d'enqu�te de ProtoPharm.")

		ENDDIALOG()
--------------------------------------------------------------------
--George
--50
	NODE(50)
		SAY("Bonjour runner. Je m'appelle Brandon George, agent sp�cial de ProtoPharm. On m'a charg� de l'affaire. Selon mon dossier, vous avez d�j� accompli une partie de l'enqu�te, et vous en savez d�j� plus que moi sur le sujet. Je pense que le mieux est qu'on travaille ensemble pendant quelques temps.")

		ANSWER("Je sais peut-�tre quelque chose. Mais qu'est-ce que j'y gagnerai?",51)
	NODE(51)
		SAY("Vous travaillez pour ProtoPharm, n'est-ce pas? Du moins, vous avez un appartement que nous vous avons fourni. Si vous n'en �tes pas satisfait, on peut toujours vous le retirer. C'est votre devoir de nous aider contre les menaces ext�rieures, et �a ne vous convient pas, il est encore temps de partir. Moi, je pr�f�rerais travailler avec vous que contre vous. Et... il y aura une r�compense pour ce travail, si je puis m'exprimer ainsi.")

		ANSWER("Moi, je ne demande pas mieux que d'aider la compagnie. Mais je m'inqui�te pour les risques encourus.",52)
	NODE(52)
		SAY("Excellent. Alors poursuivons. Qu'est-ce que vous pensez de Michail?")

		ANSWER("Je ne le connais pas bien, mais il semble savoir ce qu'il veut. Il est tr�s ambitieux, et le mot n'est peut-�tre pas assez fort.",53)
	NODE(53)
		SAY("Ca confirme mon impression. Qu'est-ce que vous pensez du fait que le mail provienne de la section dont s'occupe justement Michail? Une co�ncidence, ou bien autre chose? Est-ce que vous le croyez responsable, ou bien manipul� par quelqu'un d'autre?")

		ANSWER("Je n'ai aucun moyen de le savoir. On entre dans le domaine de la sp�culation.",54)
	NODE(54)
		SAY("Je comprends. Mais vous pouvez me faire une faveur? Dans mon enqu�te, je suis tomb� sur un membre du Dragon Noir. Si j'allais le rencontrer en personne, je serais imm�diatement reconnu, donc je ne pr�f�re pas. Allez le voir � Pepper Park 03, puis faites-moi votre rapport.")
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	
--------------------------------------------------------------------
--FIGARO
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("H�, reste pas l�, tu fais peur aux clients.")
			ENDDIALOG()
		else
			SAY("h� toi, approche un peu. Je t'attends depuis une �ternit�, qu'est-ce qui s'est pass�? C'est bon, j'ai la livraison sp�ciale.")

			ANSWER("Quoi? Pardon?",101)
		end
	NODE(101)
		SAY("Ben... la livraison sp�ciale. Tu te souviens, non?")

		ANSWER("Ah, oui, bien s�r. Et c'est pour moi, donc?",102)
	NODE(102)
		GIVEITEM(9402)
--SPIRULA PACKET
		SAY("Bon, maintenant tu peux dire � Christienne que tout marche comme pr�vu. Le plan va bient�t se lancer. Allez, va-t-en, je veux pas qu'on nous voie ensemble.")
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
	NODE(103)
		SAY("Runner, je t'ai d�j� donn� le colis. Qu'est-ce que tu attends?")
		ENDDIALOG()

--------------------------------------------------------------------
-- BRANDON GEORGE
--150
	NODE(150)
		TAKEITEM(9402)
		if(result==0)then
			SAY("Va voir un certain Figaro, � Pepper Park. Le dealer typique.")
			ENDDIALOG()
		else
			SAY("J'ai du travail... oh, c'est vous? Alors, vous avez trouv� des �l�ments int�ressants?")

			ANSWER("Figaro m'a pris pour quelqu'un d'autre. Il m'a donn� un paquet et m'a renvoy� avant que je puisse aligner deux mots.",151)
		end
	NODE(151)
		SAY("J'esp�re pour vous que �a nous sera utile. Je suis dans le noir depuis bien trop longtemps.")

		ANSWER("Voyons... Sur le colis c'est marqu� ProtoPharm. Il y a une date de production, �a remonte � deux semaines.",152)
	NODE(152)
		SAY("Montrez-moi �a. Mais c'est vrai! On va bient�t savoir ce que c'est.")

		ANSWER("Attention, c'est peut-�tre un explosif!",153)
	NODE(153)
		SAY("Ne soyez pas stupide. Qui pourrait faire entrer des explosifs dans la tour, avec tous ces d�tecteurs? Et puis c'est bien trop petit... De la Spirula? C'est impossible, la production a �t� annul�e il y a des ann�es...")

		ANSWER("La Spirula? La drogue qui entra�nait des mutations?",154)
	NODE(154)
		SAY("C'est cela m�me. Malgr� des produits comme la Vitae, qui se vend toujours bien, les gens se souviennent encore de la Spirula. Mais qui pourrait avoir int�r�t � distribuer �a?")

		ANSWER("Peut-�tre quelqu'un qui veut faire chanter ProtoPharm.",155)
	NODE(155)
		SAY("Je n'ai pas de preuves, mais je soup�onne Michail d'�tre li� � tout �a. Ce type a trop de secrets. Et de plus, c'est le seul � pouvoir acc�der � la section 13. Allez le voir, et interrogez-le autant que possible. Je vais voir pour la r�compense que vous allez toucher.")

		ANSWER("Comme vous voulez. Mais �a n'expliquera pas la relation avec le Dragon Noir et Finster.",156)
	NODE(156)
		SAY("Je m'occuperai de �a plus tard. Je trouverai bien une solution. S'il vous donne quelque chose, faites-le passer par moi d'abord.")
		SETNEXTDIALOGSTATE(250)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- MICHAIL
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Bonjour. Je n'ai pas le temps de vous parler.")
			ENDDIALOG()
		else
			SAY("Ne me d�rangez pas, j'ai des choses importantes � faire.")
	
			ANSWER("Vous ne vous d�barrasserez pas de moi si facilement. Il faut qu'on parle.",201)
		end
	NODE(201)
		SAY("Alors faites vite.")

		ANSWER("J'ai quelques questions � vous poser.",202)
	NODE(202)
		SAY("Quel genre?")

		ANSWER("Au sujet du CryoVault, du mail, et de Finster. Je pense que vous voyez de quoi je parle.",203)
	NODE(203)
		SAY("Je ne peux pas vous r�pondre, j'ai des choses plus importantes � faire, comme vous voyez.")

		ANSWER("Est-ce que c'est vous qui avez envoy� ce mail? Est-ce que vous �tes li� au retour de la Spirula sur le march�?",204)
	NODE(204)
		SAY("C'est ridicule. Je vous dirai ce que je sais si vous me prouvez que je peux vous faire confiance. Si vous refusez, alors je saurai � qui m'attendre de votre part.")

		ANSWER("D'accord. Mais je veux d'abord savoir ce que vous aviez en t�te.",205)
	NODE(205)
		GIVEITEM(9403)
--DATENDISK F�R SUSAN
		SAY("Donnez ce disque de donn�es � une de mes amies. Elle s'appelle Susan, et elle vit � Point Red. Quand vous aurez termin�, vous aurez vos r�ponses.")
		SETNEXTDIALOGSTATE(350)
		ENDDIALOG()
--------------------------------------------------------------------
-- GEORGE
--250
	NODE(250)
		TAKEITEM(9403)
		if(result==0)then

			ISMISSIONTARGETACCOMPLISHED(2)
			if(result==0)then
				SAY("Allez d'abord voir Michail, et tirez de lui ce que vous pouvez. S'il vous donne quelque chose, faites-le passer par moi d'abord.")
				ENDDIALOG()
			else
				SAY("Quoi?! Vous avez donn� des informations � l'amis de Michail sans me pr�venir? Je vous ai clairement dit de passer par moi d'abord s'il vous donnait quelque chose!")

				ANSWER("Et voil�, je savais bien que j'avais oubli� quelque chose. Bon, qu'est-ce que je dois faire maintenant?",402)
			end
		else
			GIVEITEM(9403)
			SAY("Alors, qu'est-ce que vous avez appris?")
	
			ANSWER("Rien pour l'instant. Il vaut que je donne �a � son amie. Mais je pensais que vous voudriez jeter un oeil dessus d'abord.",251)
		end
	NODE(251)
		SAY("Bon travail. Voyons �a... Les donn�es semblent �tre crypt�es. Je vais en faire une copie. Juste au cas o�. Maintenant d�p�chez-vous de porter �a � son amie, ou bien il va avoir des soup�ons. Et pr�venez-moi si vous avez de nouveaux �l�ments pour l'enqu�te.")
		SETNEXTDIALOGSTATE(400)
		ENDDIALOG()
		
	NODE(252)
		SAY("D�p�chez-vous de porter ces donn�es � Susan, je ne veux pas que Michail ait des soup�ons. Et revenez lorsque vous avez plus d'indices.")
		ENDDIALOG()

--------------------------------------------------------------------
-- SUSAN
--300
	NODE(300)
		TAKEITEM(9403)
		if(result==0)then
			SAY("Je ne vous connais pas, je ne vous ai jamais vu. Vous feriez mieux de vous en aller et de ne jamais revenir.")
			ENDDIALOG()
		else
			SAY("De la visite? Pour moi? Quelle surprise! Qu'est-ce que vous voulez?")
	
			ANSWER("J'aimerais vous dire que je viens pour bavarder, mais en v�rit� c'est Michail qui m'envoie.",301)
		end
	NODE(301)
		SAY("Michail? Comment va-t-il? Ca fait trois jours que je ne l'ai pas vu. Il a toujours beaucoup de travail?")
	
		ANSWER("Apparemment il va bien. Tenez, voici quelque chose qu'il m'a demand� de vous donner.",302)
	NODE(302)
		SAY("Merci, je sais ce que c'est. Vous travaillez dans son �quipe?")
	
		ANSWER("Pas exactement. Pourquoi?",303)
	NODE(303)
		SAY("J'imagine que Michail doit vous sembler �trange, n'est-ce pas? Mais ne le jugez pas h�tivement. Il veut aider la race humaine toute enti�re, c'est son r�ve de toujours.")
	
		ANSWER("En comment? En d�truisant ProtoPharm de l'int�rieur?",304)	
	NODE(304)
		SAY("Quoi? C'est ridicule. Ce qu'il veut, c'est gu�rir les mutations d�finitivement. Mais je vois que vous ne comprenez pas �a. Vous ne comprenez pas qu'on cherche � aider les autres. Fichez le camp d'ici.")
	
		ANSWER("Je travaille pour ProtoPharm, pas pour Michail. Bonne journ�e � vous. Je vais quand m�me retourner le voir.",305)
	NODE(305)
		GIVEITEM(9404)
-- DATACUBE F�R mICHAIL
		SAY("Allez-vous en, je ne veux rien avoir � faire avec vous. Tenez, rendez �a � Michail, il en aura besoin. C'est un DataCube que lui a donn� un de ses amis. Mais ne me demandez pas ce que c'est.")
		SETNEXTDIALOGSTATE(306)

		ENDDIALOG()
	NODE(306)
		SAY("Je vous l'ai d�j� dit, je ne veux pas �tre impliqu�e l�-dedans. Mais n'oubliez pas de donner ce cube � Michail.")
		ENDDIALOG()

--------------------------------------------------------------------
-- MICHAIL
--350
	
  	NODE(350)
		TAKEITEM(9404)
		if(result==0)then
			SAY("Allez donner ce disque � Susan, et ensuite on parlera.")
			ENDDIALOG()
		else
			SAY("Maintenant que vous revenez de vos p�rip�ties, vous voulez des r�ponses. Soit. Mais faites vite, j'ai � faire.")
	
			ANSWER("Qu'est-ce que vous savez au sujet de ce mail?",351)
		end
	NODE(351)
		SAY("Il dit que Jakob Finster est revenu prendre le contr�le de la compagnie. Il donne � ProtoPharm un ultimatum. Evidemment, ProtoPharm refusera. Sandra Frasier ne va pas abandonner la partie si facilement. On m'a dit aussi que ce mail provenait de la section 13, et je suis pleinement conscient que c'est une section sous ma responsabilit�.")
	
		ANSWER("Alors vous devez savoir qui a envoy� ce mail?",352)
	NODE(352)
		SAY("Peut-�tre un employ� sous mes ordres. Mais les recherches n'aboutiront pas, il y en a beaucoup trop... Autre chose?")
	
		ANSWER("Juste une derni�re question. Qu'est-ce que vous savez au sujet de la Spirula?",353)
	NODE(353)
		SAY("La Spirula? Je... euhhh... Ca n'est pas sous ma responsabilit�. Maintenant laissez-moi tranquille.")
		SETNEXTDIALOGSTATE(354)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(354)
		SAY("Je n'ai plus envie de vous parler. Allez-vous en.")
		ENDDIALOG()	
--------------------------------------------------------------------
-- George
--400

	NODE(400)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Donnez ce disque � Susan, je ne veux pas cr�er de soup�ons. Mais revenez me voir si vous en apprenez davantage.")
			ENDDIALOG()
		else
			SAY("Des nouvelles, runner? Je d�teste ne pas pouvoir tout faire moi-m�me.")
	
			ANSWER("Michail a certainement un rapport avec l'affaire de la Spirula. Mais il n'a pas �t� tr�s coop�ratif.",401)
		end
	NODE(401)
		GIVEMONEY(10000)
		SAY("Il sait probablement d�j� que vous me dites tout ce qu'il vous raconte. Esp�rons que cela le pousse � prendre des d�cisions trop h�tives et qu'il s'y casse les dents. Lorsqu'il fera une erreur, j'agirai. Mais je ne pourrai y arriver que gr�ce � vous. Je suis en train de d�coder les informations que vous m'avez donn�es, et ensuite j'aurai de nouveau besoin de vous. Tenez, votre r�compense. Un peu plus que la derni�re fois, je reconnais que vous avez vraiment fait du bon travail. (prochaine mission au niveau 30)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(6,1)
		ENDDIALOG()

	NODE(402)
		SAY("Vous n'avez plus rien � faire. Comme vous avez �chou�, nous devrons trouver une autre source pour ces donn�es. Comme vous n'avez fait que la moiti� du travail, vous ne toucherez que la moiti� de la somme. Peut-�tre aurez-vous plus de chance la prochaine fois. (prochaine mission au niveau 30)")
		GIVEMONEY(5000)
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(6,1)
		ENDDIALOG()
end