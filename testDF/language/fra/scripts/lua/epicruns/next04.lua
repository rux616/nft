--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person

--0,D,Mason
--1,D,Almachim
--2,D,Mason



--Startnode, Person
--0 Human Resource
--50 Mason
--100 BioTech
--150 Mason
--200 Almachim
--250 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Content de vous voir. D�p�chez-vous, Mason veut vous parler. Il s'est pass� quelque chose d'horrible.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("D�p�chez-vous, je vous dis! Mason a besoin de vous tout de suite.")
		ENDDIALOG()
		


-----------------------------------------------------
--Mason

	NODE(50)
		SAY("Vous tombez � pic, runner. Il s'est pass� quelque chose d'horrible. Vous avez d�j� entendu parler de notre SysAdmin? J'ai appris qu'elle avait �t� empoisonn�e, et maintenant elle est dans le coma. Je n'imagine m�me pas ce qui pourrait se passer si elle mourait.")
		
		ANSWER("CONTINUER",51)
	NODE(51)
		SAY("Elle ne pourrait jamais terminer ses merveilleux programmes. Avec sa mort, ce seront des millions d'actions de la compagnie qui se retrouveront sur le march�, et toute la structure de NExT pourrait changer. Croyez-moi, c'est un changement qui ne serait pas le bienvenu.")
		
		ANSWER("Et maintenant, qu'est-ce qu'on fait?",52)
	NODE(52)
		SAY("Les experts m'ont expliqu� qu'il existait un m�dicament capable de la r�veiller. Mais ce m�dicament n'est disponible que chez Biotech et ProtoPharm. Comme ProtoPharm n'acceptera jamais de nous en donner, il faut aller voir BioTech. Ce qu'il nous faut, c'est de l'Hydrosin et du Kaboxorid. Qu'est-ce que vous attendez? Vous �tes un de nos meilleurs runners, vous �tes en mesure de nous aider. Allez, d�p�chez-vous!")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		

-----------------------------------------------------
--BioTech

	NODE(100)
		SAY("Bonjour runner! Que puis-je faire pour vous?")
		
		ANSWER("C'est tr�s important, d�p�chez-vous! Donnez-moi de l'Hydrosin et du Kaboxorid.",101)
	NODE(101)
		SAY("Fort bien. On m'a expliqu� que quelqu'un allait venir nous en demander. Malheureusement, il y a comme un l�ger probl�me...")
		
		ANSWER("J'ai vraiment besoin de �a maintenant! Quel genre de probl�me?",102)
	NODE(102)
		SAY("Vous avons d'�normes quantit�s d'Hydrosin, mais plus une seule dose de Kaboxorid. Nous attendons une livraison pour la fin du mois.")
		
		ANSWER("C'est une catastrophe! Est-ce que vous savez qui d'autre en vend?",103)
	NODE(103)
		SAY("J'ai bien peur qu'� part nous, ProtoPharm soit le seul fournisseur de cet �l�ment. A moins que... Une minute! On en produit aussi � El Farid, apparemment il y en a actuellement. Vous devriez essayer l�-bas. Vous voulez tout de m�me de l'Hydrosin?")
		
		ANSWER("S'il n'y a pas d'autre possibilit�, alors je vais vous prendre l'Hydrosin. Il faut que je retourne � NEXT faire mon rapport. Au revoir.",104)
	NODE(104)
		GIVEITEM(9102)
		SAY("Vous �tes de NEXT? Je voulais vous dire que ProtoPharm est en train d'acheter des actions NEXT � tour de bras... Mais vous savez d�j� tout �a, je suppose. Bonne chance.")
		SETNEXTDIALOGSTATE(105)
		ENDDIALOG()
		
	NODE(105)
		SAY("Vous n'aviez pas dit devoir retournez chez NExT en urgence?")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(150)
		TAKEITEM(9102)
		if(result==0)then
			SAY("Vous avez le m�dicament sur vous? Allez, d�p�chez-vous!")
			ENDDIALOG()
		else

			SAY("Runner! O� est-ce que vous �tiez? Je ne vais tout de m�me pas perdre notre SysAdmin � cause de vous! Violet Derix est une personne tr�s importante pour nous, vous savez. Vous avez les m�dicaments?")
		
			ANSWER("J'ai pu avoir de l'Hydrosin. Ils m'ont dit que les seuls � avoir l'autre m�dicament �taient ProtoPharm et le village El Farid.",151)
		end
	NODE(151)
		SAY("Seulement de l'Hydrosin? Ca ne suffira pas. La situation de Violet empire d'heure en heure. Les signes vitaux la donne comme quasiment morte. J'ai vraiment l'impression que c'est quelqu'un de ma famille qui est en train de mourir. Allez me cherchez du Kaboxorid en vitesse!")
		
		ANSWER("CONTINUER",152)

