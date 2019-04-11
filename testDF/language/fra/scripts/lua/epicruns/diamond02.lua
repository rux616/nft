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
--Dokumente für Diamond 9350

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Bonne journée à vous. Je crois que vous pourriez avez envie de faire quelque chose pour Diamond, non?")

		ANSWER("Vous avez bien deviné. Je pense que je me suis bien préparé.",1)
		ANSWER("Pour être honnête, je crois que je ne suis pas encore prêt.",4)
	NODE(1)
		SAY("C'est bien. La menace constituée par ces groupes de criminels se développe constamment. Bien sûr, chacun d'eux a été envoyé par le Dragon Noir, il n'y a aucun doute à ce sujet. M. Danmund a donc préparé un contrat entre nous et CityMercs pour la protection de nos appartements. Une réunion a été organisée près d'une station de radiodiffusion abandonnée dans les Terres Brûlées.")

		ANSWER("C'était grandement nécessaire. On ne peut pas continuer comme ça.",2)
	NODE(2)
		SAY("Exactement... Nous avons encore besoin de quelques documents pour cette réunion, cependant. Il y a deux copies à rassembler chez CityAdmin. Ils les avaient examinées pour assurer les clauses de rupture dans le contrat.")

		ANSWER("J'y vais.",3)
	NODE(3)
		SAY("Très bien, n'oubliez pas de me renvoyer ces documents. L'employé CityAdmin devrait avoir tout préparé pour vous.")
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
		SAY("Bienvenue à CityAdmin, que puis-je pour vous?")

		ANSWER("Je suis ici au nom de Diamond. Je suis censé prendre quelques documents importants.",51)
	NODE(51)
		SAY("Un moment je vous prie... oui, votre identification a été acceptée. C'est une histoire horrible qui se produit là avec Diamond. Naturellement CityAdmin essaye d'offrir autant d'appui que possible. Particulièrement en raison de l'histoire commune qui lie Diamond et CityAdmin.")

		ANSWER("Que voulez-vous dire?",52)
	NODE(52)
		SAY("Bien, Diamond était une division de CityAdmin avant d'être privatisée. Mais CityAdmin surveille toujours de près le succès de Diamond.")

		ANSWER("Heureux d'entendre que CityAdmin s'en fait pour nous. J'ai encore grand besoin de ces documents si ça ne vous dérange pas trop.",53)
	NODE(53)
		GIVEITEM(9350)
		SAY("Bien. Un contrat avec les CityMercs, c'est bien ça? Je vous souhaite bonne chance.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()
		
	NODE(54)
		SAY("Je croyais que vous vouliez rapporter ces documents à Diamond?")
		ENDDIALOG()
		

--------------------------------------------------------------------
--Human Resource Director
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Vous êtes censé aller voir un employé de CityAdmin. Ces documents sont essentiels, je ne veux pas me répéter.")
			ENDDIALOG()
		else
			SAY("Heureux de voir que vous êtes déjà de retour. Tandis que vous étiez parti, quelques nouvelles inquiétantes nous sont parvenues. La délégation de CityMerc a été attaquée par les Gardiens du Crépuscule et c'est pourquoi la réunion ne peut pas avoir lieu comme prévu. Nous n'avons pas été préparés pour cette éventualité. Malheureusement.")

			ANSWER("Et maintenant? Qu'est-ce qu'on peut faire? Y a-t-il d'autres solutions?",101)
		end
	NODE(101)
		SAY("Oui. Bien que vous puissiez imaginer l'agitation aux sièges sociaux, Diamond a toujours une solution alternative.")

		ANSWER("Bien, j'écoute.",102)
	NODE(102)
		SAY("Les employés de haut rang qui étaient censés rencontrer CityMercs ne peuvent pas risquer de se rendre à la base militaire. Il serait beaucoup plus sûr si nous employions une personne de contact. Nous connaissons une personne qui vit dans à Point Red et qui convient parfaitement. Il a été projeté d'engager un runner qui irait secrètement à Point Red et remettrait les documents à la personne de contact.")

		ANSWER("Pourquoi engager quelqu'un si je peux faire le travail?",103)
	NODE(103)
		SAY("Principalement parce que nous ne voulons envoyer aucun membre dans ces dangereuses Terres Brûlées. Mais si vous êtes vraiment intéressé, nous pourrions au moins vous donner la récompense. La récompense qui était destinée au runner.")

		ANSWER("Bon, ça ne devrait pas être trop difficile. Point Red n'est pas si loin des murs protecteurs de Neocron.",104)
	NODE(104)
		SAY("Bonne chance, le contact est un certain Matt Tronstett. C'est un scientifique plutôt étrange qui a travaillé pour NEXT. Pour une raison étrange connue de lui seul, il préfère vivre dans les Terres Brûlées, à Point Red. Je vais lui dire immédiatement de s'attendre à votre arrivée très bientôt.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()		
		

--------------------------------------------------------------------
--Matt Tronstett
--150
	NODE(150)
		TAKEITEM(9350)
		if(result==0)then
			SAY("Désolé, quoique ce soit je ne suis pas intéressé. Laissez-moi seul.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Bonjour runner. Qu'est-ce que quelqu'un comme vous fait dans ce désert?")

			ANSWER("Une mission importante. J'ai un paquet pour vous Mr Tronstett.",151)
		end
	NODE(151)
		SAY("Ahh, je comprends. Beaucoup de gens recherchent la protection de CityMercs de nos jours. Un trop grand nombre si vous me demandez. Et dans pas longtemps, ils seront riches. Très riches.")

		ANSWER("J'espère qu'ils valent la peine.",152)
	NODE(152)
		SAY("Vous pouvez être sûr. Il n'y a personne de plus dur que CityMercs. Là où ils sont impliqués, la perfection règne.")

		ANSWER("Je suis heureux d'entendre cela. Veuillez vous assurer que ces documents atteignent leur destination.",153)
	NODE(153)
		SAY("Bien sûr, je sais ce que je fais. Comme scientifique je dois agir en professionnel après tout. Bonne chance pour votre retour. Je remettrai le contrat quand le CityMercs passera dans les environs et me rendra visite.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()
		
	NODE(154)
		SAY("Ne vous inquiétez pas, je remettrai les documents personnellement. Vous pouvez retourner à Diamond et rassurer vos chefs, tout est pris en charge.")
		ENDDIALOG()

--------------------------------------------------------------------
--Human Resource Director
--200

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Avez-vous déjà donné les documents à Matt Tronstett à Point Red?")
			ENDDIALOG()
		else
			GIVEMONEY(4000)
			SAY("Félicitations, j'ai déjà reçu une confirmation. Maintenant, nous devons juste attendre de voir si le CityMercs acceptent le contrat. Vous avez fait un bon travail et naturellement vous avez droit à la récompense. 4000 crédits. Améliorez vos qualifications et nous voudrons certainement encore votre expertise pour un travail futur. (prochaine mission à niveau 30)")
			ACTIVATEDIALOGTRIGGER(2)
			EPICRUNFINISHED(2,1)			
			ENDDIALOG()
			
		end
	

end