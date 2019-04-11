function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Puis-je vous aider, monsieur ?")
				SAY("Cherchez-vous quelque chose, monsieur ? Tangent vous propose toute une gamme de produits de premi�re qualit�.")
				SAY("Je pense qu'un repr�sentant de Tangent pourrait vous aider, monsieur. J'ai beaucoup de choses � faire en ce moment.")
				SAY("Cherchez-vous quelque chose en particulier ? Je n'ai pas la possibilit� de vous vendre quoi que ce soit, mais je peux vous indiquer o� se trouve le revendeur Tangent le plus proche.")
				SAY("Ecoutez, en ce moment je suis sur quelque chose de tr�s important. Et si je fais une erreur, vous feriez mieux de ne pas �tre dans les parages. Compris ?")
				SAY("Ecoutez, je ne suis pas un revendeur. Rendez-vous dans un de nos magasins si vous d�sirez un quelconque service.")

				ANSWER("Je ne veux rien acheter. Je suis plut�t du genre � proposer. Vous �tes mon contact ?",2)
				ANSWER("Facile, tout ce que je veux c'est de l'information. Est-ce que c'est vous, le contact pour une op�ration secr�te ?",2)
				ANSWER("Je ne veux rien acheter pour l'instant. Peut-�tre que j'aurai besoin de munitions par la suite, si vous voyez ce que je veux dire. Vous �tes mon contact ?",2)
				ANSWER("D�sol�, je vous ai pris pour quelqu'un d'autre. J'ai d� passer trop de temps dans NeoFrag ces temps-ci.",1)
				ANSWER("Oh pardon, vous n'�tes pas la bonne personne. Il faut vraiment que j'arr�te les boosters, moi.",1)
				ANSWER("J'ai d� me tromper de chemin en cours de route. A la prochaine.",1)

			else
				SAY("Puis-je vous aider, madame ?")
				SAY("Cherchez-vous quelque chose, madame ? Tangent vous propose toute une gamme de produits de premi�re qualit�.")
				SAY("Je pense qu'un repr�sentant de Tangent pourrait vous aider, madame. J'ai beaucoup de choses � faire en ce moment.")
				SAY("Cherchez-vous quelque chose en particulier ? Je n'ai pas la possibilit� de vous vendre quoi que ce soit, mais je peux vous indiquer o� se trouve le revendeur Tangent le plus proche.")
				SAY("Ecoutez, en ce moment je suis sur quelque chose de tr�s important. Et si je fais une erreur, vous feriez mieux de ne pas �tre dans les parages. Compris ?")
				SAY("Ecoutez, je ne suis pas un revendeur. Rendez-vous dans un de nos magasins si vous d�sirez un quelconque service.")

				ANSWER("Je ne veux rien acheter. Je suis plut�t du genre � proposer. Vous �tes mon contact ?",2)
				ANSWER("Facile, tout ce que je veux c'est de l'information. Est-ce que c'est vous, le contact pour une op�ration secr�te ?",2)
				ANSWER("Je ne veux rien acheter pour l'instant. Peut-�tre que j'aurai besoin de munitions par la suite, si vous voyez ce que je veux dire. Vous �tes mon contact ?",2)
				ANSWER("D�sol�e, je vous ai pris pour quelqu'un d'autre. J'ai d� passer trop de temps dans NeoFrag ces temps-ci.",1)
				ANSWER("Oh pardon, vous n'�tes pas la bonne personne. Il faut vraiment que j'arr�te les boosters, moi.",1)
				ANSWER("J'ai d� me tromper de chemin en cours de route. A la prochaine.",1)
			end
	NODE(1)	
		SAY("Navr� de l'apprendre. Mais n'oubliez pas tout de m�me de consulter notre gamme de produits.")
		SAY("Vraiment ? Bien. De toute fa�on, je nous voyais mal travailler ensemble.")
		SAY("J'arrive toujours � distinguer les passants des vrais runners. Passez une bonne journ�e.")
		ENDDIALOG()
	NODE(2)
		GENDERCHECK()
			if (result==1) then
				SAY("Bien, vous �tes celui que j'attends. Vous n'avez pas id�e du nombre de personnes qui viennent ici uniquement pour discuter. Allons-y : plus t�t dans la journ�e, Tangent a localis� un individu dans %NPC_WORLD(1). Un individu que nous pensions mort. Et en plus, il a chang� de nom : il s'appelle maintenant %NPC_NAME(1). Nos services pensent qu'il a pay� un hacker pour effectuer la modification, mais nous sommes certains qu'il s'agit bien de notre cible. Ce que je vous demande, c'est de tuer cette cible � nouveau. Et surtout, discr�tement. Compris ?")
				SAY("Oui, je suis votre contact en effet. Tangent m'a demand� de vous transmettre un nom et un lieu : %NPC_NAME(1), probablement � %NPC_WORLD(1). A traiter de toute urgence. Allez-y, identifiez la cible, faites ce que vous savez faire de mieux, et revenez. Et si � votre retour je m'aper�ois que quelqu'un vous suit, je n'existe pas.")
				SAY("Ah, j'imagine que vous �tes le runner que j'attends. Je suis l'agent espion qu'on vous a demand� de rencontrer. Voici de quoi il s'agit. Un ancien associ� de Tangent, du nom de %NPC_NAME(1), doit �tre �limin�. rendez-vous � %NPC_WORLD(1) et rep�rez votre cible. Puis faites ce pour quoi on vous paye... sans attirer l'attention. Revenez ensuite pour paiement.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
				SAY("Bien, vous �tes celle que j'attends. Vous n'avez pas id�e du nombre de personnes qui viennent ici uniquement pour discuter. Allons-y : plus t�t dans la journ�e, Tangent a localis� un individu dans %NPC_WORLD(1). Un individu que nous pensions mort. Et en plus, il a chang� de nom : il s'appelle maintenant %NPC_NAME(1). Nos services pensent qu'il a pay� un hacker pour effectuer la modification, mais nous sommes certains qu'il s'agit bien de notre cible. Ce que je vous demande, c'est de tuer cette cible � nouveau. Et surtout, discr�tement. Compris ?")
				SAY("Oui, je suis votre contact en effet. Tangent m'a demand� de vous transmettre un nom et un lieu : %NPC_NAME(1), probablement dans %NPC_WORLD(1). A traiter de toute urgence. Allez-y, identifiez la cible, faites ce que vous savez faire de mieux, et revenez. Et si � votre retour je m'aper�ois que vous �tes suivie, je n'existe pas.")
				SAY("Ah, j'imagine que vous �tes le runner que j'attends. Je suis l'agent espion qu'on vous a demand� de rencontrer. Voici de quoi il s'agit. Un ancien associ� de Tangent, du nom de %NPC_NAME(1), doit �tre �limin�. rendez-vous � %NPC_WORLD(1) et rep�rez votre cible. Puis faites ce pour quoi on vous paye... sans attirer l'attention. Revenez ensuite pour paiement.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG() 
			end
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Ecoutez, ne jouez pas � �a avec nous. Nous sommes une entreprise, mais ce n'est pas pour cela que nous sommes incapables de faire dispara�tre des gens. J'ajouterais m�me : au contraire. Alors finissez votre mission.")
				SAY("Je vous ai dit tout ce que vous aviez besoin de savoir. Maintenant, terminez votre mission avant que je d�cide de trouver quelqu'un pour vous remplacer.")
				SAY("Ecoutez, le principe de ce genre de missions, c'est d'�tre discret ; Et j'appr�cierais donc que vous fassiez votre travail et que vous ne posiez pas de questions.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Je dois dire que j'appr�cie votre travail, monsieur. Vous avez un avenir chez Tangent, je pense. Et faites-moi confiance, vous pouvez gagner gros. Mais occupons-nous en premier lieu de ce travail, si vous le voulez bien. Nous avons parl� de %REWARD_MONEY() cr�dits, c'est bien �a ? Ils ont �t� transf�r�s sur votre compte. Passez une bonne journ�e.")
						SAY("Excellent travail, nos sources nos ont communiqu� le succ�s de votre op�ration. Voici vos %REWARD_MONEY() cr�dits, vous les avez bien m�rit�s. Revenez chez Tangent quand vous voulez, soyez certain qu'on aura quelque chose � vous proposer.")
SAY("Beau travail, monsieur. Et faites-moi confiance, nous avons nos sources. C'est un des principes de l'entreprise : toujours superviser. Je viens de transf�rer les %REWARD_MONEY() cr�dits convenus sur votre compte. Restez en contact avec nous pour de futurs contrats. Nous n'organisons pas ce genre de mission aussi souvent que les autres entreprises, mais nous pourrions certainement avoir besoin de votre aide prochainement.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Je dois dire que j'appr�cie votre travail, madame. Vous avez un avenir chez Tangent, je pense. Et faites-moi confiance, vous  pouvez gagner gros. Mais occupons-nous en premier lieu de ce travail, si vous le voulez bien. Nous avons parl� de %REWARD_MONEY() cr�dits, c'est bien �a ? Ils ont �t� transf�r�s sur votre compte. Passez une bonne journ�e.")
						SAY("Excellent travail, nos sources nos ont communiqu� le succ�s de votre op�ration. Voici vos %REWARD_MONEY() cr�dits, vous les avez bien m�rit�s. Revenez chez Tangent quand vous voulez, soyez certaine qu'on aura quelque chose � vous proposer.")
SAY("Beau travail, madame. Et faites-moi confiance, nous avons nos sources. C'est un des principes de l'entreprise : toujours superviser. Je viens de transf�rer les %REWARD_MONEY() cr�dits convenus sur votre compte. Restez en contact avec nous pour de futurs contrats. Nous n'organisons pas ce genre de mission aussi souvent que les autres entreprises, mais nous pourrions certainement avoir besoin de votre aide prochainement.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
