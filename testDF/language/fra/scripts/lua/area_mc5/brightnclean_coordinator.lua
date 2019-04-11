function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anh�nger
				SAY("Yo, man.")
				ANSWER("Gloire � Reza. Qui �tes-vous?",20)		
			else 
			-- Fall 2: Reza Feind
				SAY("Yo, man.")
				ANSWER("Oh l'ami, j'ai enfin r�ussi � sortir d'ici. Ils sont tous tar�s l�-dedans!",1)
			end
				
	NODE(1)
		SAY("H�h�. Je vois que vous avez r�sist� au processus... Vous avez parl� � notre technicien?")
		ANSWER("Oui. Il m'a dit des choses sur la zone MC5. Il m'a dit que vous pourriez m'expliquer certains points.",6)
		ANSWER("Pas encore. Mais de quel processus est-ce que vous parlez?",2)		
	
	NODE(2)
		SAY("La zone MC5 est un programme de contr�le des esprits lanc� par Lioon Reza. Il fait capturer des dissidents et des criminels, et il leur fait subir un lavage de cerveau. Ensuite, il leur fait implanter une puce dans le cr�ne, dans le but de cr�er une soci�t� de pantins � ses ordres.")
		ANSWER("Sornettes. Du lavage de cerveau? Mais �a n'existe pas!!",3)	

	NODE(3)
		SAY("Vous croyez? Alors dites-moi un peu... D'o� venez-vous? Quelle est votre profession? Qu'est-ce que vous savez faire?")
		ANSWER("Je...",4)					

	NODE(4)
		SAY("Vous voyez! Vous �tes une feuille blanche. Vous �tes un enfant, vous devez tout r�apprendre � z�ro. H�h�. Mais ne vous inqui�tez pas, on va y veiller. ...")
		ANSWER("Qu'est-ce que vous voulez dire? Qui �tes-vous?",5)	

	NODE(5)
		SAY("Nous sommes de l'alliance qui combat le r�gime oppresseur de Reza. Nous avons infiltr� cet endroit en nous faisant passer pour des gens du personnel d'entretien. Nous avons r�ussi � infecter leur syst�me avec un peti virus tr�s efficace. Et c'est pourquoi de temps en temps, ils �chouent dans le r�ajustement de leurs 'patients'. Maintenant, toute leur op�ration est en train de prendre l'eau, et tout �a gr�ce � nous!")
		ANSWER("Whoa. Cool!",6)	
		
	NODE(6)	
		SAY("La zone MC5 est un v�ritable bijou de technologie. BioTech a fait un travail hors pair. Dans la salle o� vous avez repris conscience, ils ne font pas que du lavage de cerveau, ils r�ussissent aussi � extraire les informations pr�sentes dans les cerveaux des gens, pour les archiver.")
		ANSWER("Donc je pourrais retrouver mes souvenirs? Si jamais les donn�es sont encore l�...",7)	
		
	NODE(7)	
		SAY("Nous n'avons pas encore trouv� le moyen de le faire. Vous avez sans doute remarqu� que les installations sont vraiment bien gard�es. C'est difficile d'y entrer, m�me avec le badge de l'�quipe d'entretien.")
		ANSWER("Je vois.",8)	
		
	NODE(8)	
		SAY("Mais vous pourriez nous aider � frapper un grand coup.")
		ANSWER("D'accord. Mais comment?",9)	
		
	NODE(9)
		SAY("On vient d'apprendre d'un de nos informateur que le technicien chef avait mis de son plein gr� le prototypede puce sur les SecBots. C'est une d�cision qui pourrait lui co�ter sa place, parce qu'en ce moment les bots en font un peu � leur t�te. En ce moment, il essaye de trouver des gens pour lui ramener les puces. Il en a besoin de quatre.")
		ANSWER("Et moi, quel r�le est-ce que je joue l�-dedans?",10)

	NODE(10)
		SAY("Eliminez quelques SecBots, et ramenez les puces � notre technicien qui se trouve l�-bas. Il va... euh... les modifier, et ensuite les apporter au chef technicien de la zone MC5. Alors, �a vous branche?")
		
		ANSWER("Evidemment! Apr�s tout ce qu'ils m'ont fait subir...",11)	
		ANSWER("Hmmm... Non, je n'y tiens pas trop. Je ferais mieux de m'en aller avant qu'ils me capturent � nouveau.",30)	

	NODE(11)
		SAY("Voil�, vous avez tout compris. Ils ne se douteront jamais d'o� provient l'attaque. On va saboter toute leur installation. Mais je vous conseille de vous pr�parer un peu, ces bots sont assez coriaces.")
		ANSWER("Vous pouvez me donner quelques conseils � leur sujet?",14)
		ANSWER("J'ai besoin de quelques conseils de combat. J'ai vraiment un gros trou de m�moire.",12)

	NODE(12)
		SAY("Oui, je m'en doute. La chose la plus importante, c'est de penser � sortir votre arme. Lorsque vous allez en chasse, d�placez l'arme que vous voulez utiliser dans un des espaces libres de votre ceinture, � droite du R.P.O.S. et activez-l� avec le num�ro appropri�.")
		ANSWER("Compris.",13)

	NODE(13)
		SAY("Ensuite, visez ce que vous voulez attaquer, et c'est parti. Lorsque vous utilisez une arme de tire, je vous conseille d'attendre que le r�ticule de vis�e se r�tr�cisse, pour que vous ayez une chance raisonnable de toucher. Mais lorsque vous allez en ville, �vitez de vous promener avec votre arme sortie. Les CopBots n'aiment pas �a du tout. Faites attention � eux, ils ont la g�chette facile.")
