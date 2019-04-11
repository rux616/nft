--New
function DIALOG()
	NODE(0)
		TAKEITEMCNT(2301,3)
		if(result==0)then
			SAY("Salut toi, tu m'as tout l'air d'�tre ce qu'on appelle un runner...")
			SAY("Quoi? Plus fort, je suis un peu dur de la feuille.")
			
			ANSWER("D�sol�, mais j'allais justement partir.",1)
			ANSWER("C'est �trange de trouver quelqu'un comme vous ici.",2)	
		else
			SAY("Fais voir �a! C'est moi qui t'ai donn� ces bagues? Toutes les trois? Pas possible, je m'en serais rappel�...")
			
			ANSWER("C'est exact. Et alors?",3)
		end
	NODE(1)
		SAY("Bien, bien. Tu ne pourras plus troubler mes exp�riences. Va-t-en, maintenant.")
		SAY("Eh ben quoi, qu'est-ce que tu attends? Allez!")
		ENDDIALOG()
	NODE(2)
		SAY("Pourquoi donc? Je suis juste un vieux professeur qui aime faire des mesures de radioactivit� dans le d�sert.")
		SAY("Je fais juste quelques exp�riences ici pour voir si mes th�ories sont bonnes.")
		
		ANSWER("C'est bien joli, mais tout ce qui est scientifique, �a ne m'int�resse pas.",1)
		ANSWER("Et pourquoi toutes ces exp�riences? Il y en a que �a int�resse?",7)
	
--The specialitems	
	NODE(3)
		SAY("Tu m'as beaucoup aid� dans le pass�. Je t'ai pr�par� un petit cadeau. Ca vient des exp�riences que j'ai faites.")
		
		ANSWER("J'accepte toujours les cadeaux.",4)
		ANSWER("Un cadeau? Pour moi? Qu'est-ce que c'est?",4)
	NODE(4)
		SAY("Je t'offre le choix entre deux objets. Une super armure, et une arme de d�butant. Tu veux quoi?")
		
		ANSWER("L'armure! Je prends l'armure!",5)
		ANSWER("Je veux l'arme, l'arme!",6)
	NODE(5)
		GIVEITEM(1851)
		SAY("Voil�, l'ami, mais c'est tout ce que je peux faire pour toi... Au revoir!")
		
		ANSWER("C'est tout ce qu'il me fallait, merci.",1)
	NODE(6) 
		GIVEITEM(1839)
		SAY("Tiens, prends cette arme et amuse-toi bien.")
		
		ANSWER("Merci beaucoup.",1)


	NODE(7)
		SAY("Pour �tre honn�te, c'est tr�s compliqu�. Je me base sur certaines particules de l'atmosph�re qu'on peut ioniser. Tu me suis?")
		
 		ANSWER("Euhhh... Non, pas vraiment. Vous n'avez pas un travail � me proposer, plut�t?",11)
		ANSWER("Evidemment, c'est un ph�nom�ne qui a �t� d�crit en d�tail dans les documents CERES, c'est �a?",8)
	NODE(8)
		SAY("Tiens, tu connais �a, toi? Les documents CERES contiennent en effet quelques informations sur le sujet, mais les applications restent tr�s limit�es, et il n'y a aucune description des appareils utilis�s pour produire ces effets.")
		
		ANSWER("...",9)
	NODE(9)
		SAY("De plus, je pense que ces particules existent non seulement dans l'atmosph�re, mais aussi dans l'espace. Ce serait une r�volution pour les voyages intersid�raux.")
		
		ANSWER("Euh... C'est � dire qu'il se fait tard, il faut que j'y aille. Au revoir.",1)
ANSWER("Poursuivez, s'il-vous pla�t.",10)
	NODE(10)
		SAY("Je ne suis pas encore certain de mon coup, mais je pense qu'avec cette connaissance je pourrai mettre au point une machine. Je finirai bien par trouver une solution.")
		
		ANSWER("Int�ressant. Vous avez fini, maintenant?",11)
--Mission f�ngt an
	NODE(11)
		SAY("Oui, j'ai un vieil ami du nom de %NPC_NAME(1), il habite � %NPC_WORLD(1) et de temps en temps il me fait parvenir des pi�ces d�tach�es. Tu pourrais lui rendre visite pour me chercher ce dont j'ai besoin?")
		
		ANSWER("Je m'en occupe tout de suite.",12)
		ANSWER("Non, encore une livraison... J'en ai assez entendu. Au revoir.",1)
	NODE(12)
		SAY("Excellent. J'attends ton retour bient�t, hein?")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(13)
		ENDDIALOG()
	NODE(13)
		TAKEQUESTITEM(99)
		if(result==0)then
			SAY("Tu as mon paquet? Non, tu ne l'as pas? Va me le chercher, s'il-te pla�t.")
			SAY("Tu m'apportes mon paquet, et je te donne quelque chose en �change, d'accord?")
			ENDDIALOG()
		else
			GIVEITEM(2301)	
			SAY("Enfin, je peux r�parer mes appareils et continuer mes recherches. Comme promis, voici un gage d'amiti�. Prends en bien soin, je peux �tre tr�s g�n�reux envers mes amis.")
			
			ANSWER("C'est tout? Un gage d'amiti�? Pas d'argent?",14)
			ANSWER("D'accord. Merci... Au revoir.",1)
		end
	NODE(14)
		GIVEMONEY(250)
			SAY("Bon, prends �a. Mais ne d�pense pas tout en bi�re, hein!")
			
			ANSWER("Au revoir.",1)
--Person 1
	NODE(15)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Wohoo, vous, votre t�te me revient pas.")
		else
			SAY("Qu'est-ce que nous avons l�? Un runner? Qu'est-ce que je peux faire pour vous?")
			SAY("Qu'est-ce que vous attendez de moi, hein?")
			
			ANSWER("Je suis l� pour prendre une livraison. C'est le professeur qui m'envoie.",16)
			ANSWER("Je... ah oui, je voudrais que vous me donniez le colis que le professeur attend.",16)
		end
	NODE(16)
		SAY("H� ouais, mais comment est-ce que je peux savoir que c'est bien le professeur qui t'envoie?")
		
		ANSWER("Parce que sinon, je ne saurais rien au sujet de ce paquet, n'est-ce pas?",18)
		ANSWER("Parce que... parce que je... enfin bref, c'est lui qui m'envoie!",17)
	NODE(17)
		SAY("Vous m'avez l'air d'�tre quelqu'un d'intelligent. Dites-moi sur quelles exp�riences travaille le professeur.")
		
		ANSWER("C'est assez complexe, et je n'ai pas le courage d'expliquer toutes ces id�es compliqu�es � quelqu'un qui ne sait pas distinguer sa droite de sa gauche.",16)
		ANSWER("Je crois qu'il fait des exp�riences sur les particules ionis�es.",18)
	NODE(18)
		GIVEQUESTITEM(99)
		SAY("Hrrmph, alors je pense que je peux vous donner le colis. Allez, d�p�chez-vous.")
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
		
		
end
