--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D, Gregory 100
--1,D, Fergusson 200
--2,Loot , Hontoka
--3,D, Human Resource 300
--
--Startnode, Person
--0, Human Resource Director
--50, HONTOKA
--100, Gregory Parkins
--150, Hontoka
--200, Fergusson
--250, Hontoka
--300, Human Resource
--
--Items
--Giftdroge 250 9354

--synthetic wine 807

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("J'ai maintenant une r�ponse d�finitive d'Eric Danmund en personne. Il semble avoir d�clar� l'�tat d'urgence, et a accept� de coop�rer avec Tsunami. C'est une information secr�te, et je ne vous en parle que parce que vous avez ma confiance. Alors, vous �tes pr�t � d�barrasser Diamond du Dragon Noir?")

		ANSWER("Et pas qu'un peu!",1)
	NODE(1)
		SAY("Je n'en attendais pas moins de vous. La premi�re chose � faire sera de transf�rer ces documents � votre contact chez Tsunami. Vous vous souvenez de lui?")

		ANSWER("Certainement, on s'est d�j� parl�s dans le secteur industriel 02. J'y vais tout de suite.",2)
	NODE(2)
		GIVEITEM()
--Dokumente
		SAY("Alors sachez aussi que vous n'aurez pas qu'une livraison � faire. Vous serez directement impliqu� dans la mission en elle-m�me. Vous devrez aider le temps que le contrat des Mercs entre en vigueur. Diamond mise beaucoup sur votre succ�s.")
		SETNEXTDIALOGSTATE(300)
		STARTMISSION()
		ENDDIALOG()
		

