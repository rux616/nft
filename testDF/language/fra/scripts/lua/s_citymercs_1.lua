Voici les notes concernant le patch 161.
<b>Ce patch N'EST PAS encore disponible sur les serveurs commerciaux.

function DIALOG()

	NODE(0)

		SAY("Bonjour, si vous cherchez CityMercs vous �tes au bon endroit.")

		ANSWER("CityMercs? Qu'est-ce que c'est?,1)
		ANSWER("En fait, je suis l� par hasard. Mais dites-m'en plus!",1)
		ANSWER("Je n'ai jamais entendu parler de CityMercs.",1)
			ANSWER("L'histoire de CityMercs m'int�resse.",2)
			ANSWER("Comment cette organisation a-t-elle �t� cr��e?",2)
			ANSWER("A quand remonte votre fondation?",2)
		ANSWER("En quoi est-ce que vous pourriez m'int�resser?",3)
		ANSWER("Que fait CityMercs, concr�tement?",3)
		ANSWER("Quels sont les services que vous proposez?",3)
			ANSWER("J'en ai assez entendu. Laissez-moi tranquille!",9)
			ANSWER("Merci pour votre aide. Il faut que j'y aille.",9)
			ANSWER("C'est tr�s int�ressant. Je reviendrai plus tard.",9)

	ENDNODE

	NODE(1)

		SAY("Nous offrons une large gamme de services de type militaire � des prix tr�s abordables.")

		ANSWER("Tr�s int�ressant. Ca fait longtemps que vous �tes l�?",2)
		ANSWER("Je ne veux parler qu'� des gens qui ont de l'exp�rience.",2)
		ANSWER("J'ai entendu parler de vous en ville.",2)
			ANSWER("J'ai besoin de faire tuer quelqu'un sans me salir les mains.",3)
			ANSWER("Dans ce cas, j'ai un travail � vous proposer, �a devrait vous int�resser.",3)
			ANSWER("Je pensais faire un long voyage, et j'ai besoin de protection.",3)
		ANSWER("Ce n'est pas �a qui m'int�resse.",0)
		ANSWER("D'accord, mais vous ne m'avez pas dit ce que je voulais savoir.",0)
		ANSWER("Ca m'intrigue. Peut-�tre pourriez-vous r�pondre � une autre question?",0)
			ANSWER("Ca suffit!",9)
			ANSWER("Merci pour votre aide. Il faut que j'y aille.",9)
			ANSWER("Je m'en fiche. Je m'en vais.",9)
	ENDNODE

	NODE(2)

		SAY("Nous avons �t� fond�s en 2558 dans un bunker fortifi�. Aujourd'hui, Tarok Cajun, dit l'Oeil, est notre chef.")
		ANSWER("Parlez-moi de Tarok.",4)
		ANSWER("Ce doit �tre quelqu'un de puissant.",4)
		ANSWER("Parlez-moi de votre chef.",4)
			ANSWER("J'ai vu que vos membres portaient des rubans autour de leurs poignets. Qu'est-ce que �a signifie?",6)
			ANSWER("Parlez-moi de votre structure.",6)
			ANSWER("On m'a dit de vous demander � quoi servaient ces rubans que vous portez.",6)
		ANSWER("OK, �a suffira. J'ai d'autres questions.",0)
		ANSWER("J'en sais assez. Mais j'ai d'autres questions.",0)
		ANSWER("C'est int�ressant. Mais j'ai d'autres questions.",0)
			ANSWER("C'est tout ce que je voulais savoir.",9)
			ANSWER("Je voudrais avoir encore un peu de temps pour discuter, mais il faut que j'y aille.",9)
			ANSWER("Au revoir!",9)


	ENDNODE
	
	NODE(3)

		SAY("Si vous voulez �liminer quelqu'un, si vous avez besoin de protection pour une mission, ou de puissance de feu suppl�mentaire, alors adressez-vous � nous!")

		ANSWER("J'ai besoin de faire tuer quelqu'un de BioTech. Vous pouvez m'aider?",7)
		ANSWER("J'ai un probl�me avec quelqu'un de tangent. Vous pouvez peut-�tre m'aider.",7)
		ANSWER("Je d�teste Diamond Immobilier. Aidez-moi � les frapper l� o� �a fait mal.",7)
			ANSWER("Un membre du Dragon Noir m'a vol� quelque chose. Je veux me venger!",8)
			ANSWER("J'ai des probl�mes avec les Fils de l'Anarchie, et je recherche quelqu'un pour m'aider.",8)
			ANSWER("Mort au Dragon Noir!",8)
		ANSWER("J'ai autre chose � vous demander.",0)
		ANSWER("Vous pouvez probablement m'aider pour autre chose.",0)
		ANSWER("OK, mais je voudrais vous poser d'autres questions.",0)
			ANSWER("C'est magnifique, mais il faut que j'y aille.",9)
			ANSWER("Il faut que j'aille parler � quelqu'un d'autre.",9)
			ANSWER("Vous avez �t� tr�s serviable. Au revoir!",9)

	ENDNODE

	
	NODE(4)

		SAY("Tarok est un puissant combattant et un ma�tre en strat�gie qui nous dirige depuis 2747.")
		
		ANSWER("Et Kim Mai Wong? Qui est-ce?",5)
		ANSWER("J'ai entendu parler d'un de vos membres, 'Sushi'... Qui est-ce?",5)
		ANSWER("Qui est votre SysAdmin actuellement?",5)
			ANSWER("Il m'a l'air d'�tre quelqu'un d'extraordinaire. Je veux en conna�tre plus sur CityMercs.",0)
			ANSWER("Je peux vous poser une autre question?",0)
			ANSWER("Je cherche d'autres informations.",0)
		ANSWER("Il faut que j'aille parler � quelqu'un d'autre.",9)
		ANSWER("Merci pour votre aide. Il faut que je m'en aille.",9)
		ANSWER("C'est tr�s int�ressant. Je reviendrai peut-�tre plus tard.",9)

	ENDNODE	


	NODE(5)

		SAY("Kim Mai Wong, dit 'Sushi', est un tr�s intelligent SysAdmin, et ma�tre du combat rapproch�.")

		ANSWER("Pouvez-vous r�pondre � d'autres questions?",0)
		ANSWER("OK, mais il faut que je vous demande autre chose.",0)
		ANSWER("Il m'a l'air d'un formidable atout! Vous pouvez r�pondre � une autre question?",0)
			ANSWER("C'est tout pour l'instant.",9)
			ANSWER("Il faut que je m'en aille. Merci!",9)
			ANSWER("Laissez-moi tranquille. J'en ai assez entendu.",9)

	ENDNODE	

	
	NODE(6)

		SAY("Les nouveaux soldats portent le titre de Ruban blanc. Les chefs d'unit� portent celui de Ruban rouge. Nos v�t�rans, enfin, portent le titre de Ruban Noir.")

		ANSWER("Il faut que je vous pose une autre question.",0)
		ANSWER("Merci, mais vous ne m'avez pas dit ce que je voulais savoir.",0)
		ANSWER("Merci. Maintenant, j'ai d'autres questions.",0)
			ANSWER("Ca m'a l'air merveilleux, mais il faut que j'y aille.",9)
			ANSWER("Je n'ai plus de questions pour l'instant.",9)
			ANSWER("Je m'en fiche, et je m'en vais.",9)

	ENDNODE	


	NODE(7)

		SAY("Je pense que vous devriez vous adresser ailleurs. Vous n'�tes pas le bienvenu ici.")

		ANSWER("OK, je vais reformuler ma question.",3)
		ANSWER("Pardon de vous avoir vex�, �a n'�tait pas mon but.",3)
		ANSWER("Ce n'est pas ce que je voulais dire.",3)
			ANSWER("Alors vous ne voulez pas m'aider? Comme il vous plaira!",9)
			ANSWER("Je vois que je perds mon temps ici.",9)
			ANSWER("Bon, alors j'irai me battre tout seul. Adieu!",9)

	ENDNODE	

	
	NODE(8)

		SAY("Nous serons plus qu'heureux de vous aider. Vous �tes venu au bon endroit!")

		ANSWER("Avant de partir, il faut que je vous demande autre chose.",0)
		ANSWER("Attendez! J'ai d'autres questions.",0)
		ANSWER("Avant, il faut que je vous demande autre chose.",0)
			ANSWER("Vous m'avez beaucoup aid�. Merci!",9)
			ANSWER("Je pense moi aussi que je suis au bon endroit.",9)
			ANSWER("Merci pour vos r�ponses.",9)

	ENDNODE	

	
	NODE(9)

		SAY("OK. A plus tard.")
		ENDDIALOG()

end