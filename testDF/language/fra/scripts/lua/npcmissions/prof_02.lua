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
		SAY("Oui, j'ai un vieil ami du nom de %NPC_NAME(1), il habite %NPC_WORLD(1) et de temps en temps il me fait parvenir des pièces détachées. Tu pourrais lui rendre visite pour me chercher ce dont j'ai besoin?")
		
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
		GIVEMONEY(540)
			SAY("C'est bon, voilà. Mais ne dépense pas tout en bière!")
			
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
		SAY("J'ai bien peur de ne pas pouvoir vous le donner, runner. Je ne l'ai plus.")
		
		ANSWER("Comment ça? Est-ce qu'il y a une autre manière de se procurer ces pièces?",18)
		ANSWER("Ah ouais? Eh ben merci pour rien.",17)
	NODE(17)
		SAY("Je suis désolé, mais la livraison s'est effectuée trop tard. Au revoir.")
		ENDDIALOG()
	NODE(18)
		SAY("Oui, mais c'est compliqué. Une fois, je suis allé voir le copropriétaire de l'endroit où je me fournis. %NPC_NAME(2). Il est peut-être toujours en poste. Cherche dans %NPC_WORLD(2).")

		ANSWER("Merci. Je vais voir ce que je peux faire.")
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	
--Person 2
	NODE(19)		
		SAY("Bonjour, on se connaît?")
		SAY("Fini les bavardages, passons aux affaires. De quoi avez-vous besoin?")
		
		ANSWER("Je recherche des pièces détachées rares.",20)
	NODE(20)
		SAY("Vous vous adressez à la bonne personne. Je vends tout ça, et bien plus encore... Mais ce que vous me demandez, c'est très rare. Ca pourrait vous coûter cher.")
		
		ANSWER("Cher? C'est à dire? Je dois juste transmettre ces pièces au professeur.",21)
	NODE(21)
		SAY("Votre professeur, je sais même pas qui c'est. Je vais vous dire, je vous fais une réduction rien que pour vous. 500 crédits. Alors, vous en dites quoi?")
		
		ANSWER("500 crédits? Je veux vous acheter des pièces détachées, pas votre entreprise.",23)
		ANSWER("Eh ben mon salaud! C'est cher, mais je n'ai pas le choix. Marché conclu.",22)
	NODE(22)
		GIVEQUESTITEM(99)
		TAKEMONEY(500)
		SAY("Vous êtes quelqu'un de sage, l'ami. Voilà ce qu'il vous faut.")
		SETNEXTDIALOGSTATE(35)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(23)
		SAY("Je vois que vous êtes quelqu'un de bien, et si vous êtes trop pauvre pour profiter de cette réduction gracieusement offerte par la maison, je vous cède le tout pour seulement 480 crédits.")
		
		ANSWER("NON! Non, je vous en propose 150.",24)
	NODE(24)
		SAY("Vous voulez ma ruine? 450!")
		
		ANSWER("NON! Pas plus de 170.",25)
	NODE(25)
		SAY("Vous ne valez pas mieux qu'un voleur. 400!")
		
		ANSWER("Ca ne les vaut pas, et vous ne savez! 200!",26)
	NODE(26)
		SAY("Vous voulez couler mon affaire? 350, c'est mon dernier mot.")
		
		ANSWER("Je trouverai bien quelqu'un qui me les vendra pour moins cher. 220.",28)
		ANSWER("Bon, bon, voilà vos 350 crédits. Maintenant, donnez-moi les pièces.",27)
	NODE(27)
		GIVEQUESTITEM(99)	
		TAKEMONEY(350)
		SAY("Vous, on peut dire que vous savez négocier. Au revoir.")
		SETNEXTDIALOGSTATE(35)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(28)
		SAY("320, ce sera ma dernière offre.")
		
		ANSWER("225!",29)
	NODE(29)
		SAY("300, je n'irai pas plus loin.")
		
		ANSWER("230, et l'affaire est conclue!",30)
	NODE(30)
		SAY("280!")
		
		ANSWER("230!",31)
	NODE(31)
		SAY("260!!!")
		
		ANSWER("230!",32)
	NODE(32)
		SAY("240!")
		
		ANSWER("240, c'est bon, c'est à vous!",33)
		ANSWER("230, et c'est vraiment mon dernier mot.",34)
		
	NODE(33)
		GIVEQUESTITEM(99)	
		TAKEMONEY(240)
		SAY("Vous êtes coriace en affaires, vous. N'hésitez pas à repasser de temps en temps pour qu'on se refasse ça!")
		SETNEXTDIALOGSTATE(35)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(34)
		SAY("Alors je ne peux pas vous aider, c'est trop peu pour moi. N'hésitez pas à repasser.")
		ENDDIALOG()	
	NODE(35)
		SAY("Je n'ai plus rien à vous vendre pour l'instant.")
		ENDDIALOG()
	
		
	
end