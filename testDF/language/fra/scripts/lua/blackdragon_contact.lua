function DIALOG()

	NODE(0)
		SAY("C'est à moi que tu parles? Qu'est-ce que je peux faire pour toi?")
		SAY("Je peux t'aider?")
		SAY("Salut, besoin d'une aide quelconque?")
		SAY("Comment ça va?")

		ANSWER("Pardon, j'allais justement partir.",1)
		ANSWER("Non, t'ai confondu avec quelqu'un d'autre.",1)
		ANSWER("Je peux te poser quelques questions?",4)
		ANSWER("J'ai quelques questions.",4)
		ANSWER("Qu'est-ce que tu peux me dire sur le Dragon Noir?",5)
		ANSWER("Je me pose des questions sur le Dragon Noir...",5)
		ANSWER("Je t'ai demandé quelque chose, à toi? Allez, je m'en vais d'ici.",3)
		ANSWER("Pardon, je ne parle pas aux gens de votre espèce.",3)
		ANSWER("Hors de mon chemin!",3)

	NODE(1) -- polite goodbye, no questions answered

		SAY("Au revoir.")
		SAY("A la prochaine!")
		SAY("Comme tu veux, à la prochaine.")
		
		ENDDIALOG()
				
	NODE(2) -- polite goodbye, questions answered		
		
		SAY("J'espère que j'ai pu t'aider.")
		SAY("Reviens si tu as d'autres questions.")
		SAY("Je serai là si tu as encore des questions.")

		ENDDIALOG()

	NODE(3) -- rude goodbye

		SAY("Dégage-moi le plancher avant que j'appelle du renfort!")
		SAY("Tu ferais mieux de partir, Avant que je te botte le cul.")
		SAY("Tu sais pas à qui tu parles, là! Je te conseille de filer avant d'avoir des ennuis.")
		SAY("Allez, dégage avant que je fasse de la purée avec la tête.")
		
		ENDDIALOG()

	NODE(4)
		SAY("Je travaille pour le Dragon Noir, je peux répondre à tes questions.")
		SAY("Je peux te répondre au sujet de mon employeur. Qu'est-ce que tu veux savoir?")
		SAY("Tu es dans le territoire du Dragon Noir, et tu parles à un employé du Dragon Noir. J'en déduis que d'une manière ou d'une autre, tu t'intéresses à nous.")

		ANSWER("Qu'est-ce que le Dragon Noir?",5)
		ANSWER("Qu'est-ce que le Dragon Noir, au juste?",5)
		ANSWER("Qui est le chef du Dragon Noir?",6)
		ANSWER("Qui est à la tête du Dragon Noir?",6)
		ANSWER("Est-ce qu'il y a un boss au Dragon Noir?",6)
		ANSWER("Oh, je pense que je devrais m'en aller.",1)
		ANSWER("Zut! J'ai complètement oublié mon rendez-vous. Je repasserai plus tard.",1)

	NODE(5)
		SAY("Maximilien Trond est le fondateur du Dragon Noir. Et il est assisté de plusieurs directeurs, évidemment, comme dans toute entreprise qui se respecte.")
		
		ANSWER("Qu'est-ce que vous pouvez me dire d'autre sur Maximilien Trond?",7)
		ANSWER("Qu'est-ce que vous pouvez m'apprendre de plus sur M. Trond?",7)
		ANSWER("Comment est-ce qu'il est arrivé là?",7)
		ANSWER("Qu'est-ce que le Dragon Noir?",8)
		ANSWER("Qu'est-ce que le Dragon Noir, au juste?",8)
		ANSWER("Je vais devoir m'en aller...",2)
		ANSWER("Zut! Un rendez-vous important, et j'ai failli l'oublier... Je repasserai plus tard.",2)

	NODE(6)
		SAY("Maximilien Trond est le fondateur du Dragon Noir. Et il est assisté de plusieurs directeurs, évidemment, comme dans toute entreprise qui se respecte.")
		
		ANSWER("Qui dirige le Dragon Noir?",7)
		ANSWER("Est-ce qu'il y a un boss au Dragon Noir?",7)
		ANSWER("Est-ce que l'immobilier est le seul secteur d'activité du Dragon Noir?",9)
		ANSWER("Le Dragon Noir ne propose pas d'autres services?",9)  
		ANSWER("Je vais devoir m'en aller...",2)
		ANSWER("Zut! Un rendez-vous important, et j'ai failli l'oublier... Je repasserai plus tard.",2)

	NODE(7
		SAY("Maximilien Trond a créé le Dragon Noir en 2741. C'était un visionnaire. Il a compris qu'il fallait aider les citoyens de Neocron qui vivaient dans les quartiers ignorés par CityAdmin. Il a pris en charge l'immobilier dans les zones qui n'étaient pas couvertes par Diamond Immobilier, et il a commencé à revendre les appartements aux citoyens pour qu'ils en soient les propriétaires.")

		ANSWER("L'immobilier est la seule activité du Dragon Noir?",10)
		ANSWER("Le Dragon Noir ne propose pas d'autres services?",10)
		ANSWER("En fait, le Dragon Noir est une agence immobilière pour la périphérie de la ville, si je comprends bien?",10)
		ANSWER("Je vais devoir m'en aller...",2)
		ANSWER("Zut! Un rendez-vous important, et j'ai failli l'oublier... Je repasserai plus tard.",2)

	NODE(8)
		SAY("Maximilien Trond a créé le Dragon Noir en 2741. C'était un visionnaire. Il a compris qu'il fallait aider les citoyens de Neocron qui vivaient dans les quartiers ignorés par CityAdmin. Il a pris en charge l'immobilier dans les zones qui n'étaient pas couvertes par Diamond Immobilier, et il a commencé à revendre les appartements aux citoyens pour qu'ils en soient les propriétaires.")

		ANSWER("L'immobilier est la seule activité du Dragon Noir?",10)
		ANSWER("Le Dragon Noir ne propose pas d'autres services?",10)
		ANSWER("En fait, le Dragon Noir est une agence immobilière pour la périphérie de la ville, si je comprends bien?",10)
		ANSWER("Je vais devoir m'en aller...",2)
		ANSWER("Zut! Un rendez-vous important, et j'ai failli l'oublier... Je repasserai plus tard.",2)

	NODE(9)
		SAY("Dragon Noir offre également une alternative aux services de protection de CityMercs. L'équipe Dragon Rouge propose un grand éventail de services de sécurité, et leurs tarifs sont plus faibles que ceux de CityMercs.")

		ANSWER("Qui dirige le Dragon Noir?",11)
		ANSWER("Est-ce que le Dragon Noir a un boss?",11)
		ANSWER("Qui est à la tête du Dragon Noir?",11)

	NODE(10)
		SAY("Le Dragon Noir offre également une alternative aux services de protection de CityMercs. L'équipe Dragon Rouge propose un grand éventail de services de sécurité, et leurs tarifs sont plus faibles que ceux de CityMercs.")
		
		ANSWER("Merci pour l'info. Je vais devoir m'en aller.",2)
		ANSWER("Merci pour tes réponses. Je repasserai.",2)
		ANSWER("Merci d'avoir répondu à mes questions. On se reverra un de ces jours.",2)
		

	NODE(11)
		SAY("Maximilien Trond est le fondateur du Dragon Noir. Et il est assisté de plusieurs directeurs, évidemment, comme dans toute entreprise qui se respecte.")
		
		ANSWER("Merci pour l'info. Je vais devoir m'en aller.",2)
		ANSWER("Merci pour tes réponses. Je repasserai.",2)
		ANSWER("Merci d'avoir répondu à mes questions. On se reverra un de ces jours.",2)
		
end