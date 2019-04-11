function DIALOG()

	NODE(0)

		ALIGNMENT()

		if (result==0) then

			SAY("Je ne pense pas que nos employeurs respectifs appr�cieraient de nous voir parler ensemble. Je dois vous demander de partir.")

			ANSWER("Mais j'ai des questions, pouvez-vous y r�pondre?",12)
			ANSWER("Mon employeur, �a ne le d�rangerait pas de vous descendre, je pense.",3)
		end
		
		if (result==1) then

			SAY("Bonjour. Que puis-je faire pour vous?")
			SAY("Est-ce que je peux vous aider?")
			SAY("Vous cherchez quelque chose?")
			SAY("Bonjour, est-ce que je peux vous aider?")
			SAY("Besoin d'aide?")


			ANSWER("Merci, j'allais justement partir.",1)
			ANSWER("Laissez-moi tranquille.",1)
			ANSWER("Je cherche des informations...",2)
			ANSWER("J'ai quelques questions � vous poser...",2)
			ANSWER("Parlez-moi des Anges D�chus.",4)
			ANSWER("Voyons ce que vous avez dans le ventre, les Anges D�chus!",3)
		end
		if (result==2) then

			SAY("C'est toujours un plaisir de rencontrer un ami. En quoi est-ce que je peux vous aider?")
			SAY("Ravi de vous rencontrer, je peux vous aider?")
			SAY("Ravi de vous voir. Besoin de renseignements?")
			SAY("J'ai toujours du temps pour aider un ami. Qu'est-ce que je peux faire pour vous?")
			SAY("Ah, un ami. Vous avez besoin d'aide?")

			ANSWER("Merci, j'allais justement partir.",1)
			ANSWER("Laissez-moi tranquille.",1)
			ANSWER("Je cherche des informations...",2)
			ANSWER("J'ai quelques questions � vous poser...",2)
			ANSWER("Parlez-moi des Anges D�chus.",4)
		end
	NODE(1)

		SAY("Au revoir.")
		SAY("J'esp�re avoir pu vous aider.")
		SAY("Repassez me voir si vous avez d'autres questions.")
		SAY("Je serai l� si vous avez encore des questions.")

		ENDDIALOG()

	NODE(2)  -- General questions
		SAY("Je peux vous renseigner sur la plupart des questions concernant les Anges D�chus.")

		ANSWER("Qu'est-ce que vous pouvez me dire que les Anges D�chus?",4)
		ANSWER("Je cherche des informations sur les Anges D�chus.",4)

	NODE(3)
		SAY("La technologie est la solution de l'avenir, et vous ne comprenez pas �a. Je vous plains.")

		ATTACK()

	NODE(4)  -- Tech Haven general
		SAY("Nous sommes bas�s � Havre Tech, et nous g�rons notre propre ville tout en menant des recherches et d�veloppement de toutes sortes. Nous sommes une technocratie, et nous ne faisons pas partie de la juridiction de Neocron. Notre but principale est la connaissance.")


		ANSWER("Est-ce que les Anges D�chus produisent quelque chose?",5)
		ANSWER("Quel est le genre de production des Anges D�chus?",5)
		ANSWER("Qui est le chef des Anges D�chus?",6)
		ANSWER("Qui est � la t�te des Anges D�chus?",6)
		ANSWER("Comment et quand ont �t� cr��s les Anges D�chus?",7)
		ANSWER("Quand ont �t� fond�s les Anges D�chus?",7)
		ANSWER("Merci, mais je dois m'en aller.",1)

	NODE(5)  -- TH products
		SAY("Nous cr�ons toute une gamme d'appareils sp�cialis�s, mai notre but n'est pas le profit, et vous ne trouverez probablement nos productions qu'� Havre Tech.")

		ANSWER("Merci pour votre aide. Il faut que j'y aille, maintenant.",1)
		ANSWER("Merci. Mais j'ai d'autres questions.",8)

	Node(6)  -- Leader
		SAY("La responsable actuelle des Anges D�chus s'appelle Sylvia Bennet.")

		ANSWER("Merci pour votre aide. Il faut que j'y aille.",1)
		ANSWER("Merci. Mais j'ai d'autres questions.",9)

	NODE(7)  -- How/Where
		SAY("Les Anges D�chus ont �t� fond�s par un groupe de scientifiques sous la direction de Thomas Cooper. Ils ont lanc� la construction de Havre Tech en 2633 dans les Terres Br�l�es. C'est la date de fondation des Anges D�chus.")

		ANSWER("Pourquoi est-ce que vous avez quitt� Neocron?",11)
		ANSWER("Merci. Je peux vous poser d'autres questions?",10)
		ANSWER("Merci pour votre aide. Maintenant, il faut que je m'en aille.",1)

	NODE(8)  -- More questions 1
		SAY("Je serai ravi de r�pondre � vos questions.")
		SAY("Quelles sont vos autres questions?")
		SAY("Je serai ravi de r�pondre � toute autre question.")

		ANSWER("Qui est le chef des Anges D�chus?",6)
		ANSWER("Qui est � la t�te des Anges D�chus?",6)
		ANSWER("Comment et quand ont �t� cr��s les Anges D�chus?",7)
		ANSWER("Quand ont �t� fond�s les Anges D�chus?",7)
		ANSWER("Merci, mais je dois m'en aller.",1)

	NODE(9)  -- More questions 2
		SAY("Je serai ravi de r�pondre � vos questions.")
		SAY("Quelles sont vos autres questions?")
		SAY("Je serai ravi de r�pondre � toute autre question.")

		ANSWER("Est-ce que les Anges D�chus produisent quelque chose?",5)
		ANSWER("Quel est le genre de production des Anges D�chus?",5)
		ANSWER("Comment et quand ont �t� cr��s les Anges D�chus?",7)
		ANSWER("Quand ont �t� fond�s les Anges D�chus?",7)
		ANSWER("Merci, mais je dois m'en aller.",1)

	NODE(10)  -- More questions 3
		SAY("Je serai ravi de r�pondre � vos questions.")
		SAY("Quelles sont vos autres questions?")
		SAY("Je serai ravi de r�pondre � toute autre question.")

		ANSWER("Qui est le chef des Anges D�chus?",6)
		ANSWER("Qui est � la t�te des Anges D�chus?",6)
		ANSWER("Comment et quand ont �t� cr��s les Anges D�chus?",7)
		ANSWER("Quand ont �t� fond�s les Anges D�chus?",7)
		ANSWER("Merci, mais je dois m'en aller.",1)

	NODE(11) -- Leaving
		SAY("Apr�s des frictions avec le gouvernement des Moines PSI sur des sujets importants, tels que les objectifs de recherche ou encore leur financement, Thomas Cooper a quitt� la ville avec un groupe de scientifiques pour fonder Havre Tech.")

		ANSWER("Merci. Je peux vous poser d'autres questions?",10)
		ANSWER("Merci pour votre aide. Maintenant, il faut que je m'en aille.",1)

	NODE(12)

		SAY("Je ne peux r�pondre � aucune de vos questions. Peut-�tre devriez-vous vous renseigner aupr�s de CityAdmin.")

		ANSWER("OK, je vais m'en aller.",13)
		ANSWER("Et si j'employais des m�thodes.... disons... persuasives?",3)

	NODE(13)

		SAY("J'esp�re que vous trouverez les r�ponses � vos questions. Navr� de ne pas pouvoir vous aider plus.")

		ENDDIALOG()
end