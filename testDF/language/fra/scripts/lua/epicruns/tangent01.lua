--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Next Direx
--1,D,Diamond Direx
--2,D,Figaro spielt die Drogen aus
--3,D,Mazzaro


--Startnode, Person
--0 Human Resource
--50 NEXT Director of Operations
--100 Diamond Director of Operations
--150 Figaro Black Dragon
--200 Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Bienvenue, runner! C'est toujours un plaisir de voir une nouvelle t�te parmi nous. Tangent aime �tre proche de ses employ�s, vous vous en rendrez compte rapidement.")

		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Nous donnons � chacun les moyens de cr�er sa propre r�alit�. Comme vous l'avez peut-�tre remarqu�, je suis en train de parler des armes que nous produisons. Vous vous imaginez sans doute qu'elles trouvent facilement des acqu�reurs � Neocron. M�me moi, j'ai un fusil d'assaut Tangent dans mon appartement.")

		ANSWER("C'est un plaisir d'appartenir � une faction qui traite ses clients de mani�re r�aliste. On ne nous lave pas le cerveau � longueur de journ�es avec ces imb�cillit�s que sont la paix et la libert�.",2)
	NODE(2)
		SAY("Evidemment, c'est en effet un de nos objectifs les plus chers. Tout client a de l'importance pour nous, et nous organisons de nombreuses compagnes pour susciter l'int�r�t du consommateur.")

		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Mais Tangent s'occupe surtout de la production d'armes � tous les �chelons. Je devrais peut-�tre vous parler tout d'abord de la compagnie? Nous allons �voquer cela ensemble.")

		ANSWER("J'allais justement vous le demander.",4)
	NODE(4)
		SAY("Tangent Technologies a �t� cr��e en 2748. A cette �poque, elle s'est s�par�e de sa maison m�re, BioTech, car elle avait trop grandi pour en rester d�pendante.")

		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("Depuis cette �poque, Tangent a constamment d�pass� sa compagnie mire, � tous les niveaux. CityAdmin a toujours sign� de gros contrats avec Tangent, car son secteur d'activit� est depuis toujours la sp�cialisation dans la fabrication des armes.")

		ANSWER("CONTINUER",6)
	NODE(6)
		SAY("En vendant des armes sur le march� de Neocron, nous avons assur� un constant renouvellement du march�. Et m�me si BioTech utilise tous les moyens en sa possession pour nous renverser de notre place pr�pond�rante, nos ventes continuent de progresser chaque ann�e.")

		ANSWER("BioTech essaye donc activement de mettre des b�tons dans les roues de Tangent?",7)
	NODE(7)
		SAY("Oui, et ils ont m�me parfois recours � la violence. Officiellement, ils vont bien entendu jouer les innocents. Mais ils ont des contacts avec Tsunami et investissent de grosses sommes dans les actions qu'ils m�nent contre Tangent.")

		ANSWER("CONTINUER",8)
	NODE(8)
		SAY("Mais ces tentatives ne peuvent pas emp�cher Tangent d'atteindre ses buts. Et en parlant de �a, vous  d�sirez certainement commencer � travailler pour Tangent, n'est-ce pas?")

		ANSWER("Oui, �videmment. Je m'imaginais presque que j'allais ne rien faire en �change de cet appartement que vous m'avez donn�.",9)
	NODE(9)
		SAY("Soyez assur� que l'appartement vous appartient r�ellement. Tangent consid�re votre premi�re mission comme une simple faveur. Vous toucherez un petit d�dommagement pour cela.")

		ANSWER("C'est toujours agr�able de travailler pour de l'argent. De quoi s'agit-il?",10)
		ANSWER("J'ai envie de remettre �a � plus tard.",23)
	NODE(10)
		SAY("C'est plut�t simple. Pour une compagnie comme Tangent, c'est �videmment important de maintenir de bonnes relations afin de faire avancer nos grands projets.")

		ANSWER("CONTINUER",11)
	NODE(11)
		SAY("Nos plus importants partenaires sont NEXT et Diamond Immobilier. NEXT coop�re avec nous parce que, apr�s tout, nous utilisons leurs v�hicules pour monter certains de nos syst�mes d'armement.")

		ANSWER("CONTINUER",12)
	NODE(12)
		SAY("Evidemment, c'est dans notre int�r�t, c'est tr�s visible. Et nous avons avec Diamond Immobilier des contrats pour �quiper leurs propri�t�s en syst�mes de s�curit�.")

		ANSWER("CONTINUER",13)
	NODE(13)
		SAY("Notre relation avec Diamond remonte � loin, et nous sommes en tr�s bon termes.")

		ANSWER("Oui, je pensais bien que ce genre de contrats existaient. Mais Tangent fournit aussi des armes pour les CopBots, non?",14)
	NODE(14)
		SAY("C'est juste. Evidemment, CityAdmin a choisi Tangent pour s'occuper de l'arsenal des CopBots. Apr�s tout, Tangent est le plus grand fabricant d'armes ind�pendant. C'est non seulement plut�t lucratif, mais c'est aussi une mission qui exige de nous une grande responsabilit�. Si nous faisions les mauvais choix, les cons�quences pourraient �tre catastrophiques.")

		ANSWER("CONTINUER",15)
	NODE(15)
		SAY("La principale pr�occupation de Tangent, c'est l'efficacit� de ses armes. Les CopBots sont cens�s accomplir leur t�che aussi efficacement que possible. Il faut que les citoyens de Neocron puissent dormir sur leurs deux oreilles.")

		ANSWER("Impressionnant. Mais vous vouliez me dire quelque chose au sujet de ma mission, si le me souviens bien.",16)
	NODE(16)
		SAY("Attendez que j'aie termin�. Cette petite mission consiste en vous rendre � NEXT, Diamond Immobilier, et enfin Pepper Park. Pepper Park est un quartier vraiment dangereux. Faites attention lorsque vous y passez.")

		ANSWER("CONTINUER",17)
	NODE(17)
		SAY("Donc, tout d'abord vous devrez passer voir le directeur des op�rations de NEXT pour lui remettre ces documents importants. C'est une analyse pouss�e de l'efficacit� des syst�mes d'armement de Tangent en conjonction avec la technologie des Hovercrafts.")

		ANSWER("CONTINUER",18)
	NODE(18)
		SAY("Ensuite, allez au QG de Diamond pour la seconde livraison. Mais j'ai oubli� le nom du destinataire. C'est soir le QG de Diamond, soit la tour CityAdmin, � moins que ce soit un des magasins de Diamond.")

		ANSWER("CONTINUR",19)
	NODE(19)
		SAY("Cette livraison est un assortiment de spiritueux. Souvenez-vous qu'il faut toujours entretenir ses relations par de petits cadeaux.")

		ANSWER("Vous avez aussi parl� de Pepper Park. Qu'est-ce que je vais devoir y faire?",20)

