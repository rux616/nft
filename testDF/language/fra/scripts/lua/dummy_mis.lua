function DIALOG()


	NODE(0)

		SAY("Désolé, il n'y a pas de travail pour vous actuellement.")
		SAY("Je ne peux pas vous proposer de travail pour le moment.")
		SAY("Pour le moment, je n'ai rien à vous offrir!")
		SAY("En temps normal, on a beaucoup de travail à proposer. Mais là...")
		SAY("Vous ne voyez pas que je suis occupé? Il n'y a pas de travail ici, allez voir ailleurs.")

		ANSWER("Mais j'ai besoin d'argent... Il n'y a vraiment rien à faire ici?",2)
		ANSWER("J'aimerais prouver ma loyauté envers la faction. Il n'y a vraiment rien que je puisse faire?",2)
		ANSWER("Pas de travail du tout? Je ne demande pas des sommes folles, je veux seulement m'intégrer...",2)
		ANSWER("C'est dommage, je voulais vous montrer ce que je savais faire. Vous êtes certain qu'il n'y a absolument rien à faire du tout, même pas le plus petit job?",2)

	NODE(2)
		SAY("Vous ne m'avez pas entendu? Je vous ai dit qu'il n'y avait rien à faire pour l'instant. Revenez plus tard.")
		SAY("Si vous continuez, vous n'aurez rien du tout. Revenez plus tard, vous aurez peut-être plus de chance.")
		SAY("Excusez-moi, mais pour l'instant je ne peux rien faire du tout. Mais j'apprécie votre motivation. Nous serons heureux de vous embaucher si vous revenez un peu plus tard.")
		SAY("Je dois attendre des informations. Actuellement, je ne peux absolument rien faire pour vous.")
		SAY("Allons! Vous n'avez pas quelqu'un d'autre à ennuyer? Il n'y a pas de travail ici. Peut-être plus tard.")
		SAY("Bien, laissez votre nom et votre adresse... On vous préviendra si on a quelque chose pour vous. mais ne nous appelez pas. C'est nous qui vous appellerons. C'est promis.")
		
		ENDDIALOG()

end