--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,CA Employee 50
--1,1, Matt 150
--2,2, Human Resource 200
--3
--
--Startnode, Person
--0, Human Resource Director
--50, CityAdmin Employee
--100, Human Resource Director
--150, Matt Tronstett
--200, Human Resource Director
--250,
--
--Items
--Dokumente f�r Diamond 9350

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Bonne journ�e � vous. Je crois que vous pourriez avez envie de faire quelque chose pour Diamond, non?")

		ANSWER("Vous avez bien devin�. Je pense que je me suis bien pr�par�.",1)
		ANSWER("Pour �tre honn�te, je crois que je ne suis pas encore pr�t.",4)
	NODE(1)
		SAY("C'est bien. La menace constitu�e par ces groupes de criminels se d�veloppe constamment. Bien s�r, chacun d'eux a �t� envoy� par le Dragon Noir, il n'y a aucun doute � ce sujet. M. Danmund a donc pr�par� un contrat entre nous et CityMercs pour la protection de nos appartements. Une r�union a �t� organis�e pr�s d'une station de radiodiffusion abandonn�e dans les Terres Br�l�es.")

		ANSWER("C'�tait grandement n�cessaire. On ne peut pas continuer comme �a.",2)
	NODE(2)
		SAY("Exactement... Nous avons encore besoin de quelques documents pour cette r�union, cependant. Il y a deux copies � rassembler chez CityAdmin. Ils les avaient examin�es pour assurer les clauses de rupture dans le contrat.")

		ANSWER("J'y vais.",3)
	NODE(3)
		SAY("Tr�s bien, n'oubliez pas de me renvoyer ces documents. L'employ� CityAdmin devrait avoir tout pr�par� pour vous.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
	NODE(4)
		SAY("Ne perdez pas de temps.")
		ENDDIALOG()
		

--------------------------------------------------------------------
-- CityAdmin Employee
--50
	NODE(50)
		SAY("Bienvenue � CityAdmin, que puis-je pour vous?")

		ANSWER("Je suis ici au nom de Diamond. Je suis cens� prendre quelques documents importants.",51)
	NODE(51)
		SAY("Un moment je vous prie... oui, votre identification a �t� accept�e. C'est une histoire horrible qui se produit l� avec Diamond. Naturellement CityAdmin essaye d'offrir autant d'appui que possible. Particuli�rement en raison de l'histoire commune qui lie Diamond et CityAdmin.")

		ANSWER("Que voulez-vous dire?",52)
	NODE(52)
		SAY("Bien, Diamond �tait une division de CityAdmin avant d'�tre privatis�e. Mais CityAdmin surveille toujours de pr�s le succ�s de Diamond.")

		ANSWER("Heureux d'entendre que CityAdmin s'en fait pour nous. J'ai encore grand besoin de ces documents si �a ne vous d�range pas trop.",53)
	NODE(53)
		GIVEITEM(9350)
		SAY("Bien. Un contrat avec les CityMercs, c'est bien �a? Je vous souhaite bonne chance.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()
		
	NODE(54)
		SAY("Je croyais que vous vouliez rapporter ces documents � Diamond?")
		ENDDIALOG()
		

--------------------------------------------------------------------
--Human Resource Director
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Vous �tes cens� aller voir un employ� de CityAdmin. Ces documents sont essentiels, je ne veux pas me r�p�ter.")
			ENDDIALOG()
		else
			SAY("Heureux de voir que vous �tes d�j� de retour. Tandis que vous �tiez parti, quelques nouvelles inqui�tantes nous sont parvenues. La d�l�gation de CityMerc a �t� attaqu�e par les Gardiens du Cr�puscule et c'est pourquoi la r�union ne peut pas avoir lieu comme pr�vu. Nous n'avons pas �t� pr�par�s pour cette �ventualit�. Malheureusement.")

			ANSWER("Et maintenant? Qu'est-ce qu'on peut faire? Y a-t-il d'autres solutions?",101)
		end
	NODE(101)
		SAY("Oui. Bien que vous puissiez imaginer l'agitation aux si�ges sociaux, Diamond a toujours une solution alternative.")

		ANSWER("Bien, j'�coute.",102)
	NODE(102)
		SAY("Les employ�s de haut rang qui �taient cens�s rencontrer CityMercs ne peuvent pas risquer de se rendre � la base militaire. Il serait beaucoup plus s�r si nous employions une personne de contact. Nous connaissons une personne qui vit dans � Point Red et qui convient parfaitement. Il a �t� projet� d'engager un runner qui irait secr�tement � Point Red et remettrait les documents � la personne de contact.")

		ANSWER("Pourquoi engager quelqu'un si je peux faire le travail?",103)
	NODE(103)
		SAY("Principalement parce que nous ne voulons envoyer aucun membre dans ces dangereuses Terres Br�l�es. Mais si vous �tes vraiment int�ress�, nous pourrions au moins vous donner la r�compense. La r�compense qui �tait destin�e au runner.")

		ANSWER("Bon, �a ne devrait pas �tre trop difficile. Point Red n'est pas si loin des murs protecteurs de Neocron.",104)
	NODE(104)
		SAY("Bonne chance, le contact est un certain Matt Tronstett. C'est un scientifique plut�t �trange qui a travaill� pour NEXT. Pour une raison �trange connue de lui seul, il pr�f�re vivre dans les Terres Br�l�es, � Point Red. Je vais lui dire imm�diatement de s'attendre � votre arriv�e tr�s bient�t.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()		
		

--------------------------------------------------------------------
--Matt Tronstett
--150
	NODE(150)
		TAKEITEM(9350)
		if(result==0)then
			SAY("D�sol�, quoique ce soit je ne suis pas int�ress�. Laissez-moi seul.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Bonjour runner. Qu'est-ce que quelqu'un comme vous fait dans ce d�sert?")

			ANSWER("Une mission importante. J'ai un paquet pour vous Mr Tronstett.",151)
		end
	NODE(151)
		SAY("Ahh, je comprends. Beaucoup de gens recherchent la protection de CityMercs de nos jours. Un trop grand nombre si vous me demandez. Et dans pas longtemps, ils seront riches. Tr�s riches.")

		ANSWER("J'esp�re qu'ils valent la peine.",152)
	NODE(152)
		SAY("Vous pouvez �tre s�r. Il n'y a personne de plus dur que CityMercs. L� o� ils sont impliqu�s, la perfection r�gne.")

		ANSWER("Je suis heureux d'entendre cela. Veuillez vous assurer que ces documents atteignent leur destination.",153)
	NODE(153)
		SAY("Bien s�r, je sais ce que je fais. Comme scientifique je dois agir en professionnel apr�s tout. Bonne chance pour votre retour. Je remettrai le contrat quand le CityMercs passera dans les environs et me rendra visite.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()
		
	NODE(154)
		SAY("Ne vous inqui�tez pas, je remettrai les documents personnellement. Vous pouvez retourner � Diamond et rassurer vos chefs, tout est pris en charge.")
		ENDDIALOG()

--------------------------------------------------------------------
--Human Resource Director
--200

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Avez-vous d�j� donn� les documents � Matt Tronstett � Point Red?")
			ENDDIALOG()
		else
			GIVEMONEY(4000)
			SAY("F�licitations, j'ai d�j� re�u une confirmation. Maintenant, nous devons juste attendre de voir si le CityMercs acceptent le contrat. Vous avez fait un bon travail et naturellement vous avez droit � la r�compense. 4000 cr�dits. Am�liorez vos qualifications et nous voudrons certainement encore votre expertise pour un travail futur. (prochaine mission � niveau 30)")
			ACTIVATEDIALOGTRIGGER(2)
			EPICRUNFINISHED(2,1)			
			ENDDIALOG()
			
		end
	

end