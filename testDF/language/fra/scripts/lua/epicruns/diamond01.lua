--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,Grimm
--1
--2
--3
--
--Startnode, Person
--0, Human Resource Director
--50, Thompson
--100, Foster
--150,Jenna
--200,Human Resource Director
--250,
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Ahh, bienvenue à Diamond. Nous avons suivi de près votre progrès jusqu'ici et certains ici ont été très impressionnés. Pour le prouver, on a décidé de vous donner une tâche qui exige une certaine compétence.")

		ANSWER("Je suis heureux d'apprendre cela.",1)
		ANSWER("Avant d'accepter une telle tâche, je crois que je devrais me préparer un peu mieux.",5)
	NODE(1)
		SAY("Comme vous devez déjà le savoir, nous faisons face à certaines difficultés à cause de ces imprévisibles Dragons Noirs . Ce sont des criminels impitoyables qui ne renonceraient à rien pour atteindre leurs buts. Même avant que Diamond ne soit privatisé en 2046, le Dragon Noir a été la menace la plus sérieuse que nous ayons eu à traiter.")

		ANSWER("Pourquoi? Que veulent-ils? Diamond ne fait des affaires que dans l'immobilier.",2)
	NODE(2)
		SAY("Oui, exactement. Le but du Dragon Noir est de dominer le marché de l'immobilier, et la seule manière de l'atteindre est de neutraliser Diamond. Nous déjà avons dû diminuer nos efforts dans la région de Pepper Park, puisque le Dragon Noir menace nos clients. Même Eric Danmund lui-même, le chef de Diamond a décrété l'état d'urgence.")

		ANSWER("C'est dommage, mais je croyais que vous vouliez me parler au sujet de ma tâche.",3)
	NODE(3)
		SAY("Naturellement, mais je suis d'avis que vous devriez avoir quelques connaissances de base. Trop de gens ne savent pas que presque tous les appartements et magasins sont propriété de Diamond. Sauf que les problèmes avec le Dragon Noir se sont aggravés encore récemment. Ils ont déjà éloigné certains de nos clients. Diamond voudrait que vous rendiez visite à deux personnes qui veulent clore leurs contrats avec nous. Vous devrez les convaincre de revenir sur leur décision. Évidemment le Dragon Noir ont quelque chose faire avec ceci. Après que vous les aurez convaincus, vous pourriez aller au NCPD et vous assurer qu'ils soient au courant du problème avec le Dragon Noir.")

		ANSWER("Où puis-je trouver ces deux personnes? Je ferai de mon mieux.",4)
	NODE(4)
		SAY("Vous trouverez le premier client dans Plaza 02, il a accepté une rencontre dans le restaurant Gariots. Vous trouverez l'autre dans ViaRosso 03. S'il vous reste du temps, ensuite vous devriez vraiment aller au NCPD et venir me faire un compte-rendu de votre travail.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		
	NODE(5)
		SAY("Faites donc. Soyez toujours en forme, c'est important. Revenez une fois que vous penserez vous être suffisamment préparé.")
		ENDDIALOG()

--------------------------------------------------------------------
--Thompson
--50
	NODE(50)
		SAY("Bonjour, êtes-vous le représentant Diamond?")

		ANSWER("Oui, désolé de mon retard.",51)
	NODE(51)
		SAY("Alors vous ne savez pas encore ce que ces bâtards nous ont fait? ")

		ANSWER("Non, désolé.",52)
	NODE(52)
		SAY("Ils ont défoncé la porte après avoir neutralisé notre système d'alarme. Pointant leurs pistolets vers nous, ils nous ont forcés à rester dans un coin de notre appartement tandis qu'ils vidaient nos tiroirs et nos meubles. Ils ont empilé toutes nos affaires sur une table et y ont mis le feu. Nous avons dû patiemment attendre et les regarder brûler tous nos vêtements, ma fille pleurait et je pouvais rien faire. Ensuite ils sont partis, nous menaçant de revenir si nous ne quittions pas notre appartement.")

		ANSWER("C'est terrible. Avez-vous alerté le NCPD?",53)
	NODE(53)
		SAY("Oui et ils m'ont dit qu'ils ne pouvaient rien faire, que les brutes décrites n'apparaissent dans aucun dossier de CityAdmin. Je suis désolé mais la seule chose que je peux faire dans ces circonstances est de résilier le contrat avec Diamond. Ma petite fille Jasmine ne quitte pas sa mère même une seconde sans éclater en larmes.")

		ANSWER("Je comprends. Dans ces circonstances tout le monde agirait comme cela. Mais si jamais vous changez d'avis, vous savez que Diamond est là.",54)
	NODE(54)
		SAY("Merci de l'offre. Nous avons toujours eu de bonnes expériences avec Diamond, mais je ne peux pas continuer comme ça.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(55)
		ENDDIALOG()
		
	NODE(55)
		SAY("Ma décision est prise. Je ne veux pas la changer, c'est pour mon enfant.")
		ENDDIALOG()



--------------------------------------------------------------------
--fOSTER
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ne me dérangez pas. Notre rencontre n'est pas pour tout de suite, et j'ai encore des choses à faire.")
			ENDDIALOG()
		else

			SAY("Vous êtes le représentant de Diamond, c'est çat?")

			ANSWER("C'est moi. Je viens pour qu'on parle de votre futur en tant que client de la compagnie.",101)

		end
	NODE(101)
		SAY("Tentez votre chance alors, bien que je pense que ce sera en vain. Je ne continuerai pas mon contrat avec Diamond.")

		ANSWER("Je respecte votre décision mais je voudrais entendre quelles sont vos raisons.",102)
	NODE(102)
		SAY("Je ne veux pas vraiment en parler puisqu'elles sont personnelles.")

		ANSWER("Je vous assure que toutes les mesures ont été prises contre ces brutes, s'ils étaient responsables dans ce cas-ci.",103)
	NODE(103)
		SAY("Toutes les précautions possibles?! Ca ne suffit pas! Comment comptez-vous éviter de telles choses à l'avenir?!")

		ANSWER("Je suis sûr que nos experts en matière de sécurité vont s'en occuper.",104)
	NODE(104)
		SAY("Que pensez-vous que vos experts en matière de sécurité peuvent faire contre six tanks massifs qui envahissent votre appartement et vous forcent à avaler le contenu en entier de votre Cryofridge?!! Je dois encore prendre des pilules à cause de cet incident! Bon, maintenant vous savez de quoi je parle, vous êtes content?")

		ANSWER("Vous avez raison. Je ferais mieux d'aller voir le NCPD personnellement.",105)
	NODE(105)
		SAY("Allez-y et essayez, mais ça ne m'a pas aidé. Le contrat est annulé de toute façon. Désolé.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
	NODE(106)
		SAY("Je ne vais pas changer d'avis. Bonne journée.")
		ENDDIALOG()
--------------------------------------------------------------------
--Jenna
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Pour toute question, veuillez demander à un employé  .")
			ENDDIALOG()
		else
			SAY("Décrivez vos intentions, citoyen.")

			ANSWER("Je viens de Diamond et je veux rapporter que nos clients sont harcelées par des brutes qui les forcent à abandonner leurs maisons. Par la force, je précise.",151)
		end
	NODE(151)
		SAY("Oui, nous avons été informés à ce sujet dans plusieurs cas, 36 exactement. Mais nous manquons toujours d'information essentielle pour poursuivre l'enquête. Je suis désolée.")

		ANSWER("Quoi? Tant que ça? Et vous me dites que toutes ces personnes ne peuvent pas vous donner assez de détails sur les criminels? Que suis-je supposé penser de ceci?",152)
	NODE(152)
		SAY("Les descriptions des criminels n'apparaissent dans aucun de nos dossiers. Selon nos dossiers ils n'existent pas. Ils ne sont simplement pas enregistrés dans Neocron. Le NCPD suspecte le Dragon Noir d'être derrière ceci mais jusqu'à ce point seulement quelques exécutions préventives ont été exécutées.")

		ANSWER("Exécutions préventives? Mais le NCPD...",153)
	NODE(153)
		SAY("Désolé citoyen. Tout le monde ici fait de son mieux. Je ne peux pas vous en dire plus.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(154)
		ENDDIALOG()

	NODE(154)
		SAY("Le NCPD essaie de maintenir la paix dans Neocron. Le NCPD se donne toujours à 110 pourcent. Par conséquent vous pouvez retourner chez Diamond et soyez assuré que nous trouverons tôt ou tard.")	
		ENDDIALOG()
--------------------------------------------------------------------
-- Human Resource Director
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Soyez toujours gentil et amical. Un client attend dans la Plaza 02 et l'autre dans ViaRosso 03. Vous les trouverez dans un des divers restaurants du quartier.")
			ENDDIALOG()
		else
			SAY("Vous revoilà. C'était assez rapide. Vous semblez être une personne très déterminée.")

			ANSWER("Déterminé est un peu exagéré. Les clients étaient forcés de quitter leur propriété par des brutes.",201)
		end
	NODE(201)
		SAY("Avez-vous été capable de les convaincre de revenir chez Diamond?")

		ANSWER("Malheureusement pas et ce n'est pas une coïncidence. Ces personnes ont vraiment souffert et même le NCPD est confronté à une énigme.",202)
	NODE(202)
		GIVEMONEY(1000)
		SAY("Nouvelles très déstabilisantes. Je devrai les expédier aux supérieurs. M. Danmund devrait entendre parler de ceci. Vous n'avez pas exactement accompli votre tâche avec succès, néanmoins Diamond vous donne ces 1000 crédits. Si vous désirez, vous pouvez améliorer vos qualifications, et revenir nous rendre visite plus tard pour une nouvelle mission (prochaine mission au niveau 20)")
		EPICRUNFINISHED(2,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end