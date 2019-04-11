--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,PVP, Black Dragon, 50
--1,D, Jenna NCPD, 100
--2,D, Human R, 150
--3
--
--Startnode, Person
--0, Human Resource Director
--50, Simmons
--100, Jenna NCPD
--150, Human Resource Director
--200,
--250,
--
--Items
--belastende Dokumente, 50 9352

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Si vous vous sentez prêt, voilà une nouvelle chance de convaincre Simmons. Grâce à vos efforts, il a finalement décidé de nous rejoindre. Il semblait très déterminé.")

		ANSWER("Il a été rapide pour récupérer de la mort de sa femme.",1)
		ANSWER("I am sorry, but I don't yet feel ready for another assignment.",2)
	NODE(1)

		SAY("Il n'a rien dit à ce sujet. Mais c'est à vous qu'il a fait appel, il était convaincu que vous pouviez l'aider à combattre le Dragon Noir. De plus, ces types nous donnent beaucoup de mal ces derniers temps. Je sais qu'il a accepté de venir grâce à vous, alors vous avez gagné une prime de 8.000 crédits. Vous l'aurez lorsque vous aurez terminé la mission. Mais ne perdez pas votre temps. Il devrait encore être dans Pepper Park 02.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(2)
		SAY("Comme vous voulez. Mais revenez lorsque vous changez d'avis.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Simmons
--50
	NODE(50)
		SAY("Je n'ai pas encore eu l'occasion de vous remercier. Même si j'ai beaucoup souffert, vous m'avez tout de même aidé, et je n'ai pas le droit d'oublier ça.")

		ANSWER("Je suis navré de ne pas avoir pu faire davantage.",51)
	NODE(51)
		SAY("Pas de problème, vous n'êtes pas responsable. Le seul responsable de tout ce qui est arrivé, c'est le Dragon Noir.")

		ANSWER("Je n'aurais pas pensé que vous vous feriez si rapidement à la mort de votre femme.",52)
	NODE(52)
		SAY("Ben j'ai pas le choix, il faut bien continuer à vivre. Même si sa perte dépasse tout ce que je peux exprimer. Je ne peux pas tout laisser tomber, ça ne me plaît pas.")

		ANSWER("Tant mieux. Mais vous...",53)
	NODE(53)
		SAY("Je ne me suis peut-être pas encore complètement remis de sa mort, je pense. j'ai quelque chose à vous demander. Et en échange, je vous donnerai des informations sur le Dragon Noir.")

		ANSWER("On m'a déjà dit que vous aviez besoin de mon aide. C'est à quel sujet?",54)
	NODE(54)
		SAY("Tuez-les.")

		ANSWER("Pardon?",55)
	NODE(55)
		SAY("Tuez-les tous. C'est le mal incarné, ils ne méritent rien d'autre. Tuez-les tous. Ils vont souffrir pour ce qu'ils ont fait à Catherine.")

		ANSWER("Je comprends que ça doit être difficile à vivre, mais vous êtes certain que c'est la bonne solution?",56)
	NODE(56)
		SAY("Mais qu'est-ce que vous voulez que je fasse? Demander à CityAdmin de me venger? Arrêtez... Non, j'ai envie de détruire le Dragon Noir. Même si je dois y rester. Si je meurs, alors je retrouverai ma femme de toutes façons.")

		ANSWER("Si ça permet à la fois à Diamond d'avoir un peu de répit, et à vous d'être apaisé, alors je vais m'en charger.",57)
	NODE(57)
		SAY("Très bien. Peu importe comment vous vous occupez d'eux, c'est vous que ça regarde. Mais n'hésitez pas à frapper fort, attaquez-vous à quelqu'un d'aussi puissant que vous. Pas de garde, pas de personnel, choisissez plutôt un runner.")

		ANSWER("Compris. Je vais faire de mon mieux.",58)
	NODE(58)
		SAY("Revenez quand vous en avez tué un. Lorsque vous aurez terminé, je pense que j'aurai quelque chose pour Diamond.")
		SETNEXTDIALOGSTATE(59)
		ENDDIALOG()

--Spieler tötet drei Black Dragon Runner
		
	NODE(59)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Pourquoi vous n'avez pas encore tué de runner du Dragon Noir? Vous ne pensez pas qu'ils le méritent?")
			ENDDIALOG()
		else
			SAY("Beau travail. LA première étape a été franchie. Pendant que vous effectuiez une diversion, j'ai pu obtenir des noms et des informations compromettantes. C'est ma contribution à Diamond, avec ça vous allez pouvoir faire très mal à Diamond. Après tout, c'est ce que je souhaite.")

			ANSWER("Ne faites pas durer le suspense, qu'est-ce que vous avez pour moi?",60)
		end
	NODE(60)
		SAY("Tenez, portez ça au NCPD. Ils sauront quoi faire de ces noms. Bientôt, ces gens n'auront plus un coin sûr où vivre dans Neocron.")

		ANSWER("Bien, j'espère que Diamond pourra bénéficier d'un peu de repos.",61)
	NODE(61)
		GIVEITEM(9352)
		SAY("Donnez ces documents à l'officier Jenna, au NCPD. Diamond pourrait encore avoir besoin de vos services après ça. Je vous suggère de retourner voir votre directeur des ressources humaines lorsque vous avez terminé.")
		SETNEXTDIALOGSTATE(62)
		ENDDIALOG()
	NODE(62)
		SAY("Transférez les documents au NCPD, et ensuite pour pourrez retourner voir le directeur des ressources humaines de Diamond.")
		ENDDIALOG()

--------------------------------------------------------------------
-- Jenna NCPD
--100
	NODE(100)
		TAKEITEM(9352)
		if(result==0)then
			SAY("Je n'ai pas le temps, citoyen. Veuillez quitter les lieux.")
			ENDDIALOG()			
		else
			SETNEXTDIALOGSTATE(101)
			SAY("Je représente la loi et l'ordre. Soyez bref.")

			ANSWER("J'ai des informations concernant des individus suspects. Je pensais que vous pouviez vous en charger.",101)
		end
	NODE(101)
		SAY("Ces informations recoupent celle que nous avons dans notre base de données. Merci, on va avoir moins de difficultés à trouver ces criminels. Merci beaucoup. Si vous trouvez d'autres informations de ce type, ne vous privez pas de nous les communiquer.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
		
	NODE(102)
		SAY("Si vous ne pensez pas apporter d'aide supplémentaire au NCPD, je vous demande de quitter les lieux.")

		ENDDIALOG()
--------------------------------------------------------------------
--Human Resource Director
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous avez déjà rencontré Simmons? S'il peut aider Diamond, alors ça en vaut la peine. Il vous attend dans Pepper Park 02.")
			ENDDIALOG()			
		else
			SAY("Vous avez fait du bon travail en recrutant Simmons. Il a prouvé qu'il avait de la ressource en infligeant un coup sévère au Dragon Noir. Mais je ne sais vraiment pas comment il a obtenu ces informations. J'ai comme l'impression qu'il leur en veut personnellement.")

			ANSWER("Croyez-moi, il leur en veut très personnellement.",151)
		end
	NODE(151)
		SAY("Et vous, vous venez de gagner 15.000 crédits pour votre travail très convaincant. Vous n'avez pas hésité à risquer votre vie pour Diamond. C'est très, très impressionnant.")

		ANSWER("Je ne fais que mon travail. Et peut-être un peu plus, c'est vrai.",152)
	NODE(152)
		GIVEMONEY(15000)
		GIVEMONEY(8000)
		SETNEXTDIALOGSTATE(153)
		SAY("Continuez comme ça. Si vous vous entraînez dur, nous pourrons vous donner des missions plus souvent. Mais je pense que pour l'instant vous pouvez prendre quelques jours de congé et vous détendre. (prochaine mission au niveau 40)")
		EPICRUNFINISHED(2,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

	NODE(153)
		SAY("Go away")
		ENDDIALOG()

end