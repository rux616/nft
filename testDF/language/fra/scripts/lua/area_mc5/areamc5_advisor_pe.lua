function DIALOG()

	NODE(0)
		SAY("Je ne vous ai jamais croisé auparavant. Qu'est-ce que je peux faire pour vous?")
		ANSWER("Qu'est-ce que je dois faire pour être le meilleur? J'en meurs d'envie!",50)
			
	NODE(1)
		SAY("Je vois. Vous me faites bonne impression, je vais vous apprendre quelques subtilités du métier.")
		ANSWER("Merci!",2)		
		
	NODE(2)	
		SAY("En tant que Privé, vous n'êtes pas vraiment un spécialiste. Certains pensent que c'est undésavantage, mais je ne suis pas d'accord avec eux. Evidemment, vous ne pouvez pas vous spécialiser autant qu'une autre classe, mais vous pouvez faire de l'excellent travail partout. Je pense que c'est cette polyvalence qui fait votre véritable force.")
		ANSWER("Euh... Polyvalence?",3)
		
	NODE(3)
		SAY("Oui, attendez que je vous explique. Même si vous ne vous spécialisez pas, vous pouvez obtenir des résultats impressionnants. La meilleure manière de devenir quelqu'un de respecté est de vosu orienter vers le combat. Commencez petit, entraînez-vous sur de petits animaux... Et plus tard, vous pourrez chasser des choses bien plus grosses.")
		ANSWER("Et mes capacités? Qu'est-ce que vous pouvez me dire à ce propos?",4)

	NODE(4)
		SAY("Justement, j'allais y venir. Par exemple, l'intelligence est une de vos capacités. Plus vous devenez intelligent, plus vous avez la possibilité de développer vos compétences dans des domaines comme le commerce, la construction, la recherche ou l'implantation. Vous pouvez également accroître vos capacités psi, ou votre faculté de visée.")
		ANSWER("Je vois.",5)

	NODE(5)	
		SAY("Mais je vous conseille de vous concentrer sur certains aspects seulement, et de tenter de bien les développer. Si vous choisissez de chasser au drone, par exemple, n'hésitez pas à développer votre Willpower. Sinon, pensez toujours que vous allez devoir apprendre à viser. Pensez à votre plan de carrière, apprenez à planifier.")
		ANSWER("J'ai d'autres possibilités?",6)

	NODE(6)
		SAY("Je vois, vous commencez déjà à vous fixer des objectifs, c'est bien! Parlons de votre force, par exemple. Lorsque j'étais jeune, j'adorais les armes de corps à corps, et en vieillissant je me suis mis à aimer les fusils. N'oubliez pas que vous devrez aussi faire un peu de musculation, vous aurez des choses lourdes à transporter, sans doute.")
		ANSWER("Compris.",7)
			
	NODE(7)
		SAY("Parlons maintenant de la plus importante de vos capacités : la constitution. Votre constitution détermine votre santé et votre résistance. Concentrez-vous d'abord sur votre santé, puis sur vos capacités athlétiques et votre endurance. N'ayez pas peur parce qu'aujourd'hui vous êtes lent et que vous vous essouflez pour un rien. Ca ira mieux avec le temps!")
		ANSWER("Je comprends. C'est une question d'entraînement.",8)

	NODE(8)
		SAY("Exactement. Mais voyons maintenant ce que je préfère : la dextérité. Un Privé peut avoir de très bons résultats dnas ce domaine. Vous devrez apprendre à vous battre. Certains préfèrent les pistolets, d'autres les fusils. C'est vraiment une question de goûts. Vous pourrez développer votre compétence High Tech si vous voulez, mais concentrez-vous pour commencer sur votre maniement du fusil ou du pistolet.")
		ANSWER("Bien. Et le pilotage?",9)		
		
	NODE(9)
		SAY("Ah oui, le pilotage. Vous pouvez être un excellent pilote, et conduire tout ce qui existe. Et vous ferez gagner du temps à vos camarades de groupe. Qui sait, vous monterez peut-être une compagnie de transport à succès?")
		ANSWER("Peut-être...",10)		

	NODE(10)
		SAY("Sinon, l'agilité et la réparation sont deux choses à prendre en considération. Ces deux compétences dépendent de la dextérité. Plus vous serez agile, plus vous serez rapide. C'est un élément très important lors des combats. Si votre arme se brise pendant un combat, vous apprécierez d'avoir des notions de réparation. Et vous pourrez gagner votre vie en faisant profiter les autres runners de votre savoir-faire. Pas gratuitement, évidemment.")
		ANSWER("Ouah, vous en savez des choses... D'autres petits trucs que je devrais savoir?",11)		

	NODE(11)
		SAY("Une de vos capacités les plus fascinantes est probablement celle de développer des pouvoirs Psi. Ces pouvoirs vous permettent de mieux vous battre, et même de vous soigner. Mais attention lorsque vous étudiez ce domaine. Vousferiez mieux de poser des questions à quelqu'un qui s'y connaît mieux que moi. Je vous conseille de trouver un moine Psi, c'est le meilleur choix.")
		ANSWER("Je verrai ça.",12)		

	NODE(12)
		SAY("Bien... je crois qu'on a fait le tour. Un dernier conseil : n'hésitez pas à vous faire des amis, cherchez un clan, vous vous débrouillerez mieux que si vous êtes tout seul. Et allez au QG de votre faction, on vous expliquera plein de choses qui ont trait à la politique.")
		ANSWER("Merci beaucoup, vous m'avez rendu un sacré coup de main. Bon, je vais y aller... A la prochaine!",13)		

	NODE(13)
		SAY("Ca m'étonnerait qu'on se revoie...")
		ENDDIALOG()	




	NODE(50)
		SAY("Ce que je peux vous apprendre ne vous aidera que si vous êtes un moine PRIVE.")
		ANSWER("Ca tombe bien. Je vous écoute.",1)		
		ANSWER("Raté. Tant pis.",51)	
		
	NODE(51)
		SAY("Trouvez le conseiller qui vous parlera de votre classe, vous apprendrez des choses très utiles.")
		ENDDIALOG()
end