--------------------------------------------------------------------
-- HONTOKA
--50
	NODE(50)
		TAKEITEM(9353)
		if(result==0)then
			SAY("Vous n'avez pas eu l'autorisation de Diamond?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(51)
			SAY("Regardez qui voil�. Alors, Danmund le tout puissant a finalement pris sa d�cision?")

			ANSWER("Arr�tez les sarcasmes, �a ne vous va pas du tout. Mais votre proposition a �t� accept�e. nous avons accept� de coop�rer avec vous.",51)
		end
	NODE(51)
		SAY("Ravi de l'entendre. Sans cette alliance, l'avenir �tait plut�t sinistre. Non seulement pour nous, mais aussi pour Diamond. Mais je ne me sens pas � l'aise lorsque je dois d�pendre des autres. Pour tout vous dire, cette alliance ne m'enchante pas vraiment. On a d�j� des plans, mais je pense que ce serait tout de m�me prudent de votre part de nous donner un coup de main.")

		ANSWER("On ne m'avait pas pr�par� � �a...",52)
	NODE(52)
		SAY("Bon, bon. Foster a analys� les composants du poison. ProtoPharm a visiblement produit un grand nombre de ces ingr�dients. Nous en avons s�curis� la plus grande partie apr�s l'attaque de leur labo de production, mai �a ne nous dit pas ce qu'ils projetaient de faire avec tous ces produits chimiques.")

		ANSWER("Visiblement les vendre � quelqu'un qu'ils n'aiment pas.",53)
	NODE(53)
		SAY("Ca ne sera pas facile. Mais je ne sais pas exactement ce qu'ils pr�parent. C'est pour �a qu'on a besoin de vous. La plupart des agents de Tsunami sont connus dans tout Neocron. Et pas en bien. Mais pas vous, et c'est pour �a que vous allez vous rendre chez ProtoPharm pour poser quelques questions. Il faudra les poser � Gregory Parkins. Compris?")

		ANSWER("Oui, mais quel genre de questions?",54)
	NODE(54)
		SAY("Demandez-lui combien de doses de Neuralgon ont �t� vendues, et o� elles ont �t� livr�es. S'il ne veut pas vous le dire, il va falloir que vous trouviez une autre solution. Faites-lui une faveur, par exemple.")

		ANSWER("Ca n'est pas gagn�, mais je vais faire de mon mieux.",55)
	NODE(55)
		SAY("Ensuite, revenez ici. Je vous expliquerai comment le plan se poursuit. Je ne peux pas vous donner trop de d�tails d'un seul coup.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- Gregory Parkins
--100
	NODE(100)
		SAY("Cette zone est interdite d'acc�s. Veuillez partie imm�diatement.")

		ANSWER("Ah, d�sol�, je pensais que c'�tait ici que se d�roulait la rencontre annuelle des grands connaisseurs de vin.",108)
		ANSWER("J'aimerais avoir des informations au sujet du Neuralgon.",107)
		ANSWER("Qu'est-ce que vous pouvez me dire sur le Neuralgon?",107)
	NODE(101)
		TAKEITEM(807)
--Synthetic Wine
		if(result==0)then
			SAY("Je ne vous ai pas d�j� dit que cette zone �tait interdite d'acc�s?")
			ENDDIALOG()
		else
			SAY("Ahh, alors c'est diff�rent. Qui vous a dit que j'aimais le vin?")

			ANSWER("Les go�ts des grands scientifiques sont connus dans tout Neocron.",102)
		end
	NODE(102)
		SAY("C'est un honneur, merci beaucoup.")

		ANSWER("Je vous en prie. Dites-moi... Je voudrais vous acheter quelques doses de Neuralgon...",103)
	NODE(103)
		SAY("Du Neuralgon? Vous arrivez au mauvais moment. Nous sommes en rupture de stock. On n'en a plus une dose, et il faudra un certain temps avant qu'on parvienne � remplir les r�serves � nouveau.")

		ANSWER("Oui, je sais, on m'a expliqu�. C'est parce que vous l'avez livr� �... euh... j'ai le nom sur le bout de la langue, vous pouvez m'aider?",104)
	NODE(104)
		SAY("C'�tait dans le secteur industriel 01, mais je ne sais pas � quoi �taient destin�es ces doses. On l'utilise habituellement pour acc�l�rer l'assimilation de certains m�dicaments.")

		ANSWER("Merci, c'est tr�s int�ressant. Bonne journ�e � vous.",105)
	NODE(105)
		SAY("Vous de m�me, et merci pour le vin!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
	NODE(106)
		SAY("Merci pour le vin!")
		ENDDIALOG()

	NODE(107)
		SAY("Comment osez-vous? Vous n'avez pas le droit d'�tre ici, quittez les lieux tout de suite.")
		ENDDIALOG()

	NODE(108)
		SAY("Tout le monde sait que la r�union se d�roule � Via Rosso. Je suis moi-m�me un expert, je me dois d'�tre au courant. Je suis surtout int�ress� par les nouveaux vins synth�tiques, ainsi que par les �chantillons qu'ils vont proposer. Je n'en peux plus d'attendre de go�ter �a. Mais maintenant, allez-vous en avant que je fasse venir la s�curit�.")
		SETNEXTDIALOGSTATE(101)
		ENDDIALOG()

--------------------------------------------------------------------
--Hontoka
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Allez voir Gregory Parkins dans le labo de ProtoPharm. L'entr�e se trouve Plaza 2.")
			ENDDIALOG()
		else
			SAY("Alors expliquez-moi ce que vous avez trouv�.")

			ANSWER("Une grande quantit� de Neuralgon a �t� envoy�e dans le secteur industriel 02. La totalit� du stock de ProtoPharm.",151)
		end
	NODE(151)
		SAY("Vraiment? Pourquoi est-ce qu'ils ont besoin de tout �a? Leurs structures de production doivent vraiment �tre d�ficientes.")

		ANSWER("Non, je pense que c'est autre chose. Je vais aller dans le secteur industriel 01, peut-�tre que j'y trouverai quelque chose.",152)
	NODE(152)
		SAY("D'accord. Pour l'instant je suis assez occup� par une des �tapes de notre plan. Diamond vous a envoy�, et a investi beaucoup d'argent dans l'op�ration. Mais c'est tout, donc nous allons devoir agir nous-m�mes. Transmettez-moi toutes les nouvelles que vous avez, d'accord? Peut-�tre les ouvriers savent-ils quelque chose. Ils en savent souvent beaucoup.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

		


--------------------------------------------------------------------
-- Fergusson
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)	
		if(result==0)then
			SAY("Ne touchez � rien.")
			ENDDIALOG()
		else
			SAY("Ho, runner. Qu'est-ce que je peux faire pour vous?")

			ANSWER("Rien, je regarde. A moins que vous puissiez r�pondre � quelques questions?",201)
		end
	NODE(201)
		SAY("Ouaip, je peux faire �a. Mais sans donner quelque chose en �change � un pauvre travailleur comme moi, vous y pensez pas! Faut faire quelque chose, j'ai tendance � perdre la m�moire ces derniers temps.")

		ANSWER("C'est bon, j'ai compris. Tenez, voil� 1000 cr�dits. Qu'est-ce que vous savez sur une substance nomm�e Neuralgon?",202)
	NODE(202)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("D�sol�, j'ai vraiment des probl�mes de m�moire. Ca m'aiderait si vous aviez vraiment de l'argent.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(203)
			SAY("Je me souviens d'un truc qui portait ce nom-l�. On en a livr�, et puis �a a �t� emmen� autre part. Il y avait pas mal de caisses. Ca m'avait l'air de valoir cher. Dites, je vous ai d�j� expliqu� que j'�tais un grand collectionneur de cr�dits?")

			ANSWER("D'accord, tenez, encore 1000.",203)
		end
	NODE(203)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("D�sol�, j'ai vraiment des probl�mes de m�moire. Ca m'aiderait si vous aviez vraiment de l'argent.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(204)
			SAY("Des gens louches sont venus ensuite, pour s'occuper des caisses. J'en ai vu un qui avait un tatouage du Dragon Noir sur le cou. L'un d'eux a dit qu'ils allaient s'occuper de distribuer �a dans toute la ville. Vous voulez d'autres infos? Alors ca falloir allonger 1000 creds de plus.")

			ANSWER("Continuez. Apr�s tout, �a m'a d�j� co�t� assez cher.",204)
end
	NODE(204)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("D�sol�, j'ai vraiment des probl�mes de m�moire. Ca m'aiderait si vous aviez vraiment de l'argent.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(205)
			SAY("Je pense qu'ils sont en train de pr�parer un gros coup. Et �a va affecter la ville enti�re.")

			ANSWER("Quelques informations, et beaucoup de bavardage. J'en ai assez. Au revoir.",205)
		end
	NODE(205)
		SAY("Bon journ�e... runner.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(206)
		ENDDIALOG()		

	NODE(206)
		SAY("Je vous ai d�j� dit tout ce que je savais. Excusez-moi, j'ai du travail qui m'attend.")
		ENDDIALOG()	
--------------------------------------------------------------------
-- Hontoka
--250
	
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Retrouvez Fergusson dans le secteur industriel. On n'est pas en vacances, le Dragon Noir ne nous permettra pas d'erreur.")
			ENDDIALOG()
		else

			SAY("Bien. Vous allez devoir poursuivre l'enqu�te, ou bien le Dragon Noir va venir � bout de son plan. Maintenant, on sait ce qu'ils pr�parent depuis tout ce temps.")

			ANSWER("Alors expliquez-moi. Tout ce que je sais, c'est que le Dragon Noir veut distribuer cette drogue dans toute la ville.",251)
		end
	NODE(251)
		SAY("Vous �tes dans le vrai. Ils veulent m�langer cette drogue aux r�serves d'eau de la ville, mais seulement aux r�servoirs qui sont utilis�s par les ennemis du Dragon Noir. Il s'agit de la canalisation principale qui passe sous Pepper Park 03. Il existe un acc�s secret � cette canalisation, il se trouve au Bump Asylum, et vous avez un autre acc�s au QG secret du Dragon Noir. Si vous croisez quelqu'un l�-dessous, vous allez devoir lui reprendre les drogues qu'il a sur lui. Tuez-le, ou bien assommez-le, comme vous voulez. Toute personne qui se trouve l�-dessous aura visiblement fait le voyage pour empoisonner l'eau.")

		ANSWER("Et vous restez l�, vous n'avez rien d'autre � faire? La situation est urgente!",252)
	NODE(252)
		SAY("Ne soyez pas stupide, je sais tr�s bien que le Dragon Noir n'a pas que des ennemis. Evidemment, je ne fais pas que rester plant� ici. C'est moi qui coordonne les diff�rents agents. Revenez me voir lorsque vous avez r�cup�r� les drogues.")
		SETNEXTDIALOGSTATE(253)
		ENDDIALOG()

--Spieler stellt Black Dragon unter dem Bump Asylum

	NODE(253)
		TAKEITEM(9354)
		if(result==0)then
			SAY("C'est urgent, nous allons tous mourir empoisonn�s si vous ne faites rien! Il y a un acc�s aux canalisations au Bump Asylum, et un autre dans le QG secret du Dragon Noir. Pas si secret que �a, en fait... � Pepper Park 03.")
			ENDDIALOG()
		else
			SAY("Tr�s bon travail, je ne pensais pas que vous y arriveriez. Nos troupes ont intercept� tous les membres du Dragon Noir qui devaient empoisonner les canalisations. D'apr�s ce que je sais, ils n'ont caus� aucun d�g�t. Nous avons pu terminer l'op�ration gr�ce � vous. Vous pouvez retourner faire votre rapport � Diamond. Si vous voulez entrer chez nous, on consid�rera votre demande avec plaisir.")
			SETNEXTDIALOGSTATE(254)
			ENDDIALOG()
		end

	NODE(254)
		SAY("Tout est sous contr�le maintenant. C'�tait serr�, mais on a remport� la partie. Je vous souhaite bonne chance pour la continuation de votre carri�re.")
		ENDDIALOG()
--------------------------------------------------------------------
-- HUMAN rESOUORCE 
--300
	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("C'est tr�s important, nous ne pouvons pas permettre que le Dragon Noir nous harc�le plus longtemps. Allez voir Hontoka dans le secteur industriel 02.")
			ENDDIALOG()
		else
			GIVEMONEY(100000)
			GIVEITEM(1574)
			SETNEXTDIALOGSTATE(301)
			SAY("On nous a pr�venu de votre r�ussite. Beau travail, je dois dire. Tsunami met la pression sur le Dragon Noir en ce moment, et demain le contrat avec CityMercs entrera en vigueur. Apr�s cela, nous allons suspendre notre collaboration avec Tsunami. Mais vous avez bien aid� Diamond, et je serais heureux de vous voir cr�er un clan pour nous assister dans notre t�che. Comme r�compense, nous vous offrons 100.000 cr�dits. Et nous aimerions �galement vous donner de l'espace suppl�mentaire pour entreposer des objets dans votre appartement. Bonne chance dans vos projets futurs.")
			EPICRUNFINISHED(2,5)
			ACTIVATEDIALOGTRIGGER(3)
			ENDDIALOG()
		end

	NODE(301)
		SAY("Go away")
		ENDDIALOG()

-----------
--Garmont
--350
	NODE(350)
		SAY("J'ai une bonne petite surprise pour le r�seau de distribution d'eau, et c'est pas toi qui vas m'arr�ter.")
		ATTACK()
		ENDDIALOG()

end