--Spieler bekommt ein Bike f�r die Fahrt 1535
	NODE(152)
		TAKEITEM(1535)
		if(result==0)then
			GIVEITEM(1535)
			SAY("Vous avez d�j� un v�hicule, vous devriez le prendre tout de suite. Allez voir Almachim au village El Farid.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(250)
			ENDDIALOG()			
		else
			GIVEITEM(1535)
			SAY("MEXT va vous donner un moto pour le trajet. Allez voir Almachim, il devrait pouvoir vous trouver du Kaboxorid. Il se trouve � El Farid.")
		
			ANSWER("Avant de partir, je voulais juste vous dire que ProtoPharm est en train d'acheter des actions NEXT � tour de bras.",153)
		end
	NODE(153)
		SAY("C'est peut-�tre pour �a que vous devriez vous d�p�cher! Allez me chercher ce m�dicament tout de suite!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()


-----------------------------------------------------
--Almachim

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("J'ai beaucoup de travail pour l'instant. Pourquoi est-ce que vous ne repassez pas le mois prochain?")
			ENDDIALOG()
		else
			SAY("Bienvenue au village, runner. C'est rare de voir passer des gens dans cet endroit, mais il faut croire que certains trouvent tout de m�me le chemin pour y acc�der. Mais j'ai remarqu� que le plus souvent, les gens venaient avec une id�e derri�re la t�te. Qu'est-ce que vous avez comme id�e, vous, derri�re la t�te?")
		
			ANSWER("Vous avez d�j� devin�, oui en effet je viens pour quelque chose. C'est tr�s important. Une vie d�pend du succ�s de cette mission.",201)
		end
	NODE(201)
		SAY("Vous avez fait le chemin jusqu'ici pour sauvez la vie de quelqu'un d'autre? Alors c'est tout � votre honneur. Tenez, prenez un verre de cet excellent vin pour commencer. Ne vous inqui�tez pas, ce n'est que de l'alcool. Vous savez, les r�gles de la ville ne s'appliquent pas de la m�me mani�re chez nous. Les gens de la ville tombent malades en raison de la fie d�sordonn�e qu'ils m�nent. Ils n'accordent pas d'importance � leur propre existence, et pourtant ils pleurent lorsque quelqu'un d'autre meurt. Vous y comprenez quelque chose, vous?")
		
		ANSWER("CONTINUER",202)
	NODE(202)
		SAY("Mais ici dans le d�sert, o� le sable et le vent se m�lent pour former le plus dangereux des pi�ges, o� le scorpion traque sa proie, les r�gles sont diff�rentes. Si vous voulez r�ussir quelque chose ici, il faut de la patience. Alors expliquez-moi ce que vous voulez.")
		
		ANSWER("J'ai un besoin urgent d'un produit qui s'appelle Kaboxorid. Je n'en trouve nulle part ailleurs. Et on m'a dit que vous en produisiez ici.",203)
	NODE(203)
		SAY("Du Kaboxorid? Pas �tonnant qu'on n'en trouve plus. On a arr�t� la production l'ann�e derni�re. Tout ce qu'on a ici, c'est des r�serves. C'est un produit extrait d'un cactus v�n�neux, et quand on le prend pur, il a l'effet d'une drogue.")
		
		ANSWER("CONTINUER",204)
	NODE(204)
		SAY("Mais dilu�, il sert � r�veiller les personnes plong�es dans un coma profond. Malheureusement, ce produit a des effets secondaires graves, et c'est la raison pour laquelle on a arr�t� la production. L'un des effets secondaires, c'�tait la mutation spontan�e, rien de moins.")
		
		ANSWER("Vous avez annul� la production? Mais vous �tes fou! A cause de toutes petites mutations de rien du tout?",205)
	NODE(205)
		SAY("Je ne sais pas comment vous avez l'habitude de penser, en ville, mais demandez � quelqu'un de choisir entre la mort et une mutation, il choisira la mort sans h�siter. Une vie avec une mutation est un enfer. La dignit� est abolie, votre esprit est empoisonn�.")
		
		ANSWER("Je ne remets pas en question vos traditions, je veux seulement le produit chimique que je vous ai demand�.",206)
	NODE(206)
		SAY("C'est un honneur de voir que vous respectez nos traditions. Il se trouve que nous n'avons plus ce produit chimique en r�serve, mais nous avons toujours les plans que nous utilisions le produire. Je pense que je peux vous en donner un exemplaire.")
		
		ANSWER("Parfait. C'est exactement ce qu'il me faut...",207)
	NODE(207)
		SAY("Pas si vite, runner. Rien n'est gratuit dans le d�sert. Mais votre histoire me dit que vous allez devoir payer de votre propre poche pour ce plan. Vous allez devoir cr�er ce produit chimique vous-m�me, et vous devez faire vite. La vie, c'est quelque chose de fragile.")
		
		ANSWER("Merci, j'ai une dette envers vous maintenant. Mais il faut vraiment que je me d�p�che.",208)
	NODE(208)

		GIVESPECIALITEM(9105,1,9103)
		SAY("Alors d�p�chez-vous, retournez dans votre ville.")
		SETNEXTDIALOGSTATE(209)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(209)
		SAY("Vous prenez votre temps, c'est dangereux, vous savez...")
		ENDDIALOG()
		


-----------------------------------------------------
--Mason

	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ne perdez pas votre temps! Une vie humaine est en jeu!!")
			ENDDIALOG()
		else
			SAY("Vous l'avez?")
		
			ANSWER("Oui, c'est bon. Tenez.",251)
		end
	NODE(251)
		TAKEITEM(9103)
		if(result==0)then
			SAY("Il nous faut du Kaboxorid! On ne peut rien faire avec ce plan!")
			ENDDIALOG()
		else
			SAY("Gr�ce au ciel! Maintenant, ce probl�me est r�solu. Les experts m'ont assur� que la SysAdmin allait s'en tirer gr�ce � ces substances.")
		
			ANSWER("Je reviens juste � temps, on dirait. Mais �a n'a pas �t� facile, j'ai d'abord d� cr�er la substance � partir d'un plan.",252)
		end
	NODE(252)
		SAY("Vraiment? NExT a maintenant une dette envers nous. Merci d'avoir ramen� notre SysAdmin � la vie.")
		
		ANSWER("Bonne nouvelle. Ca n'a pas �t� facile.",253)
	NODE(253)
		SAY("J'aurais aim� avoir ce rem�de miracle lorsque ma femme �tait encore e vie. Enfin... J'ai fait suivre votre rapport, et il semble en effet que ProtoPharm ach�te autant d'actions de NExT que possible. C'est assez d�stabilisant, mais tout ce qu'on peut faire pour l'instant c'est attendre. Attendre et observer.")
		
		ANSWER("CONTINUER",254)
	NODE(254)
		GIVEMONEY(20000)
		SAY("En r�compense, vous avez gagn� 20.000 cr�dits. De plus, vous serez bient�t choisi pour les tests de conduite d'un de nos v�hicules exp�rimentaux la prochaine fois. Ne me remerciez pas, c'est Torben qui n'a pas arr�t� de me supplier jusqu'� ce que je finisse par c�der. Mais faites attention, je vous veux en bonne forme pour la s�ance de tests!")
		EPICRUNFINISHED(3,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end