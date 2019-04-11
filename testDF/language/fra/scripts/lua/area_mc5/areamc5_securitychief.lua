function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anhänger
				SAY("Runner?")
				ANSWER("C'est vous le chef de la sécurité?",1)
				ANSWER("J'ai quelque chose pour vous.",15)
			else		
			-- Fall 2: Reza Feind		
				SAY("On a eu un avertissement de sécurité à votre sujet. Allez directement au GenRep, et quittez la zone MC5 immédiatement!")
				ANSWER("Vous êtes le responsable de la sécurité, alors expliquez-moi! Qu'est-ce qui se passe ici?",40)
			end
		
	NODE(1)
		SAY("Exact. C'est moi qui dirige la sécurité de la zone MC5.")
		ANSWER("Pouvez-vous me dire ce que c'est au juste, cette zone MC5?",2)		
		ANSWER("Je voulais avoir quelques conseils, c'est tout. Moi, je veux seulement chasser des bots.",4)		
				
	NODE(2)	
		SAY("La zone MC5 est une sorte d'hôpital. Mais je n'ai pas l'autorisation de vous en dire plus sur nos... patients. Notre administrateur civil va vous expliquer tout ce que vous devez savoir. Ce sera votre source d'information. Maintenant laissez-moi, j'ai du travail.")
		ANSWER("Je veux chasser des bots. Vous pouvez me donner quelques conseils?",4)	
		ANSWER("OK, à plus tard alors.",3)

	NODE(3)
		SAY("C'est ça, à plus tard.")
		ENDDIALOG()

	NODE(4)	
		SAY("HAR,HAR,HAR! Regardez-moi ce morveux qui veut chasser des bots! Quel genre de bots? Ceux qui font le ménage dans les couloirs, des tondeuses à gazon? Vous ne pensez tout de même pas vous attaquer à des bots chasseurs, dites?")
		ANSWER("Hé, du calme. Moi, ce que je veux c'est éliminer des bots de sécurité pour le chef technicien.",5)	

	NODE(5)	
		SAY("Des bots de sécurité? Je vois que vous ne faites pas dans la dentelle. Mais est-ce que vous savez au moins encore vous battre, après le traitement que vous avez subi?")
		ANSWER("Euh... ben... Vous avez quelques conseils pour moi? D'ordre général?",6)	
		ANSWER("Je suis certain que je sais ce qu'il faut savoir. Ce que je recherche, c'est des informations sur les bots.",9)	

	NODE(6)	
		SAY("OK, je vais vous donner un coup de main. le plus important, c'est de se tenir prêt à combattre. Avant de chasser, déplacez votre arme dans un des espaces de votre ceinture à droite de votre R.P.O.S., et activez-la à l'aide de la touche numérique correspondante.")
		ANSWER("Euh... Et comment vous savez que j'ai des espaces libres dans mon R.P.O.S.?",7)

	NODE(7)	
		SAY("Parce que nous avons tous ce système. Le Retinal Projected Operating System (R.P.O.S.), est votre système d'exploitation par projection rétinienne. C'est une norme standard.")
		ANSWER("Ahh. Ok.",8)

	NODE(8)	
		SAY("Ensuite, visez ce que vous voulez tuer, et c'est parti. Lorsque vous utilisez des armes de tir, attendez que le réticule de visée rétrécisse pour que vous ayez une chance raisonnable de toucher. Mais lorsue vous êtes en ville, ne vous déplacez pas avec votre arme sortie, les CopBots n'aiment pas ça du tout.")
		ANSWER("Je m'en souviendrai. Vous pouvez me donner des informations au sujet des bots de sécurité?",9)

	NODE(9)	
		SAY("Oui, les SecBots sont difficiles à abattre! Je vous conseille d'abord de vous habituer à l'interface et de travailler un peu vos compétences. Les bots utilisent des lasers. Si vous n'avez pas d'arme de tir, tentez de les acculer dans un coin et taillez-les en pièces. Ils n'aiment pas être pris dans les coins.")
--new		
		ANSWER("OK. Mais si je meurs malgré tous vos bons conseils...?",50)
