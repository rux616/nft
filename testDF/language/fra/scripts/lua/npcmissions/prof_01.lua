--New
function DIALOG()
	NODE(0)
		TAKEITEMCNT(2301,3)
		if(result==0)then
			SAY("Salut toi, tu m'as tout l'air d'être ce qu'on appelle un runner...")
			SAY("Quoi? Plus fort, je suis un peu dur de la feuille.")
			
			ANSWER("Désolé, mais j'allais justement partir.",1)
			ANSWER("C'est étrange de trouver quelqu'un comme vous ici.",2)	
		else
			SAY("Fais voir ça! C'est moi qui t'ai donné ces bagues? Toutes les trois? Pas possible, je m'en serais rappelé...")
			
			ANSWER("C'est exact. Et alors?",3)
		end
	NODE(1)
		SAY("Bien, bien. Tu ne pourras plus troubler mes expériences. Va-t-en, maintenant.")
		SAY("Eh ben quoi, qu'est-ce que tu attends? Allez!")
		ENDDIALOG()
	NODE(2)
		SAY("Pourquoi donc? Je suis juste un vieux professeur qui aime faire des mesures de radioactivité dans le désert.")
		SAY("Je fais juste quelques expériences ici pour voir si mes théories sont bonnes.")
		
		ANSWER("C'est bien joli, mais tout ce qui est scientifique, ça ne m'intéresse pas.",1)
		ANSWER("Et pourquoi toutes ces expériences? Il y en a que ça intéresse?",7)
	
--The specialitems	
	NODE(3)
		SAY("Tu m'as beaucoup aidé dans le passé. Je t'ai préparé un petit cadeau. Ca vient des expériences que j'ai faites.")
		
		ANSWER("J'accepte toujours les cadeaux.",4)
		ANSWER("Un cadeau? Pour moi? Qu'est-ce que c'est?",4)
	NODE(4)
		SAY("Je t'offre le choix entre deux objets. Une super armure, et une arme de débutant. Tu veux quoi?")
		
		ANSWER("L'armure! Je prends l'armure!",5)
		ANSWER("Je veux l'arme, l'arme!",6)
	NODE(5)
		GIVEITEM(1851)
		SAY("Voilà, l'ami, mais c'est tout ce que je peux faire pour toi... Au revoir!")
		
		ANSWER("C'est tout ce qu'il me fallait, merci.",1)
	NODE(6) 
		GIVEITEM(1839)
		SAY("Tiens, prends cette arme et amuse-toi bien.")
		
		ANSWER("Merci beaucoup.",1)


	NODE(7)
		SAY("Pour être honnête, c'est très compliqué. Je me base sur certaines particules de l'atmosphère qu'on peut ioniser. Tu me suis?")
		
 		ANSWER("Euhhh... Non, pas vraiment. Vous n'avez pas un travail à me proposer, plutôt?",11)
		ANSWER("Evidemment, c'est un phénomène qui a été décrit en détail dans les documents CERES, c'est ça?",8)
	NODE(8)
		SAY("Tiens, tu connais ça, toi? Les documents CERES contiennent en effet quelques informations sur le sujet, mais les applications restent très limitées, et il n'y a aucune description des appareils utilisés pour produire ces effets.")
		
		ANSWER("...",9)
	NODE(9)
		SAY("De plus, je pense que ces particules existent non seulement dans l'atmosphère, mais aussi dans l'espace. Ce serait une révolution pour les voyages intersidéraux.")
		
		ANSWER("Euh... C'est à dire qu'il se fait tard, il faut que j'y aille. Au revoir.",1)
ANSWER("Poursuivez, s'il-vous plaît.",10)
	NODE(10)
		SAY("Je ne suis pas encore certain de mon coup, mais je pense qu'avec cette connaissance je pourrai mettre au point une machine. Je finirai bien par trouver une solution.")
		
		ANSWER("Intéressant. Vous avez fini, maintenant?",11)
--Mission fängt an
	NODE(11)
		SAY("Oui, j'ai un vieil ami du nom de %NPC_NAME(1), il habite à %NPC_WORLD(1) et de temps en temps il me fait parvenir des pièces détachées. Tu pourrais lui rendre visite pour me chercher ce dont j'ai besoin?")
		
		ANSWER("Je m'en occupe tout de suite.",12)
		ANSWER("Non, encore une livraison... J'en ai assez entendu. Au revoir.",1)
	NODE(12)
		SAY("Excellent. J'attends ton retour bientôt, hein?")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(13)
		ENDDIALOG()
	NODE(13)
		TAKEQUESTITEM(99)
		if(result==0)then
			SAY("Tu as mon paquet? Non, tu ne l'as pas? Va me le chercher, s'il-te plaît.")
			SAY("Tu m'apportes mon paquet, et je te donne quelque chose en échange, d'accord?")
			ENDDIALOG()
		else
			GIVEITEM(2301)	
			SAY("Enfin, je peux réparer mes appareils et continuer mes recherches. Comme promis, voici un gage d'amitié. Prends en bien soin, je peux être très généreux envers mes amis.")
			
			ANSWER("C'est tout? Un gage d'amitié? Pas d'argent?",14)
			ANSWER("D'accord. Merci... Au revoir.",1)
		end
	NODE(14)
		GIVEMONEY(250)
			SAY("Bon, prends ça. Mais ne dépense pas tout en bière, hein!")
			
			ANSWER("Au revoir.",1)
--Person 1
	NODE(15)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Wohoo, vous, votre tête me revient pas.")
		else
			SAY("Qu'est-ce que nous avons là? Un runner? Qu'est-ce que je peux faire pour vous?")
			SAY("Qu'est-ce que vous attendez de moi, hein?")
			
			ANSWER("Je suis là pour prendre une livraison. C'est le professeur qui m'envoie.",16)
			ANSWER("Je... ah oui, je voudrais que vous me donniez le colis que le professeur attend.",16)
		end
	NODE(16)
		SAY("Hé ouais, mais comment est-ce que je peux savoir que c'est bien le professeur qui t'envoie?")
		
		ANSWER("Parce que sinon, je ne saurais rien au sujet de ce paquet, n'est-ce pas?",18)
		ANSWER("Parce que... parce que je... enfin bref, c'est lui qui m'envoie!",17)
	NODE(17)
		SAY("Vous m'avez l'air d'être quelqu'un d'intelligent. Dites-moi sur quelles expériences travaille le professeur.")
		
		ANSWER("C'est assez complexe, et je n'ai pas le courage d'expliquer toutes ces idées compliquées à quelqu'un qui ne sait pas distinguer sa droite de sa gauche.",16)
		ANSWER("Je crois qu'il fait des expériences sur les particules ionisées.",18)
	NODE(18)
		GIVEQUESTITEM(99)
		SAY("Hrrmph, alors je pense que je peux vous donner le colis. Allez, dépêchez-vous.")
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
		
		
end
