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
		SAY("Content de vous voir. Dépêchez-vous, Mason veut vous parler. Il s'est passé quelque chose d'horrible.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Dépêchez-vous, je vous dis! Mason a besoin de vous tout de suite.")
		ENDDIALOG()
		


-----------------------------------------------------
--Mason

	NODE(50)
		SAY("Vous tombez à pic, runner. Il s'est passé quelque chose d'horrible. Vous avez déjà entendu parler de notre SysAdmin? J'ai appris qu'elle avait été empoisonnée, et maintenant elle est dans le coma. Je n'imagine même pas ce qui pourrait se passer si elle mourait.")
		
		ANSWER("CONTINUER",51)
	NODE(51)
		SAY("Elle ne pourrait jamais terminer ses merveilleux programmes. Avec sa mort, ce seront des millions d'actions de la compagnie qui se retrouveront sur le marché, et toute la structure de NExT pourrait changer. Croyez-moi, c'est un changement qui ne serait pas le bienvenu.")
		
		ANSWER("Et maintenant, qu'est-ce qu'on fait?",52)
	NODE(52)
		SAY("Les experts m'ont expliqué qu'il existait un médicament capable de la réveiller. Mais ce médicament n'est disponible que chez Biotech et ProtoPharm. Comme ProtoPharm n'acceptera jamais de nous en donner, il faut aller voir BioTech. Ce qu'il nous faut, c'est de l'Hydrosin et du Kaboxorid. Qu'est-ce que vous attendez? Vous êtes un de nos meilleurs runners, vous êtes en mesure de nous aider. Allez, dépêchez-vous!")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		

-----------------------------------------------------
--BioTech

	NODE(100)
		SAY("Bonjour runner! Que puis-je faire pour vous?")
		
		ANSWER("C'est très important, dépêchez-vous! Donnez-moi de l'Hydrosin et du Kaboxorid.",101)
	NODE(101)
		SAY("Fort bien. On m'a expliqué que quelqu'un allait venir nous en demander. Malheureusement, il y a comme un léger problème...")
		
		ANSWER("J'ai vraiment besoin de ça maintenant! Quel genre de problème?",102)
	NODE(102)
		SAY("Vous avons d'énormes quantités d'Hydrosin, mais plus une seule dose de Kaboxorid. Nous attendons une livraison pour la fin du mois.")
		
		ANSWER("C'est une catastrophe! Est-ce que vous savez qui d'autre en vend?",103)
	NODE(103)
		SAY("J'ai bien peur qu'à part nous, ProtoPharm soit le seul fournisseur de cet élément. A moins que... Une minute! On en produit aussi à El Farid, apparemment il y en a actuellement. Vous devriez essayer là-bas. Vous voulez tout de même de l'Hydrosin?")
		
		ANSWER("S'il n'y a pas d'autre possibilité, alors je vais vous prendre l'Hydrosin. Il faut que je retourne à NEXT faire mon rapport. Au revoir.",104)
	NODE(104)
		GIVEITEM(9102)
		SAY("Vous êtes de NEXT? Je voulais vous dire que ProtoPharm est en train d'acheter des actions NEXT à tour de bras... Mais vous savez déjà tout ça, je suppose. Bonne chance.")
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
			SAY("Vous avez le médicament sur vous? Allez, dépêchez-vous!")
			ENDDIALOG()
		else

			SAY("Runner! Où est-ce que vous étiez? Je ne vais tout de même pas perdre notre SysAdmin à cause de vous! Violet Derix est une personne très importante pour nous, vous savez. Vous avez les médicaments?")
		
			ANSWER("J'ai pu avoir de l'Hydrosin. Ils m'ont dit que les seuls à avoir l'autre médicament étaient ProtoPharm et le village El Farid.",151)
		end
	NODE(151)
		SAY("Seulement de l'Hydrosin? Ca ne suffira pas. La situation de Violet empire d'heure en heure. Les signes vitaux la donne comme quasiment morte. J'ai vraiment l'impression que c'est quelqu'un de ma famille qui est en train de mourir. Allez me cherchez du Kaboxorid en vitesse!")
		
		ANSWER("CONTINUER",152)

