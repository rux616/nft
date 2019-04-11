function DIALOG()

	NODE(0)
		SAY("Bonjour. Qu'est-ce que je peux faire pour vous?")
		SAY("Vous avez besoin d'aide?")
		SAY("Vous cherchez quelque chose?")
		SAY("Bonjour, est-ce que je peux vous aider?")
		SAY("Besoin d'aide?")

		ANSWER("Merci, j'allais partir.",1)
		ANSWER("Laissez-moi tranquille!",1)

ANSWER("J'aimerais des renseignements...",2)
		ANSWER("J'ai quelques questions...",2)
		ANSWER("Parlez-moi des Anges D�chus.",4)
		ANSWER("Hors de ma vue, sale rat de laboratoire!",3)

	NODE(1)

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
		SAY("Nous sommes bas�s � Havre Tech, et nous g�rons notre propre ville tout en menant des recherches et d�veloppement de toutes sortes. Nous sommes une technocratie, et nous ne faisons pas partie de la juridiction de Neocron. Notre but principal est la connaissance.")


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