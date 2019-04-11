function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Puis-je vous aider, monsieur ?")
				SAY("Cherchez-vous quelque chose, monsieur ? Tangent vous propose toute une gamme de produits de première qualité.")
				SAY("Je pense qu'un représentant de Tangent pourrait vous aider, monsieur. J'ai beaucoup de choses à faire en ce moment.")
				SAY("Cherchez-vous quelque chose en particulier ? Je n'ai pas la possibilité de vous vendre quoi que ce soit, mais je peux vous indiquer où se trouve le revendeur Tangent le plus proche.")
				SAY("Ecoutez, en ce moment je suis sur quelque chose de très important. Et si je fais une erreur, vous feriez mieux de ne pas être dans les parages. Compris ?")
				SAY("Ecoutez, je ne suis pas un revendeur. Rendez-vous dans un de nos magasins si vous désirez un quelconque service.")

				ANSWER("Je ne veux rien acheter. Je suis plutôt du genre à proposer. Vous êtes mon contact ?",2)
				ANSWER("Facile, tout ce que je veux c'est de l'information. Est-ce que c'est vous, le contact pour une opération secrète ?",2)
				ANSWER("Je ne veux rien acheter pour l'instant. Peut-être que j'aurai besoin de munitions par la suite, si vous voyez ce que je veux dire. Vous êtes mon contact ?",2)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre. J'ai dû passer trop de temps dans NeoFrag ces temps-ci.",1)
				ANSWER("Oh pardon, vous n'êtes pas la bonne personne. Il faut vraiment que j'arrête les boosters, moi.",1)
				ANSWER("J'ai dû me tromper de chemin en cours de route. A la prochaine.",1)

			else
				SAY("Puis-je vous aider, madame ?")
				SAY("Cherchez-vous quelque chose, madame ? Tangent vous propose toute une gamme de produits de première qualité.")
				SAY("Je pense qu'un représentant de Tangent pourrait vous aider, madame. J'ai beaucoup de choses à faire en ce moment.")
				SAY("Cherchez-vous quelque chose en particulier ? Je n'ai pas la possibilité de vous vendre quoi que ce soit, mais je peux vous indiquer où se trouve le revendeur Tangent le plus proche.")
				SAY("Ecoutez, en ce moment je suis sur quelque chose de très important. Et si je fais une erreur, vous feriez mieux de ne pas être dans les parages. Compris ?")
				SAY("Ecoutez, je ne suis pas un revendeur. Rendez-vous dans un de nos magasins si vous désirez un quelconque service.")

				ANSWER("Je ne veux rien acheter. Je suis plutôt du genre à proposer. Vous êtes mon contact ?",2)
				ANSWER("Facile, tout ce que je veux c'est de l'information. Est-ce que c'est vous, le contact pour une opération secrète ?",2)
				ANSWER("Je ne veux rien acheter pour l'instant. Peut-être que j'aurai besoin de munitions par la suite, si vous voyez ce que je veux dire. Vous êtes mon contact ?",2)
				ANSWER("Désolée, je vous ai pris pour quelqu'un d'autre. J'ai dû passer trop de temps dans NeoFrag ces temps-ci.",1)
				ANSWER("Oh pardon, vous n'êtes pas la bonne personne. Il faut vraiment que j'arrête les boosters, moi.",1)
				ANSWER("J'ai dû me tromper de chemin en cours de route. A la prochaine.",1)
			end
	NODE(1)	
		SAY("Navré de l'apprendre. Mais n'oubliez pas tout de même de consulter notre gamme de produits.")
		SAY("Vraiment ? Bien. De toute façon, je nous voyais mal travailler ensemble.")
		SAY("J'arrive toujours à distinguer les passants des vrais runners. Passez une bonne journée.")
		ENDDIALOG()
	NODE(2)
		GENDERCHECK()
			if (result==1) then
				SAY("Bien, vous êtes celui que j'attends. Vous n'avez pas idée du nombre de personnes qui viennent ici uniquement pour discuter. Allons-y : plus tôt dans la journée, Tangent a localisé un individu dans %NPC_WORLD(1). Un individu que nous pensions mort. Et en plus, il a changé de nom : il s'appelle maintenant %NPC_NAME(1). Nos services pensent qu'il a payé un hacker pour effectuer la modification, mais nous sommes certains qu'il s'agit bien de notre cible. Ce que je vous demande, c'est de tuer cette cible à nouveau. Et surtout, discrètement. Compris ?")
				SAY("Oui, je suis votre contact en effet. Tangent m'a demandé de vous transmettre un nom et un lieu : %NPC_NAME(1), probablement à %NPC_WORLD(1). A traiter de toute urgence. Allez-y, identifiez la cible, faites ce que vous savez faire de mieux, et revenez. Et si à votre retour je m'aperçois que quelqu'un vous suit, je n'existe pas.")
				SAY("Ah, j'imagine que vous êtes le runner que j'attends. Je suis l'agent espion qu'on vous a demandé de rencontrer. Voici de quoi il s'agit. Un ancien associé de Tangent, du nom de %NPC_NAME(1), doit être éliminé. rendez-vous à %NPC_WORLD(1) et repérez votre cible. Puis faites ce pour quoi on vous paye... sans attirer l'attention. Revenez ensuite pour paiement.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
				SAY("Bien, vous êtes celle que j'attends. Vous n'avez pas idée du nombre de personnes qui viennent ici uniquement pour discuter. Allons-y : plus tôt dans la journée, Tangent a localisé un individu dans %NPC_WORLD(1). Un individu que nous pensions mort. Et en plus, il a changé de nom : il s'appelle maintenant %NPC_NAME(1). Nos services pensent qu'il a payé un hacker pour effectuer la modification, mais nous sommes certains qu'il s'agit bien de notre cible. Ce que je vous demande, c'est de tuer cette cible à nouveau. Et surtout, discrètement. Compris ?")
				SAY("Oui, je suis votre contact en effet. Tangent m'a demandé de vous transmettre un nom et un lieu : %NPC_NAME(1), probablement dans %NPC_WORLD(1). A traiter de toute urgence. Allez-y, identifiez la cible, faites ce que vous savez faire de mieux, et revenez. Et si à votre retour je m'aperçois que vous êtes suivie, je n'existe pas.")
				SAY("Ah, j'imagine que vous êtes le runner que j'attends. Je suis l'agent espion qu'on vous a demandé de rencontrer. Voici de quoi il s'agit. Un ancien associé de Tangent, du nom de %NPC_NAME(1), doit être éliminé. rendez-vous à %NPC_WORLD(1) et repérez votre cible. Puis faites ce pour quoi on vous paye... sans attirer l'attention. Revenez ensuite pour paiement.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG() 
			end
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Ecoutez, ne jouez pas à ça avec nous. Nous sommes une entreprise, mais ce n'est pas pour cela que nous sommes incapables de faire disparaître des gens. J'ajouterais même : au contraire. Alors finissez votre mission.")
				SAY("Je vous ai dit tout ce que vous aviez besoin de savoir. Maintenant, terminez votre mission avant que je décide de trouver quelqu'un pour vous remplacer.")
				SAY("Ecoutez, le principe de ce genre de missions, c'est d'être discret ; Et j'apprécierais donc que vous fassiez votre travail et que vous ne posiez pas de questions.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Je dois dire que j'apprécie votre travail, monsieur. Vous avez un avenir chez Tangent, je pense. Et faites-moi confiance, vous pouvez gagner gros. Mais occupons-nous en premier lieu de ce travail, si vous le voulez bien. Nous avons parlé de %REWARD_MONEY() crédits, c'est bien ça ? Ils ont été transférés sur votre compte. Passez une bonne journée.")
						SAY("Excellent travail, nos sources nos ont communiqué le succès de votre opération. Voici vos %REWARD_MONEY() crédits, vous les avez bien mérités. Revenez chez Tangent quand vous voulez, soyez certain qu'on aura quelque chose à vous proposer.")
SAY("Beau travail, monsieur. Et faites-moi confiance, nous avons nos sources. C'est un des principes de l'entreprise : toujours superviser. Je viens de transférer les %REWARD_MONEY() crédits convenus sur votre compte. Restez en contact avec nous pour de futurs contrats. Nous n'organisons pas ce genre de mission aussi souvent que les autres entreprises, mais nous pourrions certainement avoir besoin de votre aide prochainement.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Je dois dire que j'apprécie votre travail, madame. Vous avez un avenir chez Tangent, je pense. Et faites-moi confiance, vous  pouvez gagner gros. Mais occupons-nous en premier lieu de ce travail, si vous le voulez bien. Nous avons parlé de %REWARD_MONEY() crédits, c'est bien ça ? Ils ont été transférés sur votre compte. Passez une bonne journée.")
						SAY("Excellent travail, nos sources nos ont communiqué le succès de votre opération. Voici vos %REWARD_MONEY() crédits, vous les avez bien mérités. Revenez chez Tangent quand vous voulez, soyez certaine qu'on aura quelque chose à vous proposer.")
SAY("Beau travail, madame. Et faites-moi confiance, nous avons nos sources. C'est un des principes de l'entreprise : toujours superviser. Je viens de transférer les %REWARD_MONEY() crédits convenus sur votre compte. Restez en contact avec nous pour de futurs contrats. Nous n'organisons pas ce genre de mission aussi souvent que les autres entreprises, mais nous pourrions certainement avoir besoin de votre aide prochainement.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
