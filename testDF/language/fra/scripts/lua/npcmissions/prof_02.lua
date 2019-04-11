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
		SAY("Oui, j'ai un vieil ami du nom de %NPC_NAME(1), il habite %NPC_WORLD(1) et de temps en temps il me fait parvenir des pi�ces d�tach�es. Tu pourrais lui rendre visite pour me chercher ce dont j'ai besoin?")
		
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
			SAY("Tu n'as pas ce que j'ai demand�. Est-ce que quelqu'un l'a vol�?")
			SAY("Quelqu'un a vol� ce que je t'avais demand�? On ferait mieux de le retrouver, et vite.")
			ENDDIALOG()
		else
			GIVESPECIALITEM(2301)	
			SAY("Je vais enfin pouvoir manger autre chose que des flocons d'avoine. Tiens, prends �a, en signe de ma gratitude.")
			
			ANSWER("C'est tout? Pas d'argent?",14)
			ANSWER("Bien. Merci... Au revoir.",1)
		end
	NODE(14)
		GIVEMONEY(540)
			SAY("C'est bon, voil�. Mais ne d�pense pas tout en bi�re!")
			
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
		SAY("J'ai bien peur de ne pas pouvoir vous le donner, runner. Je ne l'ai plus.")
		
		ANSWER("Comment �a? Est-ce qu'il y a une autre mani�re de se procurer ces pi�ces?",18)
		ANSWER("Ah ouais? Eh ben merci pour rien.",17)
	NODE(17)
		SAY("Je suis d�sol�, mais la livraison s'est effectu�e trop tard. Au revoir.")
		ENDDIALOG()
	NODE(18)
		SAY("Oui, mais c'est compliqu�. Une fois, je suis all� voir le copropri�taire de l'endroit o� je me fournis. %NPC_NAME(2). Il est peut-�tre toujours en poste. Cherche dans %NPC_WORLD(2).")

		ANSWER("Merci. Je vais voir ce que je peux faire.")
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	
--Person 2
	NODE(19)		
		SAY("Bonjour, on se conna�t?")
		SAY("Fini les bavardages, passons aux affaires. De quoi avez-vous besoin?")
		
		ANSWER("Je recherche des pi�ces d�tach�es rares.",20)
	NODE(20)
		SAY("Vous vous adressez � la bonne personne. Je vends tout �a, et bien plus encore... Mais ce que vous me demandez, c'est tr�s rare. Ca pourrait vous co�ter cher.")
		
		ANSWER("Cher? C'est � dire? Je dois juste transmettre ces pi�ces au professeur.",21)
	NODE(21)
		SAY("Votre professeur, je sais m�me pas qui c'est. Je vais vous dire, je vous fais une r�duction rien que pour vous. 500 cr�dits. Alors, vous en dites quoi?")
		
		ANSWER("500 cr�dits? Je veux vous acheter des pi�ces d�tach�es, pas votre entreprise.",23)
		ANSWER("Eh ben mon salaud! C'est cher, mais je n'ai pas le choix. March� conclu.",22)
	NODE(22)
		GIVEQUESTITEM(99)
		TAKEMONEY(500)
		SAY("Vous �tes quelqu'un de sage, l'ami. Voil� ce qu'il vous faut.")
		SETNEXTDIALOGSTATE(35)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(23)
		SAY("Je vois que vous �tes quelqu'un de bien, et si vous �tes trop pauvre pour profiter de cette r�duction gracieusement offerte par la maison, je vous c�de le tout pour seulement 480 cr�dits.")
		
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
		ANSWER("Bon, bon, voil� vos 350 cr�dits. Maintenant, donnez-moi les pi�ces.",27)
	NODE(27)
		GIVEQUESTITEM(99)	
		TAKEMONEY(350)
		SAY("Vous, on peut dire que vous savez n�gocier. Au revoir.")
		SETNEXTDIALOGSTATE(35)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(28)
		SAY("320, ce sera ma derni�re offre.")
		
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
		
		ANSWER("240, c'est bon, c'est � vous!",33)
		ANSWER("230, et c'est vraiment mon dernier mot.",34)
		
	NODE(33)
		GIVEQUESTITEM(99)	
		TAKEMONEY(240)
		SAY("Vous �tes coriace en affaires, vous. N'h�sitez pas � repasser de temps en temps pour qu'on se refasse �a!")
		SETNEXTDIALOGSTATE(35)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(34)
		SAY("Alors je ne peux pas vous aider, c'est trop peu pour moi. N'h�sitez pas � repasser.")
		ENDDIALOG()	
	NODE(35)
		SAY("Je n'ai plus rien � vous vendre pour l'instant.")
		ENDDIALOG()
	
		
	
end