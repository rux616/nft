function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anh�nger
				SAY("Runner?")
				ANSWER("C'est vous le chef de la s�curit�?",1)
				ANSWER("J'ai quelque chose pour vous.",15)
			else		
			-- Fall 2: Reza Feind		
				SAY("On a eu un avertissement de s�curit� � votre sujet. Allez directement au GenRep, et quittez la zone MC5 imm�diatement!")
				ANSWER("Vous �tes le responsable de la s�curit�, alors expliquez-moi! Qu'est-ce qui se passe ici?",40)
			end
		
	NODE(1)
		SAY("Exact. C'est moi qui dirige la s�curit� de la zone MC5.")
		ANSWER("Pouvez-vous me dire ce que c'est au juste, cette zone MC5?",2)		
		ANSWER("Je voulais avoir quelques conseils, c'est tout. Moi, je veux seulement chasser des bots.",4)		
				
	NODE(2)	
		SAY("La zone MC5 est une sorte d'h�pital. Mais je n'ai pas l'autorisation de vous en dire plus sur nos... patients. Notre administrateur civil va vous expliquer tout ce que vous devez savoir. Ce sera votre source d'information. Maintenant laissez-moi, j'ai du travail.")
		ANSWER("Je veux chasser des bots. Vous pouvez me donner quelques conseils?",4)	
		ANSWER("OK, � plus tard alors.",3)

	NODE(3)
		SAY("C'est �a, � plus tard.")
		ENDDIALOG()

	NODE(4)	
		SAY("HAR,HAR,HAR! Regardez-moi ce morveux qui veut chasser des bots! Quel genre de bots? Ceux qui font le m�nage dans les couloirs, des tondeuses � gazon? Vous ne pensez tout de m�me pas vous attaquer � des bots chasseurs, dites?")
		ANSWER("H�, du calme. Moi, ce que je veux c'est �liminer des bots de s�curit� pour le chef technicien.",5)	

	NODE(5)	
		SAY("Des bots de s�curit�? Je vois que vous ne faites pas dans la dentelle. Mais est-ce que vous savez au moins encore vous battre, apr�s le traitement que vous avez subi?")
		ANSWER("Euh... ben... Vous avez quelques conseils pour moi? D'ordre g�n�ral?",6)	
		ANSWER("Je suis certain que je sais ce qu'il faut savoir. Ce que je recherche, c'est des informations sur les bots.",9)	

	NODE(6)	
		SAY("OK, je vais vous donner un coup de main. le plus important, c'est de se tenir pr�t � combattre. Avant de chasser, d�placez votre arme dans un des espaces de votre ceinture � droite de votre R.P.O.S., et activez-la � l'aide de la touche num�rique correspondante.")
		ANSWER("Euh... Et comment vous savez que j'ai des espaces libres dans mon R.P.O.S.?",7)

	NODE(7)	
		SAY("Parce que nous avons tous ce syst�me. Le Retinal Projected Operating System (R.P.O.S.), est votre syst�me d'exploitation par projection r�tinienne. C'est une norme standard.")
		ANSWER("Ahh. Ok.",8)

	NODE(8)	
		SAY("Ensuite, visez ce que vous voulez tuer, et c'est parti. Lorsque vous utilisez des armes de tir, attendez que le r�ticule de vis�e r�tr�cisse pour que vous ayez une chance raisonnable de toucher. Mais lorsue vous �tes en ville, ne vous d�placez pas avec votre arme sortie, les CopBots n'aiment pas �a du tout.")
		ANSWER("Je m'en souviendrai. Vous pouvez me donner des informations au sujet des bots de s�curit�?",9)

	NODE(9)	
		SAY("Oui, les SecBots sont difficiles � abattre! Je vous conseille d'abord de vous habituer � l'interface et de travailler un peu vos comp�tences. Les bots utilisent des lasers. Si vous n'avez pas d'arme de tir, tentez de les acculer dans un coin et taillez-les en pi�ces. Ils n'aiment pas �tre pris dans les coins.")
--new		
		ANSWER("OK. Mais si je meurs malgr� tous vos bons conseils...?",50)