--new
		ANSWER("OK. Mais si malgr� tous vos bons conseils je me fais refroidir?",50)
--new end		
	NODE(14)
		SAY("Le nom exact est: AREA MC5-SECURITY SYSTEM BOT. Faites attention � leur statut, les mod�les que vous devez �liminer portent le statut MALFUNCTIONING. Prenez le temps de vous familiariser avec vos options, et travaillez un peu vos comp�tences. Les bots utilisent des lasers. Si vous n'avez pas d'arme de tir, esayez de les acculer dans un coin pour les tailler en pi�ces. Ils n'aiment pas les coins.")
		ANSWER("Ok. Mais vous pensez que je vais m'en sortir sans aide?",15)
		
	NODE(15)
		SAY("Je pense, oui. Mais si vous rencontrez d'autres gens, pensez � faire �quipe avec eux. Il y a une fonctionnalit� dans votre R.P.O.S. pour cr�er des �quipes. Je sais que vous vous en sortirez bien. Si vous faites �quipe avec d'autres gens, non seulement vous pourrez apprendre plus rapidement, mais vous pourrez aussu agir de mani�re compl�mentaire.")
		ANSWER("Mais il faut que je travaille tout de m�me mes comp�tences, j'imagine?",16)

	NODE(16)
		SAY("Tout � fait. Si vous voulez gagner de l'argent, il va falloir passer par l�. Vous gagnez une petite somme d'argent pour tout adversiaire quev vous �liminez. Et de plus, vous pouvez prendre ce qui se trouve sur leurs cadavres. Visez le cadavre et 'utilisez'-le, c'est tout. On a aussi quelqu'un qui recherche des composants de v�hicule, si vous en trouvez parlez-lui, je pense qu'il sera int�ress�.")
		ANSWER("D'accord. Bon, o� est-ce que je peux trouver ces bots?",17)

	NODE(17)
		SAY("Ils aiment se cacher dans les unit�s de production d'�nergie pour recharger leurs batteries. Les puces ne sont pas optimis�es dans ce domaine, et �a consomme beaucoup. Mais vous allez devoir les d�loger de l� vous-m�me.")
		ANSWER("D'accord. Je ne vais pas vous d�cevoir.",18)

	NODE(18)
		SAY("Le nom exact de ces puces est 'Prototype AMC5 Processor'. Je vous souhaite bonne chance. Lorsque vous en trouverez quatre, pensez � les ramener � notre technicien. Bonne chance.")
		ENDDIALOG()
		
	NODE(30)
		SAY("Apparemment, ils n'ont pas seulement effac� votre m�moire, ils vous ont aussi coup� les couilles. Allez, hors de ma vue, poule mouill�e!")
		ENDDIALOG()
		



	NODE(20)
		SAY("On est l'�quipe de nettoyage, et on fait tout briller du sol au plafond! Mais pour l'instant on fait une pause, alors laissez-nous tranquille.!")
		ANSWER("Qu'est-ce que c'est, ici?",21)
		
	NODE(21)
		SAY("Je vois. Ils ont fait du beau travail... Cette zone s'appelle MC5. Mais si je vous disais que c'est l� qu'on vous a lav� le cerveau, vous ne me croiriez pas de toute fa�on.")
		ANSWER("Vous avez raison, je sais que c'est un mensonge! Ils m'ont sauv� la vie! Je devrais m�me aller vous d�noncer pour ce que vous venez de me dire.",22)

	NODE(22)
		SAY("Comme vous voulez. Nous, on est que l'�quipe de nettoyage. Alors l�chez-nous la grappe, on fait une pause.")
		ENDDIALOG()
		