--Spieler bekommt ein Bike für die Fahrt 1535
	NODE(152)
		TAKEITEM(1535)
		if(result==0)then
			GIVEITEM(1535)
			SAY("Vous avez déjà un véhicule, vous devriez le prendre tout de suite. Allez voir Almachim au village El Farid.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(250)
			ENDDIALOG()			
		else
			GIVEITEM(1535)
			SAY("MEXT va vous donner un moto pour le trajet. Allez voir Almachim, il devrait pouvoir vous trouver du Kaboxorid. Il se trouve à El Farid.")
		
			ANSWER("Avant de partir, je voulais juste vous dire que ProtoPharm est en train d'acheter des actions NEXT à tour de bras.",153)
		end
	NODE(153)
		SAY("C'est peut-être pour ça que vous devriez vous dépêcher! Allez me chercher ce médicament tout de suite!")
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
			SAY("Bienvenue au village, runner. C'est rare de voir passer des gens dans cet endroit, mais il faut croire que certains trouvent tout de même le chemin pour y accéder. Mais j'ai remarqué que le plus souvent, les gens venaient avec une idée derrière la tête. Qu'est-ce que vous avez comme idée, vous, derrière la tête?")
		
			ANSWER("Vous avez déjà deviné, oui en effet je viens pour quelque chose. C'est très important. Une vie dépend du succès de cette mission.",201)
		end
	NODE(201)
		SAY("Vous avez fait le chemin jusqu'ici pour sauvez la vie de quelqu'un d'autre? Alors c'est tout à votre honneur. Tenez, prenez un verre de cet excellent vin pour commencer. Ne vous inquiétez pas, ce n'est que de l'alcool. Vous savez, les règles de la ville ne s'appliquent pas de la même manière chez nous. Les gens de la ville tombent malades en raison de la fie désordonnée qu'ils mènent. Ils n'accordent pas d'importance à leur propre existence, et pourtant ils pleurent lorsque quelqu'un d'autre meurt. Vous y comprenez quelque chose, vous?")
		
		ANSWER("CONTINUER",202)
	NODE(202)
		SAY("Mais ici dans le désert, où le sable et le vent se mêlent pour former le plus dangereux des pièges, où le scorpion traque sa proie, les règles sont différentes. Si vous voulez réussir quelque chose ici, il faut de la patience. Alors expliquez-moi ce que vous voulez.")
		
		ANSWER("J'ai un besoin urgent d'un produit qui s'appelle Kaboxorid. Je n'en trouve nulle part ailleurs. Et on m'a dit que vous en produisiez ici.",203)
	NODE(203)
		SAY("Du Kaboxorid? Pas étonnant qu'on n'en trouve plus. On a arrêté la production l'année dernière. Tout ce qu'on a ici, c'est des réserves. C'est un produit extrait d'un cactus vénéneux, et quand on le prend pur, il a l'effet d'une drogue.")
		
		ANSWER("CONTINUER",204)
	NODE(204)
		SAY("Mais dilué, il sert à réveiller les personnes plongées dans un coma profond. Malheureusement, ce produit a des effets secondaires graves, et c'est la raison pour laquelle on a arrêté la production. L'un des effets secondaires, c'était la mutation spontanée, rien de moins.")
		
		ANSWER("Vous avez annulé la production? Mais vous êtes fou! A cause de toutes petites mutations de rien du tout?",205)
	NODE(205)
		SAY("Je ne sais pas comment vous avez l'habitude de penser, en ville, mais demandez à quelqu'un de choisir entre la mort et une mutation, il choisira la mort sans hésiter. Une vie avec une mutation est un enfer. La dignité est abolie, votre esprit est empoisonné.")
		
		ANSWER("Je ne remets pas en question vos traditions, je veux seulement le produit chimique que je vous ai demandé.",206)
	NODE(206)
		SAY("C'est un honneur de voir que vous respectez nos traditions. Il se trouve que nous n'avons plus ce produit chimique en réserve, mais nous avons toujours les plans que nous utilisions le produire. Je pense que je peux vous en donner un exemplaire.")
		
		ANSWER("Parfait. C'est exactement ce qu'il me faut...",207)
	NODE(207)
		SAY("Pas si vite, runner. Rien n'est gratuit dans le désert. Mais votre histoire me dit que vous allez devoir payer de votre propre poche pour ce plan. Vous allez devoir créer ce produit chimique vous-même, et vous devez faire vite. La vie, c'est quelque chose de fragile.")
		
		ANSWER("Merci, j'ai une dette envers vous maintenant. Mais il faut vraiment que je me dépêche.",208)
	NODE(208)

		GIVESPECIALITEM(9105,1,9103)
		SAY("Alors dépêchez-vous, retournez dans votre ville.")
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
			SAY("Grâce au ciel! Maintenant, ce problème est résolu. Les experts m'ont assuré que la SysAdmin allait s'en tirer grâce à ces substances.")
		
			ANSWER("Je reviens juste à temps, on dirait. Mais ça n'a pas été facile, j'ai d'abord dû créer la substance à partir d'un plan.",252)
		end
	NODE(252)
		SAY("Vraiment? NExT a maintenant une dette envers nous. Merci d'avoir ramené notre SysAdmin à la vie.")
		
		ANSWER("Bonne nouvelle. Ca n'a pas été facile.",253)
	NODE(253)
		SAY("J'aurais aimé avoir ce remède miracle lorsque ma femme était encore e vie. Enfin... J'ai fait suivre votre rapport, et il semble en effet que ProtoPharm achète autant d'actions de NExT que possible. C'est assez déstabilisant, mais tout ce qu'on peut faire pour l'instant c'est attendre. Attendre et observer.")
		
		ANSWER("CONTINUER",254)
	NODE(254)
		GIVEMONEY(20000)
		SAY("En récompense, vous avez gagné 20.000 crédits. De plus, vous serez bientôt choisi pour les tests de conduite d'un de nos véhicules expérimentaux la prochaine fois. Ne me remerciez pas, c'est Torben qui n'a pas arrêté de me supplier jusqu'à ce que je finisse par céder. Mais faites attention, je vous veux en bonne forme pour la séance de tests!")
		EPICRUNFINISHED(3,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		

end