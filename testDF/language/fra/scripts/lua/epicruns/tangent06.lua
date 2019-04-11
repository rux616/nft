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
		SAY("Vous commencez � devenir une v�ritable c�l�brit� ici. L'autre jour, j'ai m�me entendu quelqu'un parler de vous dans la rue.")

		ANSWER("Merci, mais je fais seulement mon travail.",1)
	NODE(1)
		SAY("La modestie, �a ne vous va pas du tout. Vous avez le droit d'�tre fier de ce que vous faites. Mais �videmment, ce n'est pas pour �a qu'on a besoin de vous aujourd'hui.")

		ANSWER("Je n'en attendais pas moins. Quel est le probl�me?",2)
	NODE(2)
		SAY("C'est au sujet des derniers tests de l'arme � rayons. Tout est en ordre, et on aura bient�t termin� la lecture des derniers rapports. Mais malgr� tout, Biotech a r�ussi on ne sait comment � rattraper son retard et � atteindre le m�me stade de d�veloppement.")

		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Tangent ne peut pas se permettre de perdre dans une confrontation directe. Surtout quand c'est Biotech qui est en face. C'est pourquoi nous allons lancer une op�ration contre eux. Il faut r�duire leurs chances de rivaliser avec notre arme.")

		ANSWER("Et vous avez pens� � moi? Bien. Qu'est-ce que vous pr�voyez?",4)
	NODE(4)
		SAY("Les tests finaux doivent �tre entrav�s � tout prix. Vous avez bien re�u des �l�ments compromettants de la part de votre contact, la derni�re fois? Alors vous devriez les utiliser maintenant. C'est vraiment l'occasion r�v�e.")

		ANSWER("Oui, des �l�ments compromettants concernant une scientifique, une certaine Andressa. Elle devrait �tre dans les alentours du si�ge de Biotech.",5)
	NODE(5)
		SAY("Alors utilisez vos preuves. Tout ce qui fait du mal � BioTech est bon � prendre.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(6)
		SAY("D�p�chez-vous, le temps presse.")
		ENDDIALOG()


-----------------------------------------------------
--Andressa

	NODE(50)
		SAY("Laissez-moi tranquille. J'ai travaill� toute la nuit, et j'ai une migraine �pouvantable. Il faut que je fasse une pause.")

		ANSWER("Ne vous inqui�tez pas, Andressa, je n'en ai pas pour longtemps.",51)
	NODE(51)
		SAY("Comment est-ce que vous connaissez mon nom? On s'est d�j� rencontr�s?")

		ANSWER("C'est peu probable. Mais moi, je vous donnais. Ou du moins, je connais ce que vous cherchez � cacher.",52)
	NODE(52)
		SAY("Qu'est-ce que vous me dites-l�? Je n'ai rien �...")

		ANSWER("Allez, arr�tez votre man�ge. J'ai toutes les preuves sur un datacube. Et �a parle de mutants, pour vous donner un petit indice...",53)
	NODE(53)
		SAY("Quoi? Je... non, �a n'est pas moi... Oh, et puis merde. Vous �tes au courant, de toute fa�on. Qu'est-ce que vous voulez? Si c'est pour l'argent que vous voulez, alors je vais vous d�cevoir : je n'en ai pas.")

		ANSWER("Mais non, pour qui est-ce que vous me prenez? Je ne suis pas ici pour votre argent.",54)
	NODE(54)1
		SAY("Alors je ne comprends pas... Qu'est-ce que vous attendez de moi?")

		ANSWER("J'ai juste une petite faveur � vous demander. Pour que toutes ces informations ne se retrouvent pas propuls�es sur le r�seau de Neocron.",55)
	NODE(55)
		SAY("Si je peux le faire, alors c'est oui. Mais je ne peux pas tout faire...")

		ANSWER("Ce que je vais vous demander, vous pouvez le faire. Retardez les tests de votre derni�re arme � rayons. Un jour ou deux, pas plus...",56)
	NODE(56)
		SAY("Comment est-ce que vous connaissez l'existence de cette arme? C'est un dossier top secret...")

		ANSWER("Que ce le soit ou pas, �a n'est pas un probl�me.",57)
	NODE(57)
		SAY("Et qu'est-ce qui va m'arriver, � moi? Non, je ne peux pas...")

		ANSWER("C'est vous qui voyez. Soit vous retardez les tests, soit vous verrez tous vos petits secrets sur le r�seau.",58)
	NODE(58)
		SAY("Mais vous n'avez pas compris! Je ne peux pas! Les tests vont commencer sans moi, il n'y a que le directeur des op�rations qui peut les arr�ter!")

		ANSWER("C'est dommage pour vous. Quand je pense � ces photos et aux gens qui vont se rincer l'oeil...",59)
	NODE(59)
		SAY("Non! Je vous en supplie! Je... Il doit bien y avoir un moyen.")

		ANSWER("J'�coute. Vous feriez mieux de penser � quelque chose d'efficace.",60)
	NODE(60)
		SAY("Je sais! Vous pourriez tuer le directeur des op�rations! Il pourra toujours utiliser un GenRep, mais au moins �a retardera les proc�dures de tests.")

		ANSWER("Moi? Ecoutez... C'est de vos secrets que je parle. Nous nous comprenons bien?",61)
	NODE(61)
		SAY("Vous voulez que je... Non, c'est impossible. On se conna�t depuis des ann�es. Je ferais beaucoup de choses pour garder le secret sur ma vie priv�e, mais �a, je ne peux pas. Si vous voulez me ruiner la vie, alors vous devrez en passer par l�...")

		ANSWER("CONTINUER",62)
	NODE(62)
		SAY("Mais r�fl�chissez encore... Mais je vous reconnais! C'est vous qui avez tu� ces deux runners de BioTech r�cemment, n'est-ce pas? Je me disais bien que j'avais d�j� vu votre t�te sur un moniteur de surveillance...")

		ANSWER("Je vois qu'on commence � me conna�tre...",63)
	NODE(63)
		TAKEITEM(9155)
		if(result==0)then
			SAY("Et moi je ne peux pas vous aider! Allez, vous avez d�j� tu� avant, vous pouvez le faire une nouvelle fois, non?")
			ENDDIALOG()		
		else
		SAY("Mais je ne peux pas! Allez, vous avez d�j� tu� des gens, vous pouvez vous occuper du directeur des op�rations, non?")

		ANSWER("S'il le faut! Bon, j'ai encore l'impression que c'est moi qui vais faire le sale travail. Quant � vos secrets... Tenez, les voil�. Je m'en fiche. Ca restera entre nous.",64)
		end
	NODE(64)
		SAY("Merci... Du fond du coeur, merci...")
		SETNEXTDIALOGSTATE(65)
		ENDDIALOG()
		
	NODE(65)
		SAY("D�p�chez-vous d'aller le tuer avant qu'il ne soit trop tard!")

		ENDDIALOG()

--Spieler t�tet BioTech Director of Operations 6

-----------------------------------------------------

--Mazzaro

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("La situation est critique. Nous comptons sur vous.")
			ENDDIALOG()
		else
			SAY("Notre phase de tests est un succ�s!! Je suis persuad� que CityAdmin va nous choisir. Bon, comment se passe notre petite histoire avec Biotech?")

			ANSWER("Leur phase de tests a �t� brusquement interrompue. En chemin, figurez-vous que leur directeur des op�rations a trouv� la mort.",101)
		end
	NODE(101)
--NEW	
		SAY("Runner, vous �tes d'une efficacit� redoutable. Vous entrez dans la fosse aux lions et vous descendez quelqu'un sans r�fl�chir, j'aime �a. Vraiment, j'adore �a. Tangent a une dette envers vous maintenant. Je pense qu'on va vous donner un exemplaire de ces armes qui viennent d'�tre d�velopp�es. Quel type d'arme pr�f�r�z vous?")

		ANSWER("J'aimerais bien un canon. Vous savez, un truc bien gros.",102)
		ANSWER("Je pr�f�re quelque chose de plut�t discret, un pistolet par exemple?",104)
		ANSWER("J'aime bien les fusils. Vous en avez?",106)
	NODE(102)
		SAY("Je suis certain que vous allez appr�cier cette nouvelle arme. Et de plus, Tangent vous offre la somme de 100.000 cr�dits pour vos bons et loyaux services. Apr�s tout ce que vous avez fait pour la compagnie, cela me semble plus que m�rit�.")

		ANSWER("Merci.",103)
	NODE(103)
		GIVEITEM(9156,255)
		GIVEMONEY(100000)
		SAY("Nous ne pourrons plus vous confier de missions en rapport avec votre position actuelle. Mais je vous sugg�re de continuer votre soutien � Tangent en fondant un clan. Merci beaucoup pour votre aide.")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()			

	NODE(104)
		SAY("Je suis certain que vous allez appr�cier cette nouvelle arme. Et de plus, Tangent vous offre la somme de 100.000 cr�dits pour vos bons et loyaux services. Apr�s tout ce que vous avez fait pour la compagnie, cela me semble plus que m�rit�.")

		ANSWER("Merci.",105)
	NODE(105)
		GIVEITEM(9157,255)
		GIVEMONEY(100000)
		SAY("Nous ne pourrons plus vous confier de missions en rapport avec votre position actuelle. Mais je vous sugg�re de continuer votre soutien � Tangent en fondant un clan. Merci beaucoup pour votre aide.")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()	

	NODE(106)
		SAY("Je suis certain que vous allez appr�cier cette nouvelle arme. Et de plus, Tangent vous offre la somme de 100.000 cr�dits pour vos bons et loyaux services. Apr�s tout ce que vous avez fait pour la compagnie, cela me semble plus que m�rit�.")

		ANSWER("Merci.",107)
	NODE(107)
		GIVEITEM(9158,255)
		GIVEMONEY(100000)
		SAY("Nous ne pourrons plus vous confier de missions en rapport avec votre position actuelle. Mais je vous sugg�re de continuer votre soutien � Tangent en fondant un clan. Merci beaucoup pour votre aide.")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()	

end