-- new end

	NODE(10)
		SAY("Ca devrait. Mais si vous croisez d'autres gens, faites équipe avec eux. Vous avez une fonction pour la gestion des équipes dans votre R.P.O.S.. Vous réussirez à vous en servir, vous verrez. Si vous faites équipe avec d'autres personnes, vous apprendrez plus rapidement, et vous pourrez agir de manière complémentaire.")
		ANSWER("Mais il faudra que je travaille mes compétences par ailleurs?",11)

	NODE(11)	
		SAY("Absolument. Si vous voulez gagner de l'argent, vous devrez en passer par là. Mais vous gagnerez de plus en plus d'argent avec cette technique. Vous gagnez de l'argent pour chaque adversaire éliminé, et de plus vous pouvez revendre ce que vous trouvez sur vos ennemis. Visez un cadavre, et 'utilisez'-le. Si vous trouvez des implants, alors ça m'intéresse. Vous travaillons sur une nouvelle génération d'implants, et nous avons besoin de composants.")
		ANSWER("Je vais voir ce que je peux faire. Il vous en faut combien?",12)

	NODE(12)	
		SAY("Moins de trois, c'est pas la peine de me les donner. Et j'ai besoin d'implants du type A, B ou C. Les autres modèles ne me serviront à rien, ils ont déjà été trop modifiés. Alors apportez-m'en trois, et je les achète. Maintenant au travail!")
		ANSWER("Ok ok, merci pour votre aide.",13)

	NODE(13)	
		SAY("Pas de problème. Donnez-moi les éléments, et on fera affaire.")
		ENDDIALOG()

	NODE(15)
		TAKEITEMCNT(225,3)
		if (result==1) then
			SAY("Excellent. 3 Type A. je prends.")
			ANSWER("Une minute! Qu'est-ce que vous me donnez en échange?",16)	
		else
			TAKEITEMCNT(226,3)
			if (result==1) then
				SAY("Type B, j'en vois trois. C'est parfait, donnez-moi ça.")
				ANSWER("Et mon argent? Combien est-ce que vous allez me payer?",16)	
			else
				TAKEITEMCNT(227,3)
				if (result==1) then
					SAY("3 Type C. Ca fera l'affaire. Donnez-moi ça.")
					ANSWER("Une minute! Qu'est-ce que vous me donnez en échange?",16)	
				else
					SAY("On avait dit trois parties d'une seule sorte! Je prends tout ce qui va du type A au type C. N'essayez pas de m'avoir!")
					ENDDIALOG()
				end
			end
		end

	NODE(16)	
		SAY("Bon, trois composants... Voilà 350 crédits.")
		ANSWER("Marché conclu.",17)
		ANSWER("OK, vendu.",17)
		ANSWER("Pas question. 600, ou bien je vais voir ailleurs.",18)
		ANSWER("350? Soit vous me donnez 600, soit je trouve un autre acheteur.",18)
		ANSWER("Vous êtes cinglé! C'est moi qui fais le sale boulot, et ensuite vous vous payez ma tête?",19)
		ANSWER("Eh, l'ami! 350 crédits, vous insultez mon intelligence! 1800, ou bien vous n'aurez rien.",19)
		ANSWER("900 crédits. Si vous avez que 350 crédits à me donner, vous pouvez vous les mettre où je pense.",19)

	NODE(17)	
		SAY("Excellent. Revenez si vous en trouvez d'autres.")
		GIVEMONEY(350)
		ENDDIALOG()

	NODE(18)	
		SAY("Bon... 550 crédits, c'est mon meilleur prix. Revenez lorsque vous en aurez d'autres.")
		GIVEMONEY(550)		
		ENDDIALOG()

	NODE(19)	
		SAY("Ne jouez pas au plus malin avec moi. Si vous continuez comme ça, je ne vous paierai même pas et je garderai tout. Lorsque vous en aurez d'autres, revenez et on négociera un prix.")
		ENDDIALOG()

	NODE(40)
		SAY("Quittez ce complexe immédiatement. Toutes les unités ont été alertées, et toute résistance sera punie d'une exécution. Alors quittez les lieux!")
		ENDDIALOG()

--new
NODE(50)
		SAY("C'est pour cela qu'on a mis au point le système des GenReplicators. Les GenReps proposent plusieurs fonctions. La première, c'est qu'ils permettent de vous cloner. Mais d'abord, votre code génétique doit être enregistré dans la station appropriée. Tous les GenReps activés apparaissent dans une liste qui vous permet de choisir votre destination; Mais dans le secteur où nous sommes, le système a été légèrement modifié : vous ne pouvez être cloné que dans la station centrale, vous n'avez pas d'autre choix. De plus, ce GenRep ne peut pas être activé, et plus tard vous ne pourrez pas revenir dans ce secteur.")
		ANSWER("Ca en fait, des choses! Ca n'était donc que votre premièrement??",51)

		SAY("Exact. Maintenant, mon second point : Le GenReplicator comporte un système de récupération d'inventaire. Lorsque vous mourez, tous vos objets tombent à l'emplacement où vous mourez. Votre première option : retourner à l'endroit de votre mort et récupérer votre inventaire, ou bien utiliser le service de récupération. Mais si vous avez retiré votre implant légal, il y a une chose que vous devez savoir: un des objets les plus importants que vous transportez tombe également, dans une ceinture, que vous ne pouvez pas retrouver avec ce service. Seul un de vos objets est en sécurité : celui que vous placez dans le premier espace de votre ceinture rapide, celui qui porte un petit cadenas.")
		ANSWER("Mais est-ce qu'on peut voler ce qui se trouve dans mon sac à dos?",52)

		SAY("Non. Votre sac à dos est protégé. Mais ce n'est pas le cas pour votre ceinture. Maintenant passons au troisième point. Comme le principe de la téléportation et du clonage sont assez similaires, une option de téléportation a été ajoutée au système de GenReps. Vous pouvez vous téléporter vers un autre GenRep en échange d'une certaine somme d'argent, si vous avez activé ce GenRep au préalable. Le GenRep de votre appartement est activé par défaut, même si vous n'en avez activé aucun autre. J'en ai terminé maintenant.")
		ANSWER("Eh bien, je suis impressionné. Alors, comment quitter ce secteur? Que dois-je savoir sur les bots de sécurité?",9)
--new end		
end