--Spieler bekommt zwei Pakete
	NODE(20)
		GIVEITEM(9150)
		GIVEITEM(9151)
		SAY("Ca n'est pas tr�s important. Vous allez devoir y trouver quelqu'un qui s'appelle Figaro. Il vous donnera un paquet que vous devrez remettre ici. C'est bien compris?")

		ANSWER("Evidemment, je suis plut�t du genre curieux...",21)
	NODE(21)
		SAY("La curiosit� est une b�n�diction, encore faut-il en user avec mod�ration. En exc�s, elle peut �tre extr�mement n�faste. Allez-y, et n'oubliez pas � votre retour de donner le paquet de Figaro � Lazzaro, ici au QG.")

		ANSWER("CONTINUER",22)
	NODE(22)
		SAY("Sinon il sera de mauvaise humeur, et �a n'est pas le genre de chose qu'on souhaite voir arriver ici.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(24)
		ENDDIALOG()


	NODE(23)
		SAY("Alors prenez votre temps. Pr�parez-vous,et revenez quand vous �tes pr�t.")
		ENDDIALOG()

	NODE(24)
		SAY("Vous devriez prendre votre premi�re mission un peu plus au s�rieux si vous voulez devenir quelqu'un dans Tangent. Si vous ne trouvez pas le courtier de Diamond, alors c'est qu'il est autre part en ville. Diamond est partout dans Neocron.")
		ENDDIALOG()
		

-----------------------------------------------------
--NEXT Director of Operations
	NODE(50)
		TAKEITEM(9150)
		if(result==0)then
			SAY("Oui? J'ai beaucoup � faire, et pas beaucoup de temps pour bavarder.")
			ENDDIALOG()
		else
			SAY("Oui? D�p�chez-vous, je suis tr�s occup�.")

			ANSWER("Je dois vous livrer ce colis. Je viens de Tangent.",51)
		end
	NODE(51)
		SAY("Tr�s bien. On m'a d�j� pr�venu. La confirmation est partie, elle va arriver chez Tangent dans quelques secondes. Vous venez de commencer chez eux?")

		ANSWER("Oui, et j'esp�re faire une belle carri�re.",52)
	NODE(52)
		SAY("Bien, runner. Tangent, c'est un bon choix. Ils ont d'excellentes armes. Nous avons toujours �t� en tr�s bonnes relations avec eux. Bonne journ�e � vous, runner.")
		SETNEXTDIALOGSTATE(53)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(53)
		SAY("Je ne m'occupe pas de petites affaires, moi.")
		ENDDIALOG()
		

-----------------------------------------------------
--Diamond Director of Operations
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Vous n'avez rien � faire ici. Vous feriez mieux de vous en aller.")
			ENDDIALOG()
		else
			TAKEITEM(9151)
			if(result==0)then
				SAY("Vous n'avez rien � faire ici. Vous feriez mieux de vous en aller.")
				ENDDIALOG()
			else
				SAY("Oui? Une livraison pour Diamond, je pr�sume?")

				ANSWER("C'est un petit cadeau de la part de Tangent, et c'est � vous que je dois le remettre...",101)
			end
		end
	NODE(101)
		SAY("Vraiment? C'est tr�s gentil � Tangent de m'offrir �a. Le service de maintenance de Tangent est excellent, pour ce que je m'en souviens. Tr�s professionnel. Mais qu'est-ce que c'est �a? Je ne pense pas que...")

		ANSWER("Un probl�me?",102)
	NODE(102)
		SAY("Non, non �a n'est rien. Rien du tout. C'est juste que c'est un vin tr�s raffin�, un des meilleurs qu'on puisse trouver dans le monde.")

		ANSWER("CONTINUER",103)
	NODE(103)
		SAY("Et �a n'est pas du synth�tique. Ca vaut une petite fortune. Transmettez ma gratitude � Tangent.")
		SETNEXTDIALOGSTATE(104)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	
	NODE(104)
		SAY("Adressez-vous � un de nos employ�s, j'ai beaucoup de travail.")
		ENDDIALOG()		

-----------------------------------------------------
--Figaro Black Dragon
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je n'ai rien � te dire.")
			ENDDIALOG()
		else
			SAY("Salut runner! Belle journ�e n'est-ce pas? Mais j'ai ici quelque chose qui pourrait la rendre encore plus belle...")

			ANSWER("Qu'est-ce que c'est que ce coin minable...",151)
		end
	NODE(151)
		SAY("Ouais, je sais, mais certains consid�rent malgr� tout que c'est le paradis sur terre. Et j'en fais partie. Bon, c'est pas tout �a... Qu'est-ce que tu me prends?")

		ANSWER("Euh... non, je ne veux pas de drogue. Je viens pour chercher un paquet � livrer.",152)
	NODE(152)
		SAY("OK, donc t'es le runner qui va me livrer �a. Haha! Si tu veux savoir, c'est vraiment de la bonne came qu'il y a l�-dedans. Si quelqu'un demande, on fournit, c'est notre job.")

		ANSWER("CONTINUER",153)
	NODE(153)
		SAY("Surtout si t'es accro � ce truc pour le restant de tes jours. Mais j'admets que Damion Jordan a des go�ts de prince.")

		ANSWER("Une minute... Ces drogues, c'est pour Jordan? Le boss de Tangent? On parle bien de la m�me personne?",154)
	NODE(154)
		SAY("Ouais, exactement! T'�tais pas au courant? Damion est un grand client, et ce depuis longtemps.")

		ANSWER("CONTINUER",155)
	NODE(155)
		SAY("A la limite, on pourrait m�me facilement tenir rien qu'avec ce qu'il nous paye. C'est pas croyable ce qu'il peut prendre. Il a les moyens de sa d�fonce, le bougre.")

		ANSWER("Mais pourquoi est-ce qu'il fait �a? Il doit avoir une bonne raison...",156)
	NODE(156)
		SAY("J'en sais rien. Il a toujours bien aim� les drogues, et le Dragon Noir a de bons rapports avec lui � cause de �a. On lui fait m�me des prix r�duits.")

		ANSWER("CONTINUER",157)
	NODE(157)
		SAY("Il s'y est mis s�rieusement le jour o� son p�re a donn� BioTech a son plus jeune fr�re, Seymour. Je pense qu'il s'attendait � rafler toute la mise.")

		ANSWER("CONTINUER",158)
	NODE(158)
		SAY("Qui sait? Mais je parle trop. Tu veux certainement retourner dans ton petit quartier tranquille, n'est-ce pas?")

		ANSWER("Je suis l� uniquement parce que c'est ma mission, pas parce que j'ai choisi d'y �tre.",159)

--Spieler bekommt massig Drogen

	NODE(159)
		GIVEITEM(9152)
		SAY("Si jamais t'as envie de te d�foncer la t�te, tu trouveras tout ce que tu veux ici � Pepper Park.")
		SETNEXTDIALOGSTATE(160)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(160)
		SAY("C'est bon, je t'ai d�j� donn� tout ce qu'il fallait. T'en veux plus? D�sol�, mais pas aujourd'hui.")
		ENDDIALOG()
		
-----------------------------------------------------
--Mazzaro
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Revenez quand vous avez termin� votre mission.")
			ENDDIALOG()
		else
			SAY("Entrez et prenez place. Vous �tes un de nos nouveaux runners, et vous venez de terminer votre premi�re mission. C'est bien �a?")

			ANSWER("Oui, voici le colis avec les... euh... drogues.",201)
		end
	NODE(201)
		TAKEITEM(9152)
		if(result==0)then
			SAY("Ne me dites pas que vous avez perdu votre colis?")
			ENDDIALOG()
		else
			SAY("Quel dommage. Je dois donner une mauvaise impression de Tangent, � cause de �a. En th�orie, le livreur n'est pas cens� savoir ce qu'il y a dans ce paquet. Et j'ajouterais m�me que les r�gles de discr�tion �l�mentaires sugg�rent que vous n'avez m�me pas � tenter de vous renseigner.")

			ANSWER("Oui, on peut dire que �a m'a fait r�fl�chir. A quoi servent ces drogues?",202)
		end
	NODE(202)
		SAY("Bon, je vais vous expliquer. Damion Jordan, le dirigeant de tangent, a quelques probl�mes avec les drogues. Mais tout le monde est plus ou moins au courant de ses petites histoires dans Neocron, ne serait-ce que par ou�-dire. C'est triste de devenir accro � �a aussi rapidement.")

		ANSWER("CONTINUER",203)
	NODE(203)
		SAY("Vous avez compris? Le dirigeant d'une grande compagnie ne peut pas se permettre de sortir dans la rue pour acheter ses doses. Qu'est-ce que vous feriez � ma place? Voil�, vous avez compris. Vous envoyez un runner vous les chercher. C'est tout ce qu'il y a � dire.")

		ANSWER("Pourquoi les gens sont-ils si attir�s par les drogues?",204)
	NODE(204)
		SAY("Je sais pas... Mais vous avez fait du bon travail. La livraison a bien �t� effectu�e. J'ai demand� de vous faire venir � moi parce que je voulais cr�er aussi peu de rumeurs que possible. J'esp�re que je peux compter sur vous pour faire de m�me.")

		ANSWER("Oui, je sais garder un secret.",205)
	NODE(205)
		GIVEMONEY(1000)
		SAY("Tr�s bien. Voici une r�compense de 1000 cr�dits. Vous avez fait votre premier pas vers une carri�re radieuse au sein de Tangent.")

		ANSWER("CONTINUER",206)
	NODE(206)
		SAY("Mais ne vous reposez pas trop vite. On vous conna�t, et plus vous vous faites appr�cier ici, plus vous aurez de bonnes missions. Prenez soin de vous, et � la prochaine fois.")
		EPICRUNFINISHED(4,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end