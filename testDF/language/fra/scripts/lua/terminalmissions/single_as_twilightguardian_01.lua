function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Hmmm... T'es pas le gars que j'attends, toi. Qu'est-ce que tu veux ?")
				SAY("Je peux t'aider à quelque chose, étranger ?")
				SAY("Ecoute, je suis occupé, moi. Tu viens faire quoi ici ?")
				SAY("Et encore une nouvelle tête... Attends, t'es ici pour quoi ?")
				SAY("Salut mon gars, je peux t'aider ? Besoin d'infos, peut-être ?.")
				SAY("Je peux t'aider à quelque chose ? Peut-être que si tu recherches une utilité pour ton flingue....")
				
				ANSWER("J'ai eu un message par un ami commun. Avec qui est-ce que je danse ?",2)
				ANSWER("Je veux des renseignements sur quelqu'un qui fait chier un ami pour une histoire de fric. Tu peux m'aider ?",2)
				ANSWER("On m'a contacté pour utiliser mes 'qualifications'. Je viens pour des infos sur ma cible.",2)
				ANSWER("T'as dû te tromper de gars.",1)
				ANSWER("Je pense que tu t'es trompé de personne.",1)
				ANSWER("J'ai dû me perdre quelque part...",1)
			else
				SAY("Euh... T'as pas l'air d'être celle que j'attends. Tu cherches quoi ?.")
				SAY("Je peux t'aider, ma belle ?")
				SAY("Ecoute, je suis occupé, moi. Tu viens faire quoi ici ?")
				SAY("Et encore une nouvelle tête... Attends, t'es ici pour quoi ?")
				SAY("Salut ma belle, je peux t'aider ? Besoin d'infos, peut-être ?.")
				SAY("Je peux t'aider à quelque chose ? Peut-être que si tu recherches une utilité pour ton flingue....")
				
				ANSWER("J'ai eu un message par un ami commun. Avec qui est-ce que je danse ?",2)
				ANSWER("Je veux des renseignements sur quelqu'un qui fait chier un ami pour une histoire de fric. Tu peux m'aider ?.",2)
				ANSWER("On m'a contacté pour utiliser mes 'qualifications'. Je viens pour des infos sur ma cible.",2)
				ANSWER("T'as dû te tromper de gars.",1)
				ANSWER("Je pense que tu t'es trompé de personne.",1)
				ANSWER("J'ai dû me perdre quelque part...",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Bon, ben c'est pas de chance, mec. A plus tard, alors.")
				SAY("Ouais, je comprends. T'as pas cette lueur dans les yeux, comme la plupart.")
				SAY("D'accord, mais fais un peu plus attention à qui tu parles la prochaine fois. Il y a des gens nettement moins patients que moi, tu sais.")
				ENDDIALOG()
			else
				SAY("Bon, ben c'est pas de chance, ma belle. A plus tard, alors.")
				SAY("Ouais, je comprends. T'as pas cette lueur dans les yeux, comme la plupart.")
				SAY("D'accord, mais fais un peu plus attention à qui tu parles la prochaine fois. Il y a des gens nettement moins patients que moi, tu sais.")
				ENDDIALOG()
			end
	NODE(2)
		GENDERCHECK()
			if (result==1) then
				SAY("Excellent, alors t'es bien le gars que j'attends. J'ai un nom et un endroit pour toi, c'est tout. Le reste, ça dépend de toi, je pense que tu sais à quoi t'attendre. La cible s'appelle %NPC_NAME(1), tu devrais la trouver dans %NPC_WORLD(1), selon nos dernières sources. Fais ton travail en silence, et reviens me voir pour un compte-rendu.")
				SAY("J'ai des infos, et j'ai l'impression que tu as ce qu'il faut pour ce job. Sur mon dossier, on parle de %NPC_NAME(1), à %NPC_WORLD(1). Méthode standard : en silence. Reviens après pour compte-rendu. Et, mon pote, ce serait pas une bonne idée de chercher à comprendre pourquoi tu fais ça, je t'assure. Souviens-toi  de ce que je t'ai dit.")
				SAY("Bien, tu m'as l'air d'un pro. On a eu pas mal de problèmes récemment, avec des runners qui connaissaient pas le sens du mot 'discrétion'. Ta cible s'appelle %NPC_NAME(1), elle devrait se trouver dans %NPC_WORLD(1) sauf si quelque chose a changé depuis la dernière fois. Fais ça discrètement. Quand tu as terminé, reviens pour un compte-rendu. Souviens-toi, c'est pas le genre de job dont tu te ventes au Club V, compris ?")
				SAY("Ca, c'est bien. Ca fait longtemps que j'attends un bon runner. J'ai reçu un message il y a une heure, avec seulement deux lignes : '%NPC_NAME(1)' et '%NPC_WORLD(1)'. Je pense que tu sais ce que tu dois faire avec ces infos. Un petit conseil tout de même : les chefs n'aiment pas qu'on parle dans la presse des contrats qu'ils font exécuter, alors plus t'es discret, mieux c'est. Reviens me voir quand c'est fini.")
				SAY("Tu dois être le gars dont on m'a parlé dans le message que j'ai reçu. Bien, la cible s'appelle %NPC_NAME(1), et elle devrait se trouver à %NPC_WORLD(1). Pour ce genre d'opération, pense à garder profil bas, c'est plus facile pour tout le monde. Y compris pour toi. Quand tu as confirmation que ta cible se relèvera plus jamais, tu reviens me voir pour un compte-rendu.")
				SAY("OK, je comprends le message de ce matin maintenant. J'en avais pas reçu depuis un long moment, et je pensais qu'on avait choisi des options plus subtiles. Ben faut croire que non, hein ? Ta cible s'appelle %NPC_NAME(1), et selon nos rapports tu devrais commencer par fouiller dans %NPC_WORLD(1). Après, quand tu as trouvé sa trace et que tu lui as réglé son compte, reviens ici pour un compte-rendu. Pas la peine de faire du bruit, je serai au courant de toute façon.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
			else
				SAY("Excellent, alors t'es bien la fille que j'attends. J'ai un nom et un endroit pour toi, c'est tout. Le reste, ça dépend de toi, je pense que tu sais à quoi t'attendre. La cible s'appelle %NPC_NAME(1), tu devrais la trouver dans %NPC_WORLD(1), selon nos dernières sources. Fais ton travail en silence, et reviens me voir pour un compte-rendu.")
				SAY("J'ai des infos, et j'ai l'impression que tu as tout ce qu'il faut pour ce job. Sur mon dossier, on parle de %NPC_NAME(1) et de %NPC_WORLD(1). Méthode standard : en silence. Reviens après pour compte-rendu. Et, ma belle, ce serait pas une bonne idée de chercher à comprendre pourquoi tu fais ça, je t'assure. Souviens-toi  de ce que je t'ai dit.")
				SAY("Bien, tu m'as l'air d'une pro. On a eu pas mal de problèmes récemment, avec des runners qui connaissaient pas le sens du mot 'discrétion'. Ta cible s'appelle %NPC_NAME(1), elle devrait se trouver à %NPC_WORLD(1) sauf si quelque chose a changé depuis la dernière fois. Fais ça discrètement. Quand tu as terminé, reviens pour un compte-rendu. Souviens-toi, c'est pas le genre de job dont tu te ventes au Club V, compris ?")
				SAY("Ca, c'est bien. Ca fait longtemps que j'attends un bon runner. J'ai reçu un message il y a une heure, avec seulement deux lignes : '%NPC_NAME(1)' et '%NPC_WORLD(1)'. Je pense que tu sais ce que tu dois faire avec ces infos. Un petit conseil tout de même : les chefs n'aiment pas qu'on parle dans la presse des contrats qu'ils font exécuter, alors plus t'es discrète, mieux c'est. Reviens me voir quand c'est fini.")
				SAY("Tu dois être la fille dont on m'a parlé dans le message que j'ai reçu. Bien, la cible s'appelle %NPC_NAME(1), et elle devrait se trouver dans %NPC_WORLD(1). Pour ce genre d'opération, pense à garder profil bas, c'est plus facile pour tout le monde. Y compris pour toi. Quand tu as confirmation que ta cible se relèvera plus jamais, reviens me voir pour un compte-rendu.")
				SAY("OK, je comprends le message de ce matin maintenant. J'en avais pas reçu depuis un long moment, et je pensais qu'on avait choisi des options plus subtiles. Ben faut croire que non, hein ? Ta cible s'appelle %NPC_NAME(1), et selon nos rapports tu devrais commencer par fouiller dans %NPC_WORLD(1). Après, quand tu as trouvé sa trace et que tu lui as réglé son compte, reviens ici pour un compte-rendu. Pas la peine de faire du bruit, je serai au courant de toute façon.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG() 
			end
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("J'ai rien de plus à te dire.")
				SAY("Je t'ai déjà dit tout ce que je savais. Maintenant c'est à toi de jouer.")
				SAY("Tu poses des questions, et tu pourrais te retrouver avec des réponses. Et crois-moi, t'aimerais pas.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("T'as fini ? Bien. On a besoin de gens comme toi. %REWARD_MONEY() crédits ont été versés sur ton compte. Et si jamais t'as besoin de cash ou que tu commences à avoir une crampe au doigt, tu sais où tu dois aller. On aime bien conserver les gens de ton calibre.")
						SAY("Beau travail. Personne n'a encore parlé de l'opération dans la rue. T'as bien gagné tes %REWARD_MONEY() crédits. Si t'en veux encore, va vérifier ton terminal. Je pense que t'as beaucoup à apporter aux Gardiens, surtout quand je vois ce que tu sais faire.")
						SAY("Ah, te revoilà ! J'aimerais bien qu'ils soient tous des pros comme toi, ça m'aiderait. Voilà tes %REWARD_MONEY() crédits. Si tu veux un autre job, vérifie ton terminal de temps en temps. Les Gardiens ont toujours besoin de gens qui savent rester discrets.")
						SAY("Ca fait plaisir de te revoir. J'imagine que c'est la mission dont on a parlé... Ah, excellent. Bon, ta récompense, maintenant. Voilà %REWARD_MONEY() crédits. Reviens plus tard si tu veux un autre job. Je pense que les Gardiens ont besoin de gens qui savent s'y prendre.")
						SAY("Salut ! T'es le mec discret, c'est ça ? Bon travail, mon gars. Voilà tes %REWARD_MONEY() crédits. Pense à surveiller ton terminal de temps en temps, je pense qu'on te trouvera quelque chose à faire si tu veux.")
						SAY("Bien bien, je m'attendais à te revoir bientôt. On vient juste de me dire que tu avais réussi. Je pense que tu attends tes %REWARD_MONEY() crédits maintenant, hein ? Voilà, c'est fait. On a toujours besoin de gens discrets, alors reviens nous voir si tu as besoin d'un autre job, ok ?")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("T'as fini ? Bien. On a besoin de filles comme toi. %REWARD_MONEY() crédits ont été versés sur ton compte. Et si jamais t'as besoin de cash ou que tu commences à avoir une crampe au doigt, tu sais où tu dois aller. On aime bien conserver les gens de ton calibre.")
						SAY("Beau travail. Personne n'a encore parlé de l'opération dans la rue. T'as bien gagné tes %REWARD_MONEY() crédits. Si t'en veux encore, va vérifier ton terminal. Je pense que t'as beaucoup à apporter aux Gardiens, surtout quand je vois ce que tu sais faire.")
						SAY("Ah, te revoilà ! J'aimerais bien qu'ils soient tous des pros comme toi, ça m'aiderait. Voilà tes %REWARD_MONEY() crédits. Si tu veux un autre job, vérifie ton terminal de temps en temps. Les Gardiens ont toujours besoin de gens qui savent rester discrets.")
						SAY("Ca fait plaisir de te revoir. J'imagine que c'est la mission dont on a parlé... Ah, excellent. Bon, ta récompense, maintenant. Voilà %REWARD_MONEY() crédits. Reviens plus tard si tu veux un autre job. Je pense que les Gardiens ont besoin de gens qui savent s'y prendre.")
						SAY("Salut ! T'es la fille discrète, c'est ça ? Bon travail, ma belle. Voilà tes %REWARD_MONEY() crédits. Pense à surveiller ton terminal de temps en temps, je pense qu'on te trouvera quelque chose à faire si tu veux.")
						SAY("Bien bien, je m'attendais à te revoir bientôt. On vient juste de me dire que tu avais réussi. Je pense que tu attends tes %REWARD_MONEY() crédits maintenant, hein ? Voilà, c'est fait. On a toujours besoin de gens discrets, alors reviens nous voir si tu as besoin d'un autre job, ok ?")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
