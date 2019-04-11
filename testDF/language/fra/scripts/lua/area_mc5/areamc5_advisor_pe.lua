function DIALOG()

	NODE(0)
		SAY("Je ne vous ai jamais crois� auparavant. Qu'est-ce que je peux faire pour vous?")
		ANSWER("Qu'est-ce que je dois faire pour �tre le meilleur? J'en meurs d'envie!",50)
			
	NODE(1)
		SAY("Je vois. Vous me faites bonne impression, je vais vous apprendre quelques subtilit�s du m�tier.")
		ANSWER("Merci!",2)		
		
	NODE(2)	
		SAY("En tant que Priv�, vous n'�tes pas vraiment un sp�cialiste. Certains pensent que c'est und�savantage, mais je ne suis pas d'accord avec eux. Evidemment, vous ne pouvez pas vous sp�cialiser autant qu'une autre classe, mais vous pouvez faire de l'excellent travail partout. Je pense que c'est cette polyvalence qui fait votre v�ritable force.")
		ANSWER("Euh... Polyvalence?",3)
		
	NODE(3)
		SAY("Oui, attendez que je vous explique. M�me si vous ne vous sp�cialisez pas, vous pouvez obtenir des r�sultats impressionnants. La meilleure mani�re de devenir quelqu'un de respect� est de vosu orienter vers le combat. Commencez petit, entra�nez-vous sur de petits animaux... Et plus tard, vous pourrez chasser des choses bien plus grosses.")
		ANSWER("Et mes capacit�s? Qu'est-ce que vous pouvez me dire � ce propos?",4)

	NODE(4)
		SAY("Justement, j'allais y venir. Par exemple, l'intelligence est une de vos capacit�s. Plus vous devenez intelligent, plus vous avez la possibilit� de d�velopper vos comp�tences dans des domaines comme le commerce, la construction, la recherche ou l'implantation. Vous pouvez �galement accro�tre vos capacit�s psi, ou votre facult� de vis�e.")
		ANSWER("Je vois.",5)

	NODE(5)	
		SAY("Mais je vous conseille de vous concentrer sur certains aspects seulement, et de tenter de bien les d�velopper. Si vous choisissez de chasser au drone, par exemple, n'h�sitez pas � d�velopper votre Willpower. Sinon, pensez toujours que vous allez devoir apprendre � viser. Pensez � votre plan de carri�re, apprenez � planifier.")
		ANSWER("J'ai d'autres possibilit�s?",6)

	NODE(6)
		SAY("Je vois, vous commencez d�j� � vous fixer des objectifs, c'est bien! Parlons de votre force, par exemple. Lorsque j'�tais jeune, j'adorais les armes de corps � corps, et en vieillissant je me suis mis � aimer les fusils. N'oubliez pas que vous devrez aussi faire un peu de musculation, vous aurez des choses lourdes � transporter, sans doute.")
		ANSWER("Compris.",7)
			
	NODE(7)
		SAY("Parlons maintenant de la plus importante de vos capacit�s : la constitution. Votre constitution d�termine votre sant� et votre r�sistance. Concentrez-vous d'abord sur votre sant�, puis sur vos capacit�s athl�tiques et votre endurance. N'ayez pas peur parce qu'aujourd'hui vous �tes lent et que vous vous essouflez pour un rien. Ca ira mieux avec le temps!")
		ANSWER("Je comprends. C'est une question d'entra�nement.",8)

	NODE(8)
		SAY("Exactement. Mais voyons maintenant ce que je pr�f�re : la dext�rit�. Un Priv� peut avoir de tr�s bons r�sultats dnas ce domaine. Vous devrez apprendre � vous battre. Certains pr�f�rent les pistolets, d'autres les fusils. C'est vraiment une question de go�ts. Vous pourrez d�velopper votre comp�tence High Tech si vous voulez, mais concentrez-vous pour commencer sur votre maniement du fusil ou du pistolet.")
		ANSWER("Bien. Et le pilotage?",9)		
		
	NODE(9)
		SAY("Ah oui, le pilotage. Vous pouvez �tre un excellent pilote, et conduire tout ce qui existe. Et vous ferez gagner du temps � vos camarades de groupe. Qui sait, vous monterez peut-�tre une compagnie de transport � succ�s?")
		ANSWER("Peut-�tre...",10)		

	NODE(10)
		SAY("Sinon, l'agilit� et la r�paration sont deux choses � prendre en consid�ration. Ces deux comp�tences d�pendent de la dext�rit�. Plus vous serez agile, plus vous serez rapide. C'est un �l�ment tr�s important lors des combats. Si votre arme se brise pendant un combat, vous appr�cierez d'avoir des notions de r�paration. Et vous pourrez gagner votre vie en faisant profiter les autres runners de votre savoir-faire. Pas gratuitement, �videmment.")
		ANSWER("Ouah, vous en savez des choses... D'autres petits trucs que je devrais savoir?",11)		

	NODE(11)
		SAY("Une de vos capacit�s les plus fascinantes est probablement celle de d�velopper des pouvoirs Psi. Ces pouvoirs vous permettent de mieux vous battre, et m�me de vous soigner. Mais attention lorsque vous �tudiez ce domaine. Vousferiez mieux de poser des questions � quelqu'un qui s'y conna�t mieux que moi. Je vous conseille de trouver un moine Psi, c'est le meilleur choix.")
		ANSWER("Je verrai �a.",12)		

	NODE(12)
		SAY("Bien... je crois qu'on a fait le tour. Un dernier conseil : n'h�sitez pas � vous faire des amis, cherchez un clan, vous vous d�brouillerez mieux que si vous �tes tout seul. Et allez au QG de votre faction, on vous expliquera plein de choses qui ont trait � la politique.")
		ANSWER("Merci beaucoup, vous m'avez rendu un sacr� coup de main. Bon, je vais y aller... A la prochaine!",13)		

	NODE(13)
		SAY("Ca m'�tonnerait qu'on se revoie...")
		ENDDIALOG()	




	NODE(50)
		SAY("Ce que je peux vous apprendre ne vous aidera que si vous �tes un moine PRIVE.")
		ANSWER("Ca tombe bien. Je vous �coute.",1)		
		ANSWER("Rat�. Tant pis.",51)	
		
	NODE(51)
		SAY("Trouvez le conseiller qui vous parlera de votre classe, vous apprendrez des choses tr�s utiles.")
		ENDDIALOG()
end
