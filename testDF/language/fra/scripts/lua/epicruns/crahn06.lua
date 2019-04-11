--new
function DIALOG()
--Trigger
--0, 2 Dialog
--6, 66 Kill Multiple
-----------------------------------------------------------------
--Resource officer
	NODE(0)
		SAY("Bienvenue, ô frère du Cercle Noir. Père Agnus vient de me dire que tu as les cinq reliques Tacholytium en ta possession.")

		ANSWER("C'est uniquement grâce à l'aide du père Manus et du frère Agnus que je dois ma réussite.",1)
	NODE(1)
		SAY("Avant que j'oublie, père Agnus pense que le vieux Kev Critter possède encore un plan permettant de construire l'amplificateur PSI à partir des pièces détachées.")

		ANSWER("Bonnes nouvelles. Où puis-je trouver ce Kev Critter?",2)
	NODE(2)
		SAY("Kev tient un commerce de pièces de métal usagée dans les Terres Brûlées, à la Blakkmist Creek. Officiellement, son commerce est un dépotoir. Tu peux le trouver dans ce dépotoir.")

		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Critter est un vieil homme stupide qui peut se transformer en un fin renard s'il flaire une bonne affaire.")

		ANSWER("Il ne serait pas le premier.",4)
	NODE(4)
		SAY("Alors sois prudent et ne lui laisse pas voir à quel point tu veux le plan de construction. Tu ne ferais que faire augmenter le prix inutilement. Père Agnus va sûrement t'aider une fois que tu auras le plan.")

		ANSWER("Merci, je vais tenir compte de tes conseils. Que Crahn t'accompagne.",5)
	NODE(5)
		SAY("Bonne chance dans ta mission.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()	
		
	NODE(6)
		SAY("Ne voulais-tu pas aller voir Kev Critter au dépotoir de Blakkmist? Si tu as déjà tout ce qu'il te faut, je te conseille d'aller voir père Agnus pour construire l'artefact.")

		ENDDIALOG()	

-----------------------------------------------------------------
--kEV cRITTER

	NODE(50)
		SAY("Oh, oh... un père du cercle noir. C'est pas bon signe.")

		ANSWER("Salutations, n'aie pas peur.",51)
	NODE(51)
		SAY("La dernière fois qu'un groupe de frères haut gradés est entré ici, ça a mal fini.")

		ANSWER("Ils ont trouvé quelque chose?",52)
	NODE(52)
		SAY("Le chef du groupe, son nom était Harkon je crois, est devenu furieux quand ils n'ont pas trouvé ce qu'ils cherchaient.")

		ANSWER("Frère Harkon est venu ici? J'imagine qu'il cherchait un objet fait à partir de Tacholytium?",53)
	NODE(53)
		SAY("Tacholytium... oui, c'est bien ça. Il semble y avoir de la demande pour cette substance. J'ai entendu dire que le groupe dirigé par Harkon avait été suivi des Tsunami.")

		ANSWER("Oui, les hérétiques sont partout de nos jours.",54)
	NODE(54)
		SAY("Ca m'a presque donné l'impression que Tsunami cherchaient la même chose.")

		ANSWER("Cette affaire avec Tsunami a déjà été réglée.",55)
	NODE(55)
		SAY("Oui, j'ai entendu parler de ça. Et est exactement ce que je ne comprends pas. Pourquoi vous dites que vous êtes un ordre sacré si vous employez n'importe quel moyen pour atteindre votre but?")

		ANSWER("Silence! Fais attention à ne pas insulter l'ordre. Je ne suis pas venu ici pour discuter des moyens que l'ordre utilise. ",56)
	NODE(56)
		SAY("J'avais compris. Mais dis-moi, pourquoi es-tu venu chez moi, père? ")

		ANSWER("J'ai besoin d'un plan. On m'a dit que tu possédais le plan d'un amplificateur PSI de Gaya.",57)
	NODE(57)
		SAY("J'ai toujours pu extraire presque chaque plan à partir de mes vieux microdisques. Mais je ne veux pas de ton argent.")

		ANSWER("C'est très gentil à toi. Je vais louer ta générosité. Alors donne-moi le plan.",58)
	NODE(58)
		SAY("Non, non... J'ai seulement dit que je ne voulais pas de ton argent... Ca ne veut pas dire que je ne veux rien.")

		ANSWER("Après tout ce que j'ai entendu à ton sujet, j'aurais été surpris que tu me donnes ce plan sans poser de questions. Alors, qu'attends-tu en échange?",59)
	NODE(59)
		SAY("Ben... C'est très calme ici dans les Terres Brûlées, et les nuits sont longues. De temps en temps je me mélange quelques drogues pour que ça soit plus facile à vivre.")

		ANSWER("Viens-en au fait, je n'ai pas toute la journée!",60)
	NODE(60)
		SAY("Quelques-uns des meilleurs ingrédients sont cependant très difficiles à avoir. Mais ça ne devrait pas être un problème pour un moine puissant du cercle noir de m'apporter quelque chose qu'on trouve dans les Terres Brûlées.")

		ANSWER("Au fait, imbécile, au fait!",61)
	NODE(61)
		SAY("J'ai besoin de la glande de poison bleue de l'araignée-PSI Latekulus. ")

		ANSWER("Bien. Et où est-ce qu'on peut trrouver ça?",62)
	NODE(62)
		SAY("On trouve ces araignées près de Point Red. Une seule, ça suffira.")

		ANSWER("Parfait. Ne bouge pas d'ici.",63)
	NODE(63)
		SAY("Apporte-moi cette glande, et je te donne le plan.")

		ANSWER("Dis, tu aurais pu penser à quelque chose de plus difficile, non?",64)
	NODE(64)
		SAY("C'est un ingrédient essentiel pour un Tearson Booster. Et tu es un père expérimenté du cercle noir. Ca devrait être facile pour toi d'avoir cet ingrédient.")

		ANSWER("Si c'était si facile, tu n'aurais pas besoin de mon aide",65)
	NODE(65)
		SAY("Je ne veux même pas en discuter. Ou tu m'apportes cette glande, ou je ne fais pas de marché avec toi. Reviens quand tu auras ma glande.")
		SETNEXTDIALOGSTATE(66)
		ENDDIALOG()
--Spieler besorgt Drogen Zutaten
	NODE(66)

			TAKEITEM(9012)
			if(result==0)then
				SAY("Tu voulais que je t'apporte quelque chose, tu te rappelles?")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(67)
				SAY("Tu as été parti pendant longtemps, l'ami. J'étais certain que quelque chose de terrible t'étais arrivé et que je ne te reverrais pas. ")

				ANSWER("Qu'est-ce que tu veux dire? J'ai les ingrédients pour ta drogue.",67)

			end

	NODE(67)
		SAY("C'est trop tard. J'ai vendu l'unique plan et le minidisque à quelqu'un d'autre. Peut-être que tu devrais être un peu plus rapide la prochaine fois?")

		ANSWER("Tu veux rire? Attends un peu, mon arme va t'apprendre à tenir tes promesses.",68)
	NODE(68)
		SAY("Minute... peut-être que l'acheteur du minidisque pourrait t'en faire une copie?")

		ANSWER("Qui a acheté le disque? Allez...parle!",69)
	NODE(69)
		SAY("Avant, donne-moi les ingrédients... et promets sur ton honneur de membre du cercle noir que tu ne lèveras pas la main sur moi.")

		ANSWER("Je te donnerai tes ingrédients, mais si je ne réussis pas à mettre la main sur le plan, je reviendrai... et je vous réduirai en poussière, toi et ton maudit dépotoir.",70)
	NODE(70)
		SAY("On dirait que je n'ai pas le choix. Ok... l'acheteur était un certain Mark Cole.")

		ANSWER("ETHAN! Encore lui...",71)
	NODE(71)
		SAY("Tu le connais?")

		ANSWER("Et pas qu'un peu. Il est bien connu de l'ordre.",72)
	NODE(72)
		SAY("Donc tu sais déjà où le trouver...Alors vas-y... et j'espère ne plus jamais te revoir.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(73)
		ENDDIALOG()
	NODE(73)
		SAY("Je t'en ai déjà dit plus que je ne voulais.")
		ENDDIALOG()

-----------------------------------------------------------------
--eTHAN cOLE

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
		SAY("Quelle surprise! Vite, pars ou quelqu'un pourrait nous voir ensemble.")
		ENDDIALOG()	
		else
		SAY("Incroyable!!! Ca fait longtemps que je ne t'avais pas vu, vieille branche.")

		ANSWER("On n'a jamais été amis, Mark. Tu dois me confondre avec une de tes vipères.",101)
		end
	NODE(101)
		SAY("Je vois que tu as été accepté dans le cercle noir. Félicitations! Ce tatouage du cercle est tout à fait impressionnant.")

		ANSWER("Venons-en aux faits. Tu as un plan de Kev Critter et un minidisque en ta possession. Donne-moi ce plan et je disparaîtrai. Ne me le donne pas... et c'est toi qui disparais.",102)
	NODE(102)
		SAY("Des menaces? Tu perds ton temps... Penses-tu que j'ai acheté ce plan pour l'encadrer et l'accrocher sur le mur au-dessus de mon lit? C'était une mission payée par Tsunami.")

		ANSWER("Tu ne savais pas que je recherchais ce plan?",103)
	NODE(103)
		SAY("Je ne sais pas ce à quoi sert cet objet, mais à en juger par le prix que le Syndicat m'a payé, j'en connais qui s'y intéressent beaucoup.")

		ANSWER("Mark, c'était la dernière fois que tu nuis à mon travail. Prépare-toi à mourir.",104)
	NODE(104)
		SAY("J'ai pris des précautions. Si tu m'attaques, père Agnus va avoir un stiletto sur son bureau dès demain. Celui avec lequel frère Gabriel a été attaqué, tu te rappelles?")

		ANSWER("Frère Agnus est du cercle rouge, et moi du cercle noir. Ils ne le croiraient pas si jamais il m'accusait. Mais vu que je n'ai pas besoin d'avoir des soucis en ce moment, je vais t'épargner si tu me dis où je peux trouver le plan.",105)
	NODE(105)
		SAY("Hmmmm... tu sembles bien déterminé. Très bien. Je l'ai donné à Taylor Gomez. Je ne sais pas s'il l'a encore, mais c'est ta seule chance de le récupérer.")

		ANSWER("Et où trouve-t-on ce Taylor?",106)
	NODE(106)
		SAY("Taylor travaille au quartier secret de Tsunami. Tu vas devoir le prendre par surprise lorsqu'il quitte le bureau de la faction en passant par le Secret Passage-2. Tu vas devoir aller chercher le plan dans la fosse aux lions, on dirait.")

		ANSWER("Qu'il en soit ainsi. Ethan, j'espère que tu vas rester hors de ma route à l'avenir. Si nos chemins devaient se croiser de nouveau, je t'avertis... Je tire d'abord et je parle ensuite. Compris?",107)
	NODE(107)
		SAY("Oui. Je n'ai pas envie de finir comme Drakkhan Helios ou Calvin Grimwood. Mais dépêche-toi, je ne sais pas combien de temps Gomez va avoir ce disque sur lui ou pour combien de temps il va rester au QG secret Tsunami.")
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()
	NODE(108)
		SAY("Je croyais t'avoir déjà dit que si tu veux cet objet qui a un lien avec le Tacholytium, tu dois tuer Taylor Gomez au QG des Tsunami.")
		ENDDIALOG()

--Spieler killt Taylor Gomez Trigger 66
-----------------------------------------------------------------
--Pater Agnus
	
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
		SAY("Désolé, père. Je n'ai pas le temps pour l'instant.")
		ENDDIALOG()
		else
		SAY("On m'a dit que tu étais sur les traces du plan de l'amplificateur PSI.")

		ANSWER("Oui, et je l'ai sur moi. Mais j'ai besoin de ton aide pour l'assembler.",151)
		end
	NODE(151)
		TAKEITEM(9010)
		if(result==0)then
		SAY("Mais qu'est-ce que c'est ça? Tu n'as pas de plan. Honte à toi de t'être moqué de moi de la sorte!")
		ENDDIALOG()
		else
		SETNEXTDIALOGSTATE(152)
		SAY("Vraiment? Tu as le plan, mon frère? C'est un moment historique!!!")

		ANSWER("Oui, le voici. Regarde.",152)
		end
	NODE(152)
		SAY("A partir de ces plans, il nous sera facile de construire un amplificateur PSI.")

		ANSWER("Merci pour ton aide.",153)
	NODE(153)
		GIVEMONEY(50000)
		GIVEITEM(9014,255)
		SAY("C'est un plaisir d'aider un père aussi célèbre que toi. Voici l'amplificateur PSI! Prends-le et que Crahn te bénisse.")
		EPICRUNFINISHED(10,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

--Taylor
	NODE(200)
		SAY("Dégage Runner! C'est notre territoire!")
		ENDDIALOG()


end
