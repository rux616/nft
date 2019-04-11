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
ANSWER("Poursuivez, s'il-vous-plaît.",10)
	NODE(10)
		SAY("Je ne suis pas encore certain de mon coup, mais je pense qu'avec cette connaissance je pourrai mettre au point une machine. Je finirai bien par trouver une solution.")
		
		ANSWER("Intéressant. Vous avez fini, maintenant?",11)
--Mission fängt an
	NODE(11)
		SAY("Oui, j'ai un vieil ami du nom de %NPC_NAME(1), il habite %NPC_WORLD(1) et de temps en temps il me fait parvenir des pièces détachées. Tu pourrais lui rendre visite pour me chercher ce dont j'ai besoin?")
		
		ANSWER("Je m'en occupe tout de suite.",12)
		ANSWER("Oh non, encore une livraison... J'en ai assez entendu. Au revoir.",1)
	NODE(12)
		SAY("Excellent. J'attends ton retour bientôt, hein?")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(13)
		ENDDIALOG()
	NODE(13)
		TAKEQUESTITEM(99)
		if(result==0)then
			SAY("Tu n'as pas ce que j'ai demandé. Est-ce que quelqu'un l'a volé?")
			SAY("Quelqu'un a volé ce que je t'avais demandé? On ferait mieux de le retrouver, et vite.")
			ENDDIALOG()
		else
			GIVESPECIALITEM(2301)	
			SAY("Je vais enfin pouvoir manger autre chose que des flocons d'avoine. Tiens, prends ça, en signe de ma gratitude.")
			
			ANSWER("C'est tout? Pas d'argent?",14)
			ANSWER("Bien. Merci... Au revoir.",1)
		end
	NODE(14)
		GIVEMONEY(250)
			SAY("C'est bon, voilà. Mais ne dépense pas tout en bière!")
			
			ANSWER("Au revoir.",1)
--Person 1
	NODE(15)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Qu'est-ce que c'est? Quelqu'un avec qui je ne veux pas traiter, j'ai l'impression.")
		else
			SAY("Le professeur m'a déjà mis au courant. Je viens de finir de préparer ça pour ce vieux croûton.")
			SAY("Quoi? C'est vous le livreur pour le professeur?")
			
			ANSWER("Vous avez deviné.",16)
			ANSWER("Ouaip, c'est moi.",16)
		end
	NODE(16)
		GIVEQUESTITEM(99)
		SAY("Bien! Prenez ça. Sur le chemin du retour, vous pourriez dire à un ami que je voudrais lui parler en privé et que c'est urgent? Son nom, c'est %NPC_NAME(2), et vous le trouverez à %NPC_WORLD(2).")
		
		ANSWER("Bien sûr, s'il le faut.")
		SETNEXTDIALOGSTATE(22)
		ACTIVATEDIALOGTRIGGER(2)	
		ENDDIALOG()
	
--Person 2
	NODE(17)
		SAY("Hé, runner, on se connaît? Ou pas?")
		
		ANSWER("C'est un ami à vous. %NPC_NAME(1). Il m'a demandé de vous dire qu'il voulait vous voir en privé.",18)
	NODE(18)
		SAY("Oh, merde! Je suis dans la poisse, moi! Hé, mais c'est un joli paquet que tu as là! Ca sent bien bon, ce qu'il y a là-dedans, et moi, je suis mort de faim.")
		
		ANSWER("Ca, c'est ton problème, pas le mien.",19)
	NODE(19)
		TAKEQUESTITEM(99)
		SAY("Attends! Ah... non... Tout va bien. Oublie. C'est rien.")
		SETNEXTDIALOGSTATE(20)
		ENDDIALOG()
	NODE(20)
		SAY("Qu'est-ce que tu veux encore de moi?")
		
		ANSWER("Tu as volé mon colis? Sale fils de...",21)
	NODE(21)
		GIVEQUESTITEM(99)
		SAY("Ca va, c'est bon! Me fais pas de mal. J'ai si faim... Tiens, prends-le et Va-t-en...")
		ENDDIALOG()
		
	NODE(22)
		SAY("Je suis désolé, mais je t'ai déjà rendu ton colis.")
		ENDDIALOG()
		
		
		
end