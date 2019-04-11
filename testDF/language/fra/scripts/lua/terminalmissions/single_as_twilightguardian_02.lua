function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
				SAY("Salut mec, je peux t'aider ?")
				SAY("Bonjour, je peux t'aider � quelque chose ?")
				SAY("Le temps, c'est de l'argent, et c'est ce que je perds pendant que t'es l� � me parler. Qu'est-ce que tu veux ?")
				SAY("Hmmm... t'as l'air d'�tre le runner que je cherche. Qu'est-ce que tu veux ?")
				SAY("Tu cherches quelque chose en particulier ? Des informations ?")
				SAY("Si tu cherches les emmerdes, j'ai quelque chose pour toi. Un tr�s gros flingue. Mais si tu cherches des infos, je pourrai peut-�tre t'aider.")
				
				ANSWER("On m'a appel� pour un probl�me complexe que mes employeurs voulaient voir dispara�tre. Tu es mon contact, je pense ?",2)
				ANSWER("Des fois, on m'appelle pas pendant des jours, et puis c'est l'avalanche de coups de fil. C'est toi, pour l'op�ration de contr�le ?",2)
				ANSWER("Quelqu'un a un probl�me, il m'appelle, et il n'y a plus de probl�me. Vous �tes mon contact ?",2)
				ANSWER("Pardon, je confonds avec quelqu'un d'autre.",1)
				ANSWER("J'ai fait une erreur, tu n'es pas la personne que je cherche.",1)
				ANSWER("Oups, je pense que j'ai d� me perdre en route...",1)
			else
				SAY("Salut ma belle. Tu as besoin de quelque chose ?")
				SAY("Bonjour ma belle, je peux t'aider ?")
				SAY("Le temps, c'est de l'argent, et c'est ce que je perds pendant que t'es l� � me parler. Qu'est-ce que tu veux ?")
				SAY("Hmmm... t'as l'air d'�tre le runner que je cherche. Qu'est-ce que tu veux ?")
				SAY("Tu cherches quelque chose en particulier, ma belle ?")
				SAY("Si tu cherches les emmerdes, j'ai quelque chose pour toi. Un tr�s gros flingue. Mais si tu cherches des infos, je pourrai peut-�tre t'aider.")
				
				ANSWER("On m'a appel�e pour un probl�me complexe que mes employeurs voulaient voir dispara�tre. Tu es mon contact, je pense ?",2)
				ANSWER("Des fois, on m'appelle pas pendant des jours, et puis c'est l'avalanche de coups de fil. C'est toi, pour l'op�ration de contr�le ?",2)
				ANSWER("Quelqu'un a un probl�me, il m'appelle, et il n'y a plus de probl�me. Vous �tes mon contact ?",2)
				ANSWER("Pardon, je confonds avec quelqu'un d'autre.",1)
				ANSWER("J'ai fait une erreur, tu n'es pas la personne que je cherche.",1)
				ANSWER("Oups, je pense que j'ai d� me perdre en route...",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Heureusement que je sois rest� dans le g�n�ral en attendant que tu confirmes, mec, sinon �a aurait pu mal se passer pour toi.")
SAY("T'as pas l'air d'avoir l'exp�rience de ce genre de mission.")
				SAY("Fais attention � qui tu parles, mec. Si t'�tais en pleine mission, tu te serais retrouv� directement dans un DupliGene sans comprendre ce qui s'est pass�.")
				ENDDIALOG()
			else
				SAY("Heureusement que je sois rest� dans le g�n�ral en attendant que tu confirmes, ma belle, sinon �a aurait pu mal se passer pour toi.")
SAY("T'as pas l'air d'avoir l'exp�rience de ce genre de mission.")
				SAY("Fais attention � qui tu parles, ma belle. Si t'�tais en pleine mission, tu te serais retrouv�e directement dans un DupliGene sans comprendre ce qui s'est pass�.")
				ENDDIALOG()
			end
	NODE(2)
		SAY("Oui, c'est moi ton contact. Bon, voil� ce qu'on m'a donn� pour toi. Derni�rement, les Gardiens ont eu un s�rieux probl�me � %NPC_WORLD(1). Ces perturbations ont emp�ch� certaines op�rations de se d�rouler normalement, et nous avons �t� oblig�s de les suspendre. Toutes ces perturbations ont un point commun : %NPC_NAME(1). Il faut nous en occuper rapidement, ou bien tous nos agents de %NPC_WORLD(1) sont en danger. Va t'occuper de la cible, et reviens ici. Fais-moi confiance, runner, c'est une mission qui va rapporter.")
		SAY("Oui, j'attends un runner. Plus t�t dans la journ�e, j'ai eu un message. Je te passerai les d�tails, ce qui est important c'est que tu t'occupes de %NPC_NAME(1). La derni�re localisation connue de la cible est %NPC_WORLD(1). C'est une op�ration ultrasecr�te, les autres membres ne peuvent pas t'aider. Il n'y aura que toi sur le coup. Occupe-toi de ta cible vite fait, et sans faire de vagues, et reviens me voir. J'ai des cr�dits qui t'attendent ici. Bonne chance.")
		SAY("Bien, tu sais comment �a fonctionne. J'ai re�u un message me disant de rencontrer un runner ici et de lui donner des infos. J'imagine que c'est toi, le runner en question. La cible de cette op�ration s'appelle %NPC_NAME(1), et les derniers rapports la localisent dans %NPC_WORLD(1). Tu devrais commencer par chercher l�-bas. Quand tu as r�solu le probl�me, reviens et je te paierai pour le service rendu.")
		SAY("Ouaip, c'est bien moi. Le dossier que j'ai l� est br�lant. Il semble qu'un individu du nom de %NPC_NAME(1) ait caus� quelques probl�mes � des gens haut plac�s dans l'organisation. Il va y avoir une r�union � %NPC_WORLD(1), mais t'es celui qui va offrir le spectacle pour tout le monde. Plombe la cible et reviens ici prendre tes cr�dits.")
		SAY("C'est moi qui m'occuperai de toi pendant cette op�ration, ce qui veut tout simplement dire que je te fournirai les informations n�cessaires. Le reste du temps, il n'y aura que toi. La cible s'appelle %NPC_NAME(1). La raison pour laquelle tu fais cela ne t'int�resse pas. Moins tu poses de questions, mieux c'est. J'ai mis quelques informateurs sur l'affaire et j'ai localis� la cible dans %NPC_WORLD(1). Va faire un tour l�-bas, attends d'avoir un contact visuel, et plombe ta cible quand il n'y a personne autour. Souviens-toi de faire �a discr�tement. Et lorsque tu as termin�, reviens ici pour qu'on parle des aspects financiers.")
		SAY("C'est bien moi, runner. T'as tout compris. Un des informateurs des Gardiens m'a envoy� ici avec des informations pour vous. Votre cible s'appelle %NPC_NAME(1). Cet individu constitue, comment dire... une �pine dans le pied des Gardiens, et ce depuis un bout de temps. Mais on nous a r�cemment signal� la pr�sence de la cible dans %NPC_WORLD(1). Votre mission est de partir en reconnaissance, de confirmer la cible, puis de la plomber. Compris ? Apr�s, revenez ici et on s'occupera des aspects financiers.")
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				GENDERCHECK()
					if (result==1) then
						SAY("Ecoute, mec, je peux pas t'en dire plus. Maintenant, �a d�pend plus que de toi.")
						SAY("D�sol�, l'ami, mais j'en dirai pas plus. Maintenant, �a d�pend plus que de toi.")
						SAY("Runner , il y a une chose que tu dois apprendre dans ce m�tier : quand tu poses trop de questions, tu obtiens trop de r�ponses. Et quand tu connais trop de r�ponses, tu deviens une cible.")
					else
						SAY("Ecoute, ma belle, je peux pas t'en dire plus. Maintenant, �a d�pend plus que de toi.")
						SAY("D�sol�, l'amie, mais j'en dirai pas plus. Maintenant, �a d�pend plus que de toi.")
						SAY("Runner , il y a une chose que tu dois apprendre dans ce m�tier : quand tu poses trop de questions, tu obtiens trop de r�ponses. Et quand tu connais trop de r�ponses, tu deviens une cible.")
					end
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Excellent, on vient juste de me confirmer que la cible avait �t� abattue. Voil� tes %REWARD_MONEY() cr�dits, l'ami, tu t'en es bien sorti, et les Gardiens ont besoin de gens comme toi. Pense � ton terminal si l'envie te reprend de travailler pour nous.")
						SAY("Nos hackers ont acc�d� � la base de donn�es des DupliGenes et ont d�termin� que les fonctions vitales de %NPC_NAME(1) sont pass�es � z�ro il y a quelques minutes. Du travail de premier choix, l'ami ! On a transf�r� %REWARD_MONEY() cr�dits sur ton compte, avec ce que tu viens de faire tu auras ta place ici quand tu reviendras.")
						SAY("Beau travail, l'ami. Un de nos agents a m�me pu prendre une vid�o de la cible en direct. Tu as bien m�rit� tes %REWARD_MONEY() cr�dits. J'ai mis un bon commentaire dans ton dossier, lorsque tu reviendras on se souviendra de toi.")
						SAY("Ah, d�j� de retour ? Non, t'inqui�te pas, j'ai eu confirmation il y a quelques minutes que tu avais bien fait ton travail. Voici ta r�compense, %REWARD_MONEY() cr�dits. Maintenant, si tu veux bien m'excuser, j'ai d'autres runners qui attendent.")
						SAY("Ha! Ils ont �t� surpris, dans %NPC_WORLD(1), j'imagine, apr�s ce que t'as fait � %NPC_NAME(1). Les Gardiens t'ont vers� la somme de %REWARD_MONEY() cr�dits. Quand t'auras tout d�pens�, pense � revenir, on devrait pouvoir te trouver autre chose.")
						SAY("On vient d'avoir le rapport d'un agent qui se trouvait dans le secteur. Apparemment, tu t'en es vraiment bien tir�. Continue comme �a, et on pourrait avoir un avenir pour toi. Tiens, voil� les %REWARD_MONEY() cr�dits promis.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Excellent, on vient juste de me confirmer que la cible avait �t� abattue. Voil� tes %REWARD_MONEY() cr�dits, ma belle, tu t'en es bien sortie, et les Gardiens ont besoin de gens comme toi. Pense � ton terminal si l'envie te reprend de travailler pour nous.")
						SAY("Nos hackers ont acc�d� � la base de donn�es des DupliGenes et ont d�termin� que les fonctions vitales de %NPC_NAME(1) sont pass�es � z�ro il y a quelques minutes. Du travail de premier choix, jeune fille ! On a transf�r� %REWARD_MONEY() cr�dits sur ton compte, avec ce que tu viens de faire tu auras ta place ici quand tu reviendras.")
						SAY("Beau travail, ma belle. Un de nos agents a m�me pu me transmettre en direct une vid�o de la cible. Tu as bien m�rit� tes %REWARD_MONEY() cr�dits. J'ai mis un bon commentaire dans ton dossier, lorsque tu reviendras on se souviendra de toi.")
						SAY("Ah, d�j� de retour ? Non, t'inqui�te pas, j'ai eu confirmation il y a quelques minutes que tu avait bien fait ton travail. Voici ta r�compense, %REWARD_MONEY() cr�dits. Maintenant, si tu veux bien m'excuser, j'ai d'autres runners qui attendent.")
						SAY("Ha! Ils ont �t� surpris, dans %NPC_WORLD(1), j'imagine, apr�s ce que t'as fait � %NPC_NAME(1). Les Gardiens t'ont vers� la somme de %REWARD_MONEY() cr�dits. Quand t'auras tout d�pens�, pense � revenir, on devrait pouvoir te trouver autre chose.")
						SAY("On vient d'avoir le rapport d'un agent qui se trouvait dans le secteur. Apparemment, tu t'en es vraiment bien tir�e. Continue comme �a, et on pourrait avoir un avenir pour toi. Tiens, voil� les %REWARD_MONEY() cr�dits promis.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