--new		
	NODE(50)
		SAY("C'est pour cela qu'on a mis au point le syst�me des GenReplicators. Les GenReps proposent plusieurs fonctions. La premi�re, c'est qu'ils permettent de vous cloner. Mais d'abord, votre code g�n�tique doit �tre enregistr� dans la station appropri�e. Tous les GenReps activ�s apparaissent dans une liste qui vous permet de choisir votre destination; Mais dans le secteur o� nous sommes, le syst�me a �t� l�g�rement modifi� : vous ne pouvez �tre clon� que dans la station centrale, vous n'avez pas d'autre choix. De plus, ce GenRep ne peut pas �tre activ�, et plus tard vous ne pourrez pas revenir dans ce secteur.")
		ANSWER("Ca en fait, des choses! Ca n'�tait donc que votre premi�rement??",51)

		SAY("Exact. Maintenant, mon second point : Le GenReplicator comporte un syst�me de r�cup�ration d'inventaire. Lorsque vous mourez, tous vos objets tombent � l'emplacement o� vous mourez. Votre premi�re option : retourner � l'endroit de votre mort et r�cup�rer votre inventaire, ou bien utiliser le service de r�cup�ration. Mais si vous avez retir� votre implant l�gal, il y a une chose que vous devez savoir: un des objets les plus importants que vous transportez tombe �galement, dans une ceinture, que vous ne pouvez pas retrouver avec ce service. Seul un de vos objets est en s�curit� : celui que vous plavez dans le premier espace de votre ceinture rapide, celui qui porte un petit cadenas.")
		ANSWER("Mais est-ce qu'on peut voler ce qui se trouve dans mon sac � dos?",52)

		SAY("Non. Votre sac � dos est prot�g�. Mais ce n'est pas le cas pour votre ceinture. Maintenant passons au troisi�me point. Comme le principe de la t�l�portation et du clonage sont assez similaires, une option de t�l�portation a �t� ajout�e au syst�me de GenReps. Vous pouvez vous t�l�porter vers un autre GenRep en �change d'une certaine somme d'argent, si vous avez activ� ce GenRep au pr�alable. Le GenRep de votre appartement est activ� par d�faut, m�me si vous n'en acez activ� aucun autre. J'en ai termin� maintenant.")
		ANSWER("Eh bien, je suis impressionn�. Alors, comment quitter ce secteur? Que dois-je savoir sur les bots de s�curit�?",14)
--new end		
end
