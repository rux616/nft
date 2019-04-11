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
		SAY("J'ai maintenant une réponse définitive d'Eric Danmund en personne. Il semble avoir déclaré l'état d'urgence, et a accepté de coopérer avec Tsunami. C'est une information secrète, et je ne vous en parle que parce que vous avez ma confiance. Alors, vous êtes prêt à débarrasser Diamond du Dragon Noir?")

		ANSWER("Et pas qu'un peu!",1)
	NODE(1)
		SAY("Je n'en attendais pas moins de vous. La première chose à faire sera de transférer ces documents à votre contact chez Tsunami. Vous vous souvenez de lui?")

		ANSWER("Certainement, on s'est déjà parlés dans le secteur industriel 02. J'y vais tout de suite.",2)
	NODE(2)
		GIVEITEM()
--Dokumente
		SAY("Alors sachez aussi que vous n'aurez pas qu'une livraison à faire. Vous serez directement impliqué dans la mission en elle-même. Vous devrez aider le temps que le contrat des Mercs entre en vigueur. Diamond mise beaucoup sur votre succès.")
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
			SAY("Regardez qui voilà. Alors, Danmund le tout puissant a finalement pris sa décision?")

			ANSWER("Arrêtez les sarcasmes, ça ne vous va pas du tout. Mais votre proposition a été acceptée. nous avons accepté de coopérer avec vous.",51)
		end
	NODE(51)
		SAY("Ravi de l'entendre. Sans cette alliance, l'avenir était plutôt sinistre. Non seulement pour nous, mais aussi pour Diamond. Mais je ne me sens pas à l'aise lorsque je dois dépendre des autres. Pour tout vous dire, cette alliance ne m'enchante pas vraiment. On a déjà des plans, mais je pense que ce serait tout de même prudent de votre part de nous donner un coup de main.")

		ANSWER("On ne m'avait pas préparé à ça...",52)
	NODE(52)
		SAY("Bon, bon. Foster a analysé les composants du poison. ProtoPharm a visiblement produit un grand nombre de ces ingrédients. Nous en avons sécurisé la plus grande partie après l'attaque de leur labo de production, mai ça ne nous dit pas ce qu'ils projetaient de faire avec tous ces produits chimiques.")

		ANSWER("Visiblement les vendre à quelqu'un qu'ils n'aiment pas.",53)
	NODE(53)
		SAY("Ca ne sera pas facile. Mais je ne sais pas exactement ce qu'ils préparent. C'est pour ça qu'on a besoin de vous. La plupart des agents de Tsunami sont connus dans tout Neocron. Et pas en bien. Mais pas vous, et c'est pour ça que vous allez vous rendre chez ProtoPharm pour poser quelques questions. Il faudra les poser à Gregory Parkins. Compris?")

		ANSWER("Oui, mais quel genre de questions?",54)
	NODE(54)
		SAY("Demandez-lui combien de doses de Neuralgon ont été vendues, et où elles ont été livrées. S'il ne veut pas vous le dire, il va falloir que vous trouviez une autre solution. Faites-lui une faveur, par exemple.")

		ANSWER("Ca n'est pas gagné, mais je vais faire de mon mieux.",55)
	NODE(55)
		SAY("Ensuite, revenez ici. Je vous expliquerai comment le plan se poursuit. Je ne peux pas vous donner trop de détails d'un seul coup.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- Gregory Parkins
--100
	NODE(100)
		SAY("Cette zone est interdite d'accès. Veuillez partie immédiatement.")

		ANSWER("Ah, désolé, je pensais que c'était ici que se déroulait la rencontre annuelle des grands connaisseurs de vin.",108)
		ANSWER("J'aimerais avoir des informations au sujet du Neuralgon.",107)
		ANSWER("Qu'est-ce que vous pouvez me dire sur le Neuralgon?",107)
	NODE(101)
		TAKEITEM(807)
--Synthetic Wine
		if(result==0)then
			SAY("Je ne vous ai pas déjà dit que cette zone était interdite d'accès?")
			ENDDIALOG()
		else
			SAY("Ahh, alors c'est différent. Qui vous a dit que j'aimais le vin?")

			ANSWER("Les goûts des grands scientifiques sont connus dans tout Neocron.",102)
		end
	NODE(102)
		SAY("C'est un honneur, merci beaucoup.")

		ANSWER("Je vous en prie. Dites-moi... Je voudrais vous acheter quelques doses de Neuralgon...",103)
	NODE(103)
		SAY("Du Neuralgon? Vous arrivez au mauvais moment. Nous sommes en rupture de stock. On n'en a plus une dose, et il faudra un certain temps avant qu'on parvienne à remplir les réserves à nouveau.")

		ANSWER("Oui, je sais, on m'a expliqué. C'est parce que vous l'avez livré à... euh... j'ai le nom sur le bout de la langue, vous pouvez m'aider?",104)
	NODE(104)
		SAY("C'était dans le secteur industriel 01, mais je ne sais pas à quoi étaient destinées ces doses. On l'utilise habituellement pour accélérer l'assimilation de certains médicaments.")

		ANSWER("Merci, c'est très intéressant. Bonne journée à vous.",105)
	NODE(105)
		SAY("Vous de même, et merci pour le vin!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
	NODE(106)
		SAY("Merci pour le vin!")
		ENDDIALOG()

	NODE(107)
		SAY("Comment osez-vous? Vous n'avez pas le droit d'être ici, quittez les lieux tout de suite.")
		ENDDIALOG()

	NODE(108)
		SAY("Tout le monde sait que la réunion se déroule à Via Rosso. Je suis moi-même un expert, je me dois d'être au courant. Je suis surtout intéressé par les nouveaux vins synthétiques, ainsi que par les échantillons qu'ils vont proposer. Je n'en peux plus d'attendre de goûter ça. Mais maintenant, allez-vous en avant que je fasse venir la sécurité.")
		SETNEXTDIALOGSTATE(101)
		ENDDIALOG()

--------------------------------------------------------------------
--Hontoka
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Allez voir Gregory Parkins dans le labo de ProtoPharm. L'entrée se trouve Plaza 2.")
			ENDDIALOG()
		else
			SAY("Alors expliquez-moi ce que vous avez trouvé.")

			ANSWER("Une grande quantité de Neuralgon a été envoyée dans le secteur industriel 02. La totalité du stock de ProtoPharm.",151)
		end
	NODE(151)
		SAY("Vraiment? Pourquoi est-ce qu'ils ont besoin de tout ça? Leurs structures de production doivent vraiment être déficientes.")

		ANSWER("Non, je pense que c'est autre chose. Je vais aller dans le secteur industriel 01, peut-être que j'y trouverai quelque chose.",152)
	NODE(152)
		SAY("D'accord. Pour l'instant je suis assez occupé par une des étapes de notre plan. Diamond vous a envoyé, et a investi beaucoup d'argent dans l'opération. Mais c'est tout, donc nous allons devoir agir nous-mêmes. Transmettez-moi toutes les nouvelles que vous avez, d'accord? Peut-être les ouvriers savent-ils quelque chose. Ils en savent souvent beaucoup.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

		


--------------------------------------------------------------------
-- Fergusson
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)	
		if(result==0)then
			SAY("Ne touchez à rien.")
			ENDDIALOG()
		else
			SAY("Ho, runner. Qu'est-ce que je peux faire pour vous?")

			ANSWER("Rien, je regarde. A moins que vous puissiez répondre à quelques questions?",201)
		end
	NODE(201)
		SAY("Ouaip, je peux faire ça. Mais sans donner quelque chose en échange à un pauvre travailleur comme moi, vous y pensez pas! Faut faire quelque chose, j'ai tendance à perdre la mémoire ces derniers temps.")

		ANSWER("C'est bon, j'ai compris. Tenez, voilà 1000 crédits. Qu'est-ce que vous savez sur une substance nommée Neuralgon?",202)
	NODE(202)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Désolé, j'ai vraiment des problèmes de mémoire. Ca m'aiderait si vous aviez vraiment de l'argent.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(203)
			SAY("Je me souviens d'un truc qui portait ce nom-là. On en a livré, et puis ça a été emmené autre part. Il y avait pas mal de caisses. Ca m'avait l'air de valoir cher. Dites, je vous ai déjà expliqué que j'étais un grand collectionneur de crédits?")

			ANSWER("D'accord, tenez, encore 1000.",203)
		end
	NODE(203)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Désolé, j'ai vraiment des problèmes de mémoire. Ca m'aiderait si vous aviez vraiment de l'argent.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(204)
			SAY("Des gens louches sont venus ensuite, pour s'occuper des caisses. J'en ai vu un qui avait un tatouage du Dragon Noir sur le cou. L'un d'eux a dit qu'ils allaient s'occuper de distribuer ça dans toute la ville. Vous voulez d'autres infos? Alors ca falloir allonger 1000 creds de plus.")

			ANSWER("Continuez. Après tout, ça m'a déjà coûté assez cher.",204)
end
	NODE(204)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Désolé, j'ai vraiment des problèmes de mémoire. Ca m'aiderait si vous aviez vraiment de l'argent.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(205)
			SAY("Je pense qu'ils sont en train de préparer un gros coup. Et ça va affecter la ville entière.")

			ANSWER("Quelques informations, et beaucoup de bavardage. J'en ai assez. Au revoir.",205)
		end
	NODE(205)
		SAY("Bon journée... runner.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(206)
		ENDDIALOG()		

	NODE(206)
		SAY("Je vous ai déjà dit tout ce que je savais. Excusez-moi, j'ai du travail qui m'attend.")
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

			SAY("Bien. Vous allez devoir poursuivre l'enquête, ou bien le Dragon Noir va venir à bout de son plan. Maintenant, on sait ce qu'ils préparent depuis tout ce temps.")

			ANSWER("Alors expliquez-moi. Tout ce que je sais, c'est que le Dragon Noir veut distribuer cette drogue dans toute la ville.",251)
		end
	NODE(251)
		SAY("Vous êtes dans le vrai. Ils veulent mélanger cette drogue aux réserves d'eau de la ville, mais seulement aux réservoirs qui sont utilisés par les ennemis du Dragon Noir. Il s'agit de la canalisation principale qui passe sous Pepper Park 03. Il existe un accès secret à cette canalisation, il se trouve au Bump Asylum, et vous avez un autre accès au QG secret du Dragon Noir. Si vous croisez quelqu'un là-dessous, vous allez devoir lui reprendre les drogues qu'il a sur lui. Tuez-le, ou bien assommez-le, comme vous voulez. Toute personne qui se trouve là-dessous aura visiblement fait le voyage pour empoisonner l'eau.")

		ANSWER("Et vous restez là, vous n'avez rien d'autre à faire? La situation est urgente!",252)
	NODE(252)
		SAY("Ne soyez pas stupide, je sais très bien que le Dragon Noir n'a pas que des ennemis. Evidemment, je ne fais pas que rester planté ici. C'est moi qui coordonne les différents agents. Revenez me voir lorsque vous avez récupéré les drogues.")
		SETNEXTDIALOGSTATE(253)
		ENDDIALOG()

--Spieler stellt Black Dragon unter dem Bump Asylum

	NODE(253)
		TAKEITEM(9354)
		if(result==0)then
			SAY("C'est urgent, nous allons tous mourir empoisonnés si vous ne faites rien! Il y a un accès aux canalisations au Bump Asylum, et un autre dans le QG secret du Dragon Noir. Pas si secret que ça, en fait... à Pepper Park 03.")
			ENDDIALOG()
		else
			SAY("Très bon travail, je ne pensais pas que vous y arriveriez. Nos troupes ont intercepté tous les membres du Dragon Noir qui devaient empoisonner les canalisations. D'après ce que je sais, ils n'ont causé aucun dégât. Nous avons pu terminer l'opération grâce à vous. Vous pouvez retourner faire votre rapport à Diamond. Si vous voulez entrer chez nous, on considèrera votre demande avec plaisir.")
			SETNEXTDIALOGSTATE(254)
			ENDDIALOG()
		end

	NODE(254)
		SAY("Tout est sous contrôle maintenant. C'était serré, mais on a remporté la partie. Je vous souhaite bonne chance pour la continuation de votre carrière.")
		ENDDIALOG()
--------------------------------------------------------------------
-- HUMAN rESOUORCE 
--300
	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("C'est très important, nous ne pouvons pas permettre que le Dragon Noir nous harcèle plus longtemps. Allez voir Hontoka dans le secteur industriel 02.")
			ENDDIALOG()
		else
			GIVEMONEY(100000)
			GIVEITEM(1574)
			SETNEXTDIALOGSTATE(301)
			SAY("On nous a prévenu de votre réussite. Beau travail, je dois dire. Tsunami met la pression sur le Dragon Noir en ce moment, et demain le contrat avec CityMercs entrera en vigueur. Après cela, nous allons suspendre notre collaboration avec Tsunami. Mais vous avez bien aidé Diamond, et je serais heureux de vous voir créer un clan pour nous assister dans notre tâche. Comme récompense, nous vous offrons 100.000 crédits. Et nous aimerions également vous donner de l'espace supplémentaire pour entreposer des objets dans votre appartement. Bonne chance dans vos projets futurs.")
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
		SAY("J'ai une bonne petite surprise pour le réseau de distribution d'eau, et c'est pas toi qui vas m'arrêter.")
		ATTACK()
		ENDDIALOG()

end