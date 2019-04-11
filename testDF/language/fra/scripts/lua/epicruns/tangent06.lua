--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--6(0),kill Director of Operations BioTech,Andressa
--1,D,Mazzaro

--Startnode, Person
--0
--50, Andressa
--100, Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Vous commencez à devenir une véritable célébrité ici. L'autre jour, j'ai même entendu quelqu'un parler de vous dans la rue.")

		ANSWER("Merci, mais je fais seulement mon travail.",1)
	NODE(1)
		SAY("La modestie, ça ne vous va pas du tout. Vous avez le droit d'être fier de ce que vous faites. Mais évidemment, ce n'est pas pour ça qu'on a besoin de vous aujourd'hui.")

		ANSWER("Je n'en attendais pas moins. Quel est le problème?",2)
	NODE(2)
		SAY("C'est au sujet des derniers tests de l'arme à rayons. Tout est en ordre, et on aura bientôt terminé la lecture des derniers rapports. Mais malgré tout, Biotech a réussi on ne sait comment à rattraper son retard et à atteindre le même stade de développement.")

		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Tangent ne peut pas se permettre de perdre dans une confrontation directe. Surtout quand c'est Biotech qui est en face. C'est pourquoi nous allons lancer une opération contre eux. Il faut réduire leurs chances de rivaliser avec notre arme.")

		ANSWER("Et vous avez pensé à moi? Bien. Qu'est-ce que vous prévoyez?",4)
	NODE(4)
		SAY("Les tests finaux doivent être entravés à tout prix. Vous avez bien reçu des éléments compromettants de la part de votre contact, la dernière fois? Alors vous devriez les utiliser maintenant. C'est vraiment l'occasion rêvée.")

		ANSWER("Oui, des éléments compromettants concernant une scientifique, une certaine Andressa. Elle devrait être dans les alentours du siège de Biotech.",5)
	NODE(5)
		SAY("Alors utilisez vos preuves. Tout ce qui fait du mal à BioTech est bon à prendre.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(6)
		SAY("Dépêchez-vous, le temps presse.")
		ENDDIALOG()


-----------------------------------------------------
--Andressa

	NODE(50)
		SAY("Laissez-moi tranquille. J'ai travaillé toute la nuit, et j'ai une migraine épouvantable. Il faut que je fasse une pause.")

		ANSWER("Ne vous inquiétez pas, Andressa, je n'en ai pas pour longtemps.",51)
	NODE(51)
		SAY("Comment est-ce que vous connaissez mon nom? On s'est déjà rencontrés?")

		ANSWER("C'est peu probable. Mais moi, je vous donnais. Ou du moins, je connais ce que vous cherchez à cacher.",52)
	NODE(52)
		SAY("Qu'est-ce que vous me dites-là? Je n'ai rien à...")

		ANSWER("Allez, arrêtez votre manège. J'ai toutes les preuves sur un datacube. Et ça parle de mutants, pour vous donner un petit indice...",53)
	NODE(53)
		SAY("Quoi? Je... non, ça n'est pas moi... Oh, et puis merde. Vous êtes au courant, de toute façon. Qu'est-ce que vous voulez? Si c'est pour l'argent que vous voulez, alors je vais vous décevoir : je n'en ai pas.")

		ANSWER("Mais non, pour qui est-ce que vous me prenez? Je ne suis pas ici pour votre argent.",54)
	NODE(54)1
		SAY("Alors je ne comprends pas... Qu'est-ce que vous attendez de moi?")

		ANSWER("J'ai juste une petite faveur à vous demander. Pour que toutes ces informations ne se retrouvent pas propulsées sur le réseau de Neocron.",55)
	NODE(55)
		SAY("Si je peux le faire, alors c'est oui. Mais je ne peux pas tout faire...")

		ANSWER("Ce que je vais vous demander, vous pouvez le faire. Retardez les tests de votre dernière arme à rayons. Un jour ou deux, pas plus...",56)
	NODE(56)
		SAY("Comment est-ce que vous connaissez l'existence de cette arme? C'est un dossier top secret...")

		ANSWER("Que ce le soit ou pas, ça n'est pas un problème.",57)
	NODE(57)
		SAY("Et qu'est-ce qui va m'arriver, à moi? Non, je ne peux pas...")

		ANSWER("C'est vous qui voyez. Soit vous retardez les tests, soit vous verrez tous vos petits secrets sur le réseau.",58)
	NODE(58)
		SAY("Mais vous n'avez pas compris! Je ne peux pas! Les tests vont commencer sans moi, il n'y a que le directeur des opérations qui peut les arrêter!")

		ANSWER("C'est dommage pour vous. Quand je pense à ces photos et aux gens qui vont se rincer l'oeil...",59)
	NODE(59)
		SAY("Non! Je vous en supplie! Je... Il doit bien y avoir un moyen.")

		ANSWER("J'écoute. Vous feriez mieux de penser à quelque chose d'efficace.",60)
	NODE(60)
		SAY("Je sais! Vous pourriez tuer le directeur des opérations! Il pourra toujours utiliser un GenRep, mais au moins ça retardera les procédures de tests.")

		ANSWER("Moi? Ecoutez... C'est de vos secrets que je parle. Nous nous comprenons bien?",61)
	NODE(61)
		SAY("Vous voulez que je... Non, c'est impossible. On se connaît depuis des années. Je ferais beaucoup de choses pour garder le secret sur ma vie privée, mais ça, je ne peux pas. Si vous voulez me ruiner la vie, alors vous devrez en passer par là...")

		ANSWER("CONTINUER",62)
	NODE(62)
		SAY("Mais réfléchissez encore... Mais je vous reconnais! C'est vous qui avez tué ces deux runners de BioTech récemment, n'est-ce pas? Je me disais bien que j'avais déjà vu votre tête sur un moniteur de surveillance...")

		ANSWER("Je vois qu'on commence à me connaître...",63)
	NODE(63)
		TAKEITEM(9155)
		if(result==0)then
			SAY("Et moi je ne peux pas vous aider! Allez, vous avez déjà tué avant, vous pouvez le faire une nouvelle fois, non?")
			ENDDIALOG()		
		else
		SAY("Mais je ne peux pas! Allez, vous avez déjà tué des gens, vous pouvez vous occuper du directeur des opérations, non?")

		ANSWER("S'il le faut! Bon, j'ai encore l'impression que c'est moi qui vais faire le sale travail. Quant à vos secrets... Tenez, les voilà. Je m'en fiche. Ca restera entre nous.",64)
		end
	NODE(64)
		SAY("Merci... Du fond du coeur, merci...")
		SETNEXTDIALOGSTATE(65)
		ENDDIALOG()
		
	NODE(65)
		SAY("Dépêchez-vous d'aller le tuer avant qu'il ne soit trop tard!")

		ENDDIALOG()

--Spieler tötet BioTech Director of Operations 6

-----------------------------------------------------

--Mazzaro

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("La situation est critique. Nous comptons sur vous.")
			ENDDIALOG()
		else
			SAY("Notre phase de tests est un succès!! Je suis persuadé que CityAdmin va nous choisir. Bon, comment se passe notre petite histoire avec Biotech?")

			ANSWER("Leur phase de tests a été brusquement interrompue. En chemin, figurez-vous que leur directeur des opérations a trouvé la mort.",101)
		end
	NODE(101)
--NEW	
		SAY("Runner, vous êtes d'une efficacité redoutable. Vous entrez dans la fosse aux lions et vous descendez quelqu'un sans réfléchir, j'aime ça. Vraiment, j'adore ça. Tangent a une dette envers vous maintenant. Je pense qu'on va vous donner un exemplaire de ces armes qui viennent d'être développées. Quel type d'arme préféréz vous?")

		ANSWER("J'aimerais bien un canon. Vous savez, un truc bien gros.",102)
		ANSWER("Je préfère quelque chose de plutôt discret, un pistolet par exemple?",104)
		ANSWER("J'aime bien les fusils. Vous en avez?",106)
	NODE(102)
		SAY("Je suis certain que vous allez apprécier cette nouvelle arme. Et de plus, Tangent vous offre la somme de 100.000 crédits pour vos bons et loyaux services. Après tout ce que vous avez fait pour la compagnie, cela me semble plus que mérité.")

		ANSWER("Merci.",103)
	NODE(103)
		GIVEITEM(9156,255)
		GIVEMONEY(100000)
		SAY("Nous ne pourrons plus vous confier de missions en rapport avec votre position actuelle. Mais je vous suggère de continuer votre soutien à Tangent en fondant un clan. Merci beaucoup pour votre aide.")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()			

	NODE(104)
		SAY("Je suis certain que vous allez apprécier cette nouvelle arme. Et de plus, Tangent vous offre la somme de 100.000 crédits pour vos bons et loyaux services. Après tout ce que vous avez fait pour la compagnie, cela me semble plus que mérité.")

		ANSWER("Merci.",105)
	NODE(105)
		GIVEITEM(9157,255)
		GIVEMONEY(100000)
		SAY("Nous ne pourrons plus vous confier de missions en rapport avec votre position actuelle. Mais je vous suggère de continuer votre soutien à Tangent en fondant un clan. Merci beaucoup pour votre aide.")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()	

	NODE(106)
		SAY("Je suis certain que vous allez apprécier cette nouvelle arme. Et de plus, Tangent vous offre la somme de 100.000 crédits pour vos bons et loyaux services. Après tout ce que vous avez fait pour la compagnie, cela me semble plus que mérité.")

		ANSWER("Merci.",107)
	NODE(107)
		GIVEITEM(9158,255)
		GIVEMONEY(100000)
		SAY("Nous ne pourrons plus vous confier de missions en rapport avec votre position actuelle. Mais je vous suggère de continuer votre soutien à Tangent en fondant un clan. Merci beaucoup pour votre aide.")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()	

end