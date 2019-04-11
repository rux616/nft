function DIALOG()

	NODE(0)
		SAY("C'est � moi que tu parles? Qu'est-ce que je peux faire pour toi?")
		SAY("Je peux t'aider?")
		SAY("Salut, besoin d'une aide quelconque?")
		SAY("Comment �a va?")

		ANSWER("Pardon, j'allais justement partir.",1)
		ANSWER("Non, t'ai confondu avec quelqu'un d'autre.",1)
		ANSWER("Je peux te poser quelques questions?",4)
		ANSWER("J'ai quelques questions.",4)
		ANSWER("Qu'est-ce que tu peux me dire sur le Dragon Noir?",5)
		ANSWER("Je me pose des questions sur le Dragon Noir...",5)
		ANSWER("Je t'ai demand� quelque chose, � toi? Allez, je m'en vais d'ici.",3)
		ANSWER("Pardon, je ne parle pas aux gens de votre esp�ce.",3)
		ANSWER("Hors de mon chemin!",3)

	NODE(1) -- polite goodbye, no questions answered

		SAY("Au revoir.")
		SAY("A la prochaine!")
		SAY("Comme tu veux, � la prochaine.")
		
		ENDDIALOG()
				
	NODE(2) -- polite goodbye, questions answered		
		
		SAY("J'esp�re que j'ai pu t'aider.")
		SAY("Reviens si tu as d'autres questions.")
		SAY("Je serai l� si tu as encore des questions.")

		ENDDIALOG()

	NODE(3) -- rude goodbye

		SAY("D�gage-moi le plancher avant que j'appelle du renfort!")
		SAY("Tu ferais mieux de partir, Avant que je te botte le cul.")
		SAY("Tu sais pas � qui tu parles, l�! Je te conseille de filer avant d'avoir des ennuis.")
		SAY("Allez, d�gage avant que je fasse de la pur�e avec la t�te.")
		
		ENDDIALOG()

	NODE(4)
		SAY("Je travaille pour le Dragon Noir, je peux r�pondre � tes questions.")
		SAY("Je peux te r�pondre au sujet de mon employeur. Qu'est-ce que tu veux savoir?")
		SAY("Tu es dans le territoire du Dragon Noir, et tu parles � un employ� du Dragon Noir. J'en d�duis que d'une mani�re ou d'une autre, tu t'int�resses � nous.")

		ANSWER("Qu'est-ce que le Dragon Noir?",5)
		ANSWER("Qu'est-ce que le Dragon Noir, au juste?",5)
		ANSWER("Qui est le chef du Dragon Noir?",6)
		ANSWER("Qui est � la t�te du Dragon Noir?",6)
		ANSWER("Est-ce qu'il y a un boss au Dragon Noir?",6)
		ANSWER("Oh, je pense que je devrais m'en aller.",1)
		ANSWER("Zut! J'ai compl�tement oubli� mon rendez-vous. Je repasserai plus tard.",1)

	NODE(5)
		SAY("Maximilien Trond est le fondateur du Dragon Noir. Et il est assist� de plusieurs directeurs, �videmment, comme dans toute entreprise qui se respecte.")
		
		ANSWER("Qu'est-ce que vous pouvez me dire d'autre sur Maximilien Trond?",7)
		ANSWER("Qu'est-ce que vous pouvez m'apprendre de plus sur M. Trond?",7)
		ANSWER("Comment est-ce qu'il est arriv� l�?",7)
		ANSWER("Qu'est-ce que le Dragon Noir?",8)
		ANSWER("Qu'est-ce que le Dragon Noir, au juste?",8)
		ANSWER("Je vais devoir m'en aller...",2)
		ANSWER("Zut! Un rendez-vous important, et j'ai failli l'oublier... Je repasserai plus tard.",2)

	NODE(6)
		SAY("Maximilien Trond est le fondateur du Dragon Noir. Et il est assist� de plusieurs directeurs, �videmment, comme dans toute entreprise qui se respecte.")
		
		ANSWER("Qui dirige le Dragon Noir?",7)
		ANSWER("Est-ce qu'il y a un boss au Dragon Noir?",7)
		ANSWER("Est-ce que l'immobilier est le seul secteur d'activit� du Dragon Noir?",9)
		ANSWER("Le Dragon Noir ne propose pas d'autres services?",9)  
		ANSWER("Je vais devoir m'en aller...",2)
		ANSWER("Zut! Un rendez-vous important, et j'ai failli l'oublier... Je repasserai plus tard.",2)

	NODE(7
		SAY("Maximilien Trond a cr�� le Dragon Noir en 2741. C'�tait un visionnaire. Il a compris qu'il fallait aider les citoyens de Neocron qui vivaient dans les quartiers ignor�s par CityAdmin. Il a pris en charge l'immobilier dans les zones qui n'�taient pas couvertes par Diamond Immobilier, et il a commenc� � revendre les appartements aux citoyens pour qu'ils en soient les propri�taires.")

		ANSWER("L'immobilier est la seule activit� du Dragon Noir?",10)
		ANSWER("Le Dragon Noir ne propose pas d'autres services?",10)
		ANSWER("En fait, le Dragon Noir est une agence immobili�re pour la p�riph�rie de la ville, si je comprends bien?",10)
		ANSWER("Je vais devoir m'en aller...",2)
		ANSWER("Zut! Un rendez-vous important, et j'ai failli l'oublier... Je repasserai plus tard.",2)

	NODE(8)
		SAY("Maximilien Trond a cr�� le Dragon Noir en 2741. C'�tait un visionnaire. Il a compris qu'il fallait aider les citoyens de Neocron qui vivaient dans les quartiers ignor�s par CityAdmin. Il a pris en charge l'immobilier dans les zones qui n'�taient pas couvertes par Diamond Immobilier, et il a commenc� � revendre les appartements aux citoyens pour qu'ils en soient les propri�taires.")

		ANSWER("L'immobilier est la seule activit� du Dragon Noir?",10)
		ANSWER("Le Dragon Noir ne propose pas d'autres services?",10)
		ANSWER("En fait, le Dragon Noir est une agence immobili�re pour la p�riph�rie de la ville, si je comprends bien?",10)
		ANSWER("Je vais devoir m'en aller...",2)
		ANSWER("Zut! Un rendez-vous important, et j'ai failli l'oublier... Je repasserai plus tard.",2)

	NODE(9)
		SAY("Dragon Noir offre �galement une alternative aux services de protection de CityMercs. L'�quipe Dragon Rouge propose un grand �ventail de services de s�curit�, et leurs tarifs sont plus faibles que ceux de CityMercs.")

		ANSWER("Qui dirige le Dragon Noir?",11)
		ANSWER("Est-ce que le Dragon Noir a un boss?",11)
		ANSWER("Qui est � la t�te du Dragon Noir?",11)

	NODE(10)
		SAY("Le Dragon Noir offre �galement une alternative aux services de protection de CityMercs. L'�quipe Dragon Rouge propose un grand �ventail de services de s�curit�, et leurs tarifs sont plus faibles que ceux de CityMercs.")
		
		ANSWER("Merci pour l'info. Je vais devoir m'en aller.",2)
		ANSWER("Merci pour tes r�ponses. Je repasserai.",2)
		ANSWER("Merci d'avoir r�pondu � mes questions. On se reverra un de ces jours.",2)
		

	NODE(11)
		SAY("Maximilien Trond est le fondateur du Dragon Noir. Et il est assist� de plusieurs directeurs, �videmment, comme dans toute entreprise qui se respecte.")
		
		ANSWER("Merci pour l'info. Je vais devoir m'en aller.",2)
		ANSWER("Merci pour tes r�ponses. Je repasserai.",2)
		ANSWER("Merci d'avoir r�pondu � mes questions. On se reverra un de ces jours.",2)
		
end