-- new end

	NODE(10)
		SAY("Ca devrait. Mais si vous croisez d'autres gens, faites �quipe avec eux. Vous avez une fonction pour la gestion des �quipes dans votre R.P.O.S.. Vous r�ussirez � vous en servir, vous verrez. Si vous faites �quipe avec d'autres personnes, vous apprendrez plus rapidement, et vous pourrez agir de mani�re compl�mentaire.")
		ANSWER("Mais il faudra que je travaille mes comp�tences par ailleurs?",11)

	NODE(11)	
		SAY("Absolument. Si vous voulez gagner de l'argent, vous devrez en passer par l�. Mais vous gagnerez de plus en plus d'argent avec cette technique. Vous gagnez de l'argent pour chaque adversaire �limin�, et de plus vous pouvez revendre ce que vous trouvez sur vos ennemis. Visez un cadavre, et 'utilisez'-le. Si vous trouvez des implants, alors �a m'int�resse. Vous travaillons sur une nouvelle g�n�ration d'implants, et nous avons besoin de composants.")
		ANSWER("Je vais voir ce que je peux faire. Il vous en faut combien?",12)

	NODE(12)	
		SAY("Moins de trois, c'est pas la peine de me les donner. Et j'ai besoin d'implants du type A, B ou C. Les autres mod�les ne me serviront � rien, ils ont d�j� �t� trop modifi�s. Alors apportez-m'en trois, et je les ach�te. Maintenant au travail!")
		ANSWER("Ok ok, merci pour votre aide.",13)

	NODE(13)	
		SAY("Pas de probl�me. Donnez-moi les �l�ments, et on fera affaire.")
		ENDDIALOG()

	NODE(15)
		TAKEITEMCNT(225,3)
		if (result==1) then
			SAY("Excellent. 3 Type A. je prends.")
			ANSWER("Une minute! Qu'est-ce que vous me donnez en �change?",16)	
		else
			TAKEITEMCNT(226,3)
			if (result==1) then
				SAY("Type B, j'en vois trois. C'est parfait, donnez-moi �a.")
				ANSWER("Et mon argent? Combien est-ce que vous allez me payer?",16)	
			else
				TAKEITEMCNT(227,3)
				if (result==1) then
					SAY("3 Type C. Ca fera l'affaire. Donnez-moi �a.")
					ANSWER("Une minute! Qu'est-ce que vous me donnez en �change?",16)	
				else
					SAY("On avait dit trois parties d'une seule sorte! Je prends tout ce qui va du type A au type C. N'essayez pas de m'avoir!")
					ENDDIALOG()
				end
			end
		end

	NODE(16)	
		SAY("Bon, trois composants... Voil� 350 cr�dits.")
		ANSWER("March� conclu.",17)
		ANSWER("OK, vendu.",17)
		ANSWER("Pas question. 600, ou bien je vais voir ailleurs.",18)
		ANSWER("350? Soit vous me donnez 600, soit je trouve un autre acheteur.",18)
		ANSWER("Vous �tes cingl�! C'est moi qui fais le sale boulot, et ensuite vous vous payez ma t�te?",19)
		ANSWER("Eh, l'ami! 350 cr�dits, vous insultez mon intelligence! 1800, ou bien vous n'aurez rien.",19)
		ANSWER("900 cr�dits. Si vous avez que 350 cr�dits � me donner, vous pouvez vous les mettre o� je pense.",19)

	NODE(17)	
		SAY("Excellent. Revenez si vous en trouvez d'autres.")
		GIVEMONEY(350)
		ENDDIALOG()

	NODE(18)	
		SAY("Bon... 550 cr�dits, c'est mon meilleur prix. Revenez lorsque vous en aurez d'autres.")
		GIVEMONEY(550)		
		ENDDIALOG()

	NODE(19)	
		SAY("Ne jouez pas au plus malin avec moi. Si vous continuez comme �a, je ne vous paierai m�me pas et je garderai tout. Lorsque vous en aurez d'autres, revenez et on n�gociera un prix.")
		ENDDIALOG()

	NODE(40)
		SAY("Quittez ce complexe imm�diatement. Toutes les unit�s ont �t� alert�es, et toute r�sistance sera punie d'une ex�cution. Alors quittez les lieux!")
		ENDDIALOG()

--new
NODE(50)
		SAY("C'est pour cela qu'on a mis au point le syst�me des GenReplicators. Les GenReps proposent plusieurs fonctions. La premi�re, c'est qu'ils permettent de vous cloner. Mais d'abord, votre code g�n�tique doit �tre enregistr� dans la station appropri�e. Tous les GenReps activ�s apparaissent dans une liste qui vous permet de choisir votre destination; Mais dans le secteur o� nous sommes, le syst�me a �t� l�g�rement modifi� : vous ne pouvez �tre clon� que dans la station centrale, vous n'avez pas d'autre choix. De plus, ce GenRep ne peut pas �tre activ�, et plus tard vous ne pourrez pas revenir dans ce secteur.")
		ANSWER("Ca en fait, des choses! Ca n'�tait donc que votre premi�rement??",51)

		SAY("Exact. Maintenant, mon second point : Le GenReplicator comporte un syst�me de r�cup�ration d'inventaire. Lorsque vous mourez, tous vos objets tombent � l'emplacement o� vous mourez. Votre premi�re option : retourner � l'endroit de votre mort et r�cup�rer votre inventaire, ou bien utiliser le service de r�cup�ration. Mais si vous avez retir� votre implant l�gal, il y a une chose que vous devez savoir: un des objets les plus importants que vous transportez tombe �galement, dans une ceinture, que vous ne pouvez pas retrouver avec ce service. Seul un de vos objets est en s�curit� : celui que vous placez dans le premier espace de votre ceinture rapide, celui qui porte un petit cadenas.")
		ANSWER("Mais est-ce qu'on peut voler ce qui se trouve dans mon sac � dos?",52)

		SAY("Non. Votre sac � dos est prot�g�. Mais ce n'est pas le cas pour votre ceinture. Maintenant passons au troisi�me point. Comme le principe de la t�l�portation et du clonage sont assez similaires, une option de t�l�portation a �t� ajout�e au syst�me de GenReps. Vous pouvez vous t�l�porter vers un autre GenRep en �change d'une certaine somme d'argent, si vous avez activ� ce GenRep au pr�alable. Le GenRep de votre appartement est activ� par d�faut, m�me si vous n'en avez activ� aucun autre. J'en ai termin� maintenant.")
		ANSWER("Eh bien, je suis impressionn�. Alors, comment quitter ce secteur? Que dois-je savoir sur les bots de s�curit�?",9)
--new end		
end
