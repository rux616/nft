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
		SAY("Si vous vous sentez pr�t, voil� une nouvelle chance de convaincre Simmons. Gr�ce � vos efforts, il a finalement d�cid� de nous rejoindre. Il semblait tr�s d�termin�.")

		ANSWER("Il a �t� rapide pour r�cup�rer de la mort de sa femme.",1)
		ANSWER("I am sorry, but I don't yet feel ready for another assignment.",2)
	NODE(1)

		SAY("Il n'a rien dit � ce sujet. Mais c'est � vous qu'il a fait appel, il �tait convaincu que vous pouviez l'aider � combattre le Dragon Noir. De plus, ces types nous donnent beaucoup de mal ces derniers temps. Je sais qu'il a accept� de venir gr�ce � vous, alors vous avez gagn� une prime de 8.000 cr�dits. Vous l'aurez lorsque vous aurez termin� la mission. Mais ne perdez pas votre temps. Il devrait encore �tre dans Pepper Park 02.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(2)
		SAY("Comme vous voulez. Mais revenez lorsque vous changez d'avis.")
		ENDDIALOG()
--------------------------------------------------------------------
-- Simmons
--50
	NODE(50)
		SAY("Je n'ai pas encore eu l'occasion de vous remercier. M�me si j'ai beaucoup souffert, vous m'avez tout de m�me aid�, et je n'ai pas le droit d'oublier �a.")

		ANSWER("Je suis navr� de ne pas avoir pu faire davantage.",51)
	NODE(51)
		SAY("Pas de probl�me, vous n'�tes pas responsable. Le seul responsable de tout ce qui est arriv�, c'est le Dragon Noir.")

		ANSWER("Je n'aurais pas pens� que vous vous feriez si rapidement � la mort de votre femme.",52)
	NODE(52)
		SAY("Ben j'ai pas le choix, il faut bien continuer � vivre. M�me si sa perte d�passe tout ce que je peux exprimer. Je ne peux pas tout laisser tomber, �a ne me pla�t pas.")

		ANSWER("Tant mieux. Mais vous...",53)
	NODE(53)
		SAY("Je ne me suis peut-�tre pas encore compl�tement remis de sa mort, je pense. j'ai quelque chose � vous demander. Et en �change, je vous donnerai des informations sur le Dragon Noir.")

		ANSWER("On m'a d�j� dit que vous aviez besoin de mon aide. C'est � quel sujet?",54)
	NODE(54)
		SAY("Tuez-les.")

		ANSWER("Pardon?",55)
	NODE(55)
		SAY("Tuez-les tous. C'est le mal incarn�, ils ne m�ritent rien d'autre. Tuez-les tous. Ils vont souffrir pour ce qu'ils ont fait � Catherine.")

		ANSWER("Je comprends que �a doit �tre difficile � vivre, mais vous �tes certain que c'est la bonne solution?",56)
	NODE(56)
		SAY("Mais qu'est-ce que vous voulez que je fasse? Demander � CityAdmin de me venger? Arr�tez... Non, j'ai envie de d�truire le Dragon Noir. M�me si je dois y rester. Si je meurs, alors je retrouverai ma femme de toutes fa�ons.")

		ANSWER("Si �a permet � la fois � Diamond d'avoir un peu de r�pit, et � vous d'�tre apais�, alors je vais m'en charger.",57)
	NODE(57)
		SAY("Tr�s bien. Peu importe comment vous vous occupez d'eux, c'est vous que �a regarde. Mais n'h�sitez pas � frapper fort, attaquez-vous � quelqu'un d'aussi puissant que vous. Pas de garde, pas de personnel, choisissez plut�t un runner.")

		ANSWER("Compris. Je vais faire de mon mieux.",58)
	NODE(58)
		SAY("Revenez quand vous en avez tu� un. Lorsque vous aurez termin�, je pense que j'aurai quelque chose pour Diamond.")
		SETNEXTDIALOGSTATE(59)
		ENDDIALOG()

--Spieler t�tet drei Black Dragon Runner
		
	NODE(59)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Pourquoi vous n'avez pas encore tu� de runner du Dragon Noir? Vous ne pensez pas qu'ils le m�ritent?")
			ENDDIALOG()
		else
			SAY("Beau travail. LA premi�re �tape a �t� franchie. Pendant que vous effectuiez une diversion, j'ai pu obtenir des noms et des informations compromettantes. C'est ma contribution � Diamond, avec �a vous allez pouvoir faire tr�s mal � Diamond. Apr�s tout, c'est ce que je souhaite.")

			ANSWER("Ne faites pas durer le suspense, qu'est-ce que vous avez pour moi?",60)
		end
	NODE(60)
		SAY("Tenez, portez �a au NCPD. Ils sauront quoi faire de ces noms. Bient�t, ces gens n'auront plus un coin s�r o� vivre dans Neocron.")

		ANSWER("Bien, j'esp�re que Diamond pourra b�n�ficier d'un peu de repos.",61)
	NODE(61)
		GIVEITEM(9352)
		SAY("Donnez ces documents � l'officier Jenna, au NCPD. Diamond pourrait encore avoir besoin de vos services apr�s �a. Je vous sugg�re de retourner voir votre directeur des ressources humaines lorsque vous avez termin�.")
		SETNEXTDIALOGSTATE(62)
		ENDDIALOG()
	NODE(62)
		SAY("Transf�rez les documents au NCPD, et ensuite pour pourrez retourner voir le directeur des ressources humaines de Diamond.")
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
			SAY("Je repr�sente la loi et l'ordre. Soyez bref.")

			ANSWER("J'ai des informations concernant des individus suspects. Je pensais que vous pouviez vous en charger.",101)
		end
	NODE(101)
		SAY("Ces informations recoupent celle que nous avons dans notre base de donn�es. Merci, on va avoir moins de difficult�s � trouver ces criminels. Merci beaucoup. Si vous trouvez d'autres informations de ce type, ne vous privez pas de nous les communiquer.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
		
	NODE(102)
		SAY("Si vous ne pensez pas apporter d'aide suppl�mentaire au NCPD, je vous demande de quitter les lieux.")

		ENDDIALOG()
--------------------------------------------------------------------
--Human Resource Director
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Vous avez d�j� rencontr� Simmons? S'il peut aider Diamond, alors �a en vaut la peine. Il vous attend dans Pepper Park 02.")
			ENDDIALOG()			
		else
			SAY("Vous avez fait du bon travail en recrutant Simmons. Il a prouv� qu'il avait de la ressource en infligeant un coup s�v�re au Dragon Noir. Mais je ne sais vraiment pas comment il a obtenu ces informations. J'ai comme l'impression qu'il leur en veut personnellement.")

			ANSWER("Croyez-moi, il leur en veut tr�s personnellement.",151)
		end
	NODE(151)
		SAY("Et vous, vous venez de gagner 15.000 cr�dits pour votre travail tr�s convaincant. Vous n'avez pas h�sit� � risquer votre vie pour Diamond. C'est tr�s, tr�s impressionnant.")

		ANSWER("Je ne fais que mon travail. Et peut-�tre un peu plus, c'est vrai.",152)
	NODE(152)
		GIVEMONEY(15000)
		GIVEMONEY(8000)
		SETNEXTDIALOGSTATE(153)
		SAY("Continuez comme �a. Si vous vous entra�nez dur, nous pourrons vous donner des missions plus souvent. Mais je pense que pour l'instant vous pouvez prendre quelques jours de cong� et vous d�tendre. (prochaine mission au niveau 40)")
		EPICRUNFINISHED(2,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

	NODE(153)
		SAY("Go away")
		ENDDIALOG()

end