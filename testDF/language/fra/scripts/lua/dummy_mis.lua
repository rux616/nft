function DIALOG()


	NODE(0)

		SAY("D�sol�, il n'y a pas de travail pour vous actuellement.")
		SAY("Je ne peux pas vous proposer de travail pour le moment.")
		SAY("Pour le moment, je n'ai rien � vous offrir!")
		SAY("En temps normal, on a beaucoup de travail � proposer. Mais l�...")
		SAY("Vous ne voyez pas que je suis occup�? Il n'y a pas de travail ici, allez voir ailleurs.")

		ANSWER("Mais j'ai besoin d'argent... Il n'y a vraiment rien � faire ici?",2)
		ANSWER("J'aimerais prouver ma loyaut� envers la faction. Il n'y a vraiment rien que je puisse faire?",2)
		ANSWER("Pas de travail du tout? Je ne demande pas des sommes folles, je veux seulement m'int�grer...",2)
		ANSWER("C'est dommage, je voulais vous montrer ce que je savais faire. Vous �tes certain qu'il n'y a absolument rien � faire du tout, m�me pas le plus petit job?",2)

	NODE(2)
		SAY("Vous ne m'avez pas entendu? Je vous ai dit qu'il n'y avait rien � faire pour l'instant. Revenez plus tard.")
		SAY("Si vous continuez, vous n'aurez rien du tout. Revenez plus tard, vous aurez peut-�tre plus de chance.")
		SAY("Excusez-moi, mais pour l'instant je ne peux rien faire du tout. Mais j'appr�cie votre motivation. Nous serons heureux de vous embaucher si vous revenez un peu plus tard.")
		SAY("Je dois attendre des informations. Actuellement, je ne peux absolument rien faire pour vous.")
		SAY("Allons! Vous n'avez pas quelqu'un d'autre � ennuyer? Il n'y a pas de travail ici. Peut-�tre plus tard.")
		SAY("Bien, laissez votre nom et votre adresse... On vous pr�viendra si on a quelque chose pour vous. mais ne nous appelez pas. C'est nous qui vous appellerons. C'est promis.")
		
		ENDDIALOG()

end