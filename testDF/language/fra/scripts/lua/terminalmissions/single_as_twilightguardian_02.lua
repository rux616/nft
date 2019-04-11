function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Salut mec, je peux t'aider ?")
				SAY("Bonjour, je peux t'aider à quelque chose ?")
				SAY("Le temps, c'est de l'argent, et c'est ce que je perds pendant que t'es là à me parler. Qu'est-ce que tu veux ?")
				SAY("Hmmm... t'as l'air d'être le runner que je cherche. Qu'est-ce que tu veux ?")
				SAY("Tu cherches quelque chose en particulier ? Des informations ?")
				SAY("Si tu cherches les emmerdes, j'ai quelque chose pour toi. Un très gros flingue. Mais si tu cherches des infos, je pourrai peut-être t'aider.")
				
				ANSWER("On m'a appelé pour un problème complexe que mes employeurs voulaient voir disparaître. Tu es mon contact, je pense ?",2)
				ANSWER("Des fois, on m'appelle pas pendant des jours, et puis c'est l'avalanche de coups de fil. C'est toi, pour l'opération de contrôle ?",2)
				ANSWER("Quelqu'un a un problème, il m'appelle, et il n'y a plus de problème. Vous êtes mon contact ?",2)
				ANSWER("Pardon, je confonds avec quelqu'un d'autre.",1)
				ANSWER("J'ai fait une erreur, tu n'es pas la personne que je cherche.",1)
				ANSWER("Oups, je pense que j'ai dû me perdre en route...",1)
			else
				SAY("Salut ma belle. Tu as besoin de quelque chose ?")
				SAY("Bonjour ma belle, je peux t'aider ?")
				SAY("Le temps, c'est de l'argent, et c'est ce que je perds pendant que t'es là à me parler. Qu'est-ce que tu veux ?")
				SAY("Hmmm... t'as l'air d'être le runner que je cherche. Qu'est-ce que tu veux ?")
				SAY("Tu cherches quelque chose en particulier, ma belle ?")
				SAY("Si tu cherches les emmerdes, j'ai quelque chose pour toi. Un très gros flingue. Mais si tu cherches des infos, je pourrai peut-être t'aider.")
				
				ANSWER("On m'a appelée pour un problème complexe que mes employeurs voulaient voir disparaître. Tu es mon contact, je pense ?",2)
				ANSWER("Des fois, on m'appelle pas pendant des jours, et puis c'est l'avalanche de coups de fil. C'est toi, pour l'opération de contrôle ?",2)
				ANSWER("Quelqu'un a un problème, il m'appelle, et il n'y a plus de problème. Vous êtes mon contact ?",2)
				ANSWER("Pardon, je confonds avec quelqu'un d'autre.",1)
				ANSWER("J'ai fait une erreur, tu n'es pas la personne que je cherche.",1)
				ANSWER("Oups, je pense que j'ai dû me perdre en route...",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Heureusement que je sois resté dans le général en attendant que tu confirmes, mec, sinon ça aurait pu mal se passer pour toi.")
SAY("T'as pas l'air d'avoir l'expérience de ce genre de mission.")
				SAY("Fais attention à qui tu parles, mec. Si t'étais en pleine mission, tu te serais retrouvé directement dans un DupliGene sans comprendre ce qui s'est passé.")
				ENDDIALOG()
			else
				SAY("Heureusement que je sois resté dans le général en attendant que tu confirmes, ma belle, sinon ça aurait pu mal se passer pour toi.")
SAY("T'as pas l'air d'avoir l'expérience de ce genre de mission.")
				SAY("Fais attention à qui tu parles, ma belle. Si t'étais en pleine mission, tu te serais retrouvée directement dans un DupliGene sans comprendre ce qui s'est passé.")
				ENDDIALOG()
			end
	NODE(2)
		SAY("Oui, c'est moi ton contact. Bon, voilà ce qu'on m'a donné pour toi. Dernièrement, les Gardiens ont eu un sérieux problème à %NPC_WORLD(1). Ces perturbations ont empêché certaines opérations de se dérouler normalement, et nous avons été obligés de les suspendre. Toutes ces perturbations ont un point commun : %NPC_NAME(1). Il faut nous en occuper rapidement, ou bien tous nos agents de %NPC_WORLD(1) sont en danger. Va t'occuper de la cible, et reviens ici. Fais-moi confiance, runner, c'est une mission qui va rapporter.")
		SAY("Oui, j'attends un runner. Plus tôt dans la journée, j'ai eu un message. Je te passerai les détails, ce qui est important c'est que tu t'occupes de %NPC_NAME(1). La dernière localisation connue de la cible est %NPC_WORLD(1). C'est une opération ultrasecrète, les autres membres ne peuvent pas t'aider. Il n'y aura que toi sur le coup. Occupe-toi de ta cible vite fait, et sans faire de vagues, et reviens me voir. J'ai des crédits qui t'attendent ici. Bonne chance.")
		SAY("Bien, tu sais comment ça fonctionne. J'ai reçu un message me disant de rencontrer un runner ici et de lui donner des infos. J'imagine que c'est toi, le runner en question. La cible de cette opération s'appelle %NPC_NAME(1), et les derniers rapports la localisent dans %NPC_WORLD(1). Tu devrais commencer par chercher là-bas. Quand tu as résolu le problème, reviens et je te paierai pour le service rendu.")
		SAY("Ouaip, c'est bien moi. Le dossier que j'ai là est brûlant. Il semble qu'un individu du nom de %NPC_NAME(1) ait causé quelques problèmes à des gens haut placés dans l'organisation. Il va y avoir une réunion à %NPC_WORLD(1), mais t'es celui qui va offrir le spectacle pour tout le monde. Plombe la cible et reviens ici prendre tes crédits.")
		SAY("C'est moi qui m'occuperai de toi pendant cette opération, ce qui veut tout simplement dire que je te fournirai les informations nécessaires. Le reste du temps, il n'y aura que toi. La cible s'appelle %NPC_NAME(1). La raison pour laquelle tu fais cela ne t'intéresse pas. Moins tu poses de questions, mieux c'est. J'ai mis quelques informateurs sur l'affaire et j'ai localisé la cible dans %NPC_WORLD(1). Va faire un tour là-bas, attends d'avoir un contact visuel, et plombe ta cible quand il n'y a personne autour. Souviens-toi de faire ça discrètement. Et lorsque tu as terminé, reviens ici pour qu'on parle des aspects financiers.")
		SAY("C'est bien moi, runner. T'as tout compris. Un des informateurs des Gardiens m'a envoyé ici avec des informations pour vous. Votre cible s'appelle %NPC_NAME(1). Cet individu constitue, comment dire... une épine dans le pied des Gardiens, et ce depuis un bout de temps. Mais on nous a récemment signalé la présence de la cible dans %NPC_WORLD(1). Votre mission est de partir en reconnaissance, de confirmer la cible, puis de la plomber. Compris ? Après, revenez ici et on s'occupera des aspects financiers.")
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				GENDERCHECK()
					if (result==1) then
						SAY("Ecoute, mec, je peux pas t'en dire plus. Maintenant, ça dépend plus que de toi.")
						SAY("Désolé, l'ami, mais j'en dirai pas plus. Maintenant, ça dépend plus que de toi.")
						SAY("Runner , il y a une chose que tu dois apprendre dans ce métier : quand tu poses trop de questions, tu obtiens trop de réponses. Et quand tu connais trop de réponses, tu deviens une cible.")
					else
						SAY("Ecoute, ma belle, je peux pas t'en dire plus. Maintenant, ça dépend plus que de toi.")
						SAY("Désolé, l'amie, mais j'en dirai pas plus. Maintenant, ça dépend plus que de toi.")
						SAY("Runner , il y a une chose que tu dois apprendre dans ce métier : quand tu poses trop de questions, tu obtiens trop de réponses. Et quand tu connais trop de réponses, tu deviens une cible.")
					end
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Excellent, on vient juste de me confirmer que la cible avait été abattue. Voilà tes %REWARD_MONEY() crédits, l'ami, tu t'en es bien sorti, et les Gardiens ont besoin de gens comme toi. Pense à ton terminal si l'envie te reprend de travailler pour nous.")
						SAY("Nos hackers ont accédé à la base de données des DupliGenes et ont déterminé que les fonctions vitales de %NPC_NAME(1) sont passées à zéro il y a quelques minutes. Du travail de premier choix, l'ami ! On a transféré %REWARD_MONEY() crédits sur ton compte, avec ce que tu viens de faire tu auras ta place ici quand tu reviendras.")
						SAY("Beau travail, l'ami. Un de nos agents a même pu prendre une vidéo de la cible en direct. Tu as bien mérité tes %REWARD_MONEY() crédits. J'ai mis un bon commentaire dans ton dossier, lorsque tu reviendras on se souviendra de toi.")
						SAY("Ah, déjà de retour ? Non, t'inquiète pas, j'ai eu confirmation il y a quelques minutes que tu avais bien fait ton travail. Voici ta récompense, %REWARD_MONEY() crédits. Maintenant, si tu veux bien m'excuser, j'ai d'autres runners qui attendent.")
						SAY("Ha! Ils ont été surpris, dans %NPC_WORLD(1), j'imagine, après ce que t'as fait à %NPC_NAME(1). Les Gardiens t'ont versé la somme de %REWARD_MONEY() crédits. Quand t'auras tout dépensé, pense à revenir, on devrait pouvoir te trouver autre chose.")
						SAY("On vient d'avoir le rapport d'un agent qui se trouvait dans le secteur. Apparemment, tu t'en es vraiment bien tiré. Continue comme ça, et on pourrait avoir un avenir pour toi. Tiens, voilà les %REWARD_MONEY() crédits promis.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Excellent, on vient juste de me confirmer que la cible avait été abattue. Voilà tes %REWARD_MONEY() crédits, ma belle, tu t'en es bien sortie, et les Gardiens ont besoin de gens comme toi. Pense à ton terminal si l'envie te reprend de travailler pour nous.")
						SAY("Nos hackers ont accédé à la base de données des DupliGenes et ont déterminé que les fonctions vitales de %NPC_NAME(1) sont passées à zéro il y a quelques minutes. Du travail de premier choix, jeune fille ! On a transféré %REWARD_MONEY() crédits sur ton compte, avec ce que tu viens de faire tu auras ta place ici quand tu reviendras.")
						SAY("Beau travail, ma belle. Un de nos agents a même pu me transmettre en direct une vidéo de la cible. Tu as bien mérité tes %REWARD_MONEY() crédits. J'ai mis un bon commentaire dans ton dossier, lorsque tu reviendras on se souviendra de toi.")
						SAY("Ah, déjà de retour ? Non, t'inquiète pas, j'ai eu confirmation il y a quelques minutes que tu avait bien fait ton travail. Voici ta récompense, %REWARD_MONEY() crédits. Maintenant, si tu veux bien m'excuser, j'ai d'autres runners qui attendent.")
						SAY("Ha! Ils ont été surpris, dans %NPC_WORLD(1), j'imagine, après ce que t'as fait à %NPC_NAME(1). Les Gardiens t'ont versé la somme de %REWARD_MONEY() crédits. Quand t'auras tout dépensé, pense à revenir, on devrait pouvoir te trouver autre chose.")
						SAY("On vient d'avoir le rapport d'un agent qui se trouvait dans le secteur. Apparemment, tu t'en es vraiment bien tirée. Continue comme ça, et on pourrait avoir un avenir pour toi. Tiens, voilà les %REWARD_MONEY() crédits promis.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
