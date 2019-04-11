-- Description: Commentary for Black Dragon Clan Thug
-- Purpose: This dialog is like a 'Clue Dropper' for players to figure out a little about what BDC is really all about.
-- NPC: Character will be a standard thug, perhaps guarding a door to a building/warehouse or something.
-- Author: Singe 'DarkShell' Graham
-- Date: October 31, 2001

function DIALOG()	

	NODE(0)
		SAY("Hors d'ici! Je n'ai pas le temps. Le Dragon Noir n'a pas le temps de s'occuper des gens qu'il ne conna�t pas.")
		SAY("Hors d'ici! Tu ne vois pas que je travaille? Le Dragon Noir n'a rien � faire de toi.")

		ANSWER("Du calme, j'ai seulement quelques questions � te poser.",2)
		ANSWER("D�tendez-vous. J'aimerais seulement te poser quelques questions.",2)

		ANSWER("Bien, ducon.",1)
		ANSWER("Je vois. Tu as l'air tr�s occup� � te gratter le bas-ventre!",1)


	NODE(1) 		-- Goodbye (Angry)
		SAY("Sors d'ici avant que je te botte le cul!")
		SAY("Ne me force pas � te chasser � coups de pied dans le cul!")

		ENDDIALOG()


	NODE(2)		-- Question 1
		SAY("Des questions? J'ai pas le temps pour des questions.")
		SAY("Mais tu me prends pour quoi? Est-ce que je ressemble � un terminal?")

		ANSWER("Je veux seulement savoir ce que tu fais ici.",3)
		ANSWER("Je pensais que tu pourrais m'apprendre ce que tu fais ici.",3)

		ANSWER("Je pensais seulement que quelqu'un de son envergure et de ta comp�tence aurait quelque chose de plus valorisant � faire que de garder les lieux.",4)
		ANSWER("C'est juste que je n'arrive pas � comprendre pourquoi ils ont mis quelqu'un d'aussi intelligent et valeureux que toi pour monte la garde ici. Moi, je trouverais �a injuste, � ta place.",4)

		ANSWER("Rien. C'est pas important. Pardon de t'avoir d�rang�.",5)


	NODE(3)		-- Suspicious/Angry
		SAY("Mais pour qui tu te prends? On se conna�t pas, et je r�pondrai pas � tes questions. Maintenant, tire-toi de l� avant que je te transforme en bouillie!")
		SAY("Et pourquoi est-ce que je te le dirais? Tu parles trop. Je te sugg�re de partir d'ici avant que je te pr�sente � un ami � moi. *caresse son arme*")

		ENDDIALOG()

	NODE(4)		-- Friendly
		SAY("Tu te rends compte! Je sais m�me pas pourquoi ils m'ont clou� l�! Mais si Trond ne fait pas attention, je serai le premier � lui mettre une balle dans la t�te. Il va trop loin, �a va lui attirer des ennuis s�rieux. C'est moi qui travaille, et c'est lui qui ramasse tout le m�rite. Tu vois le genre...")
		SAY("Ah, j'te raconte pas! Tout �a, c'est de la faute � Trond. Je suis plant� l�, avec des rats qui grouillent tout autour, � garder je sais m�me pas quoi. Et pendant ce temps l�, monsieur m�ne une vie de roi avec son armoire � alcool, son compte en banque et ses putes, dans son grand appartement. C'est moi qui devrais �tre l�-haut, pas lui. C'est moi qui travaille, c'est lui qui profite. Ca me rend malade.")

		ANSWER("Apparemment, Trond et toi vous n'�tes pas vraiment amis...",6)
		ANSWER("J'ai l'impression que tu n'appr�cies pas trop ce type.",6)
	
		ANSWER("En effet, je te plains. J'esp�re que tu arriveras � ce que tu veux un jour, mais l� il faut que je m'en aille.",5)
		ANSWER("J'aime bien ton histoire. Mais l�, il faut que je m'en aille.",5)

		ANSWER("Tais-toi, j'en ai marre de t'entendre te plaindre. Dans ce monde, il n'y a de la place que pour les plus forts, et tu as eu ce que tu m�ritais.",1)
		ANSWER("Tu te plains plus qu'une pute qui a de l'herp�s. Arr�te ton cirque, Priscilla. Il est temps de changer de r�pertoire.",1)

	NODE(5)		-- Goodbye (Neutral)
		SAY("Bon. Ne remets plus les pieds ici, compris?")
		SAY("Alors fiche le camp.")
		
		ENDDIALOG()

	NODE(6)
		SAY("HA! T'as un sacr� sens de l'euph�misme, toi! Ce type est une raclure. C'est la pire raclure que le monde ait jamais port�e. Le probl�me, c'est que �a l'a fait monter l� o� il est maintenant.")
		SAY("Vraiment? Tu trouves? Qu'est-ce qui a pu t'amener � cette conclusion, je me le demande bien!")

		ANSWER("Alors qu'est-ce que tu comptes faire?",7)
		ANSWER("Et tu vas le laisser te traiter comme �a pendant longtemps?",7)

	NODE(7)
		SAY("Si seulement je savais! Tout ce que je sais, c'est que bient�t, un gros boss va se faire truffer de plombs. Si j'�tais V�ronique, je garderais mes yeux grand ouverts. J'entends tout le temps des rumeurs, apparemment Max pense se tailler une part dans la prostitution et le jeu, les secteurs d'activit� de Tsunami. Connaissant Max, �a va pas �tre une op�ration chirurgicale. C'est pas son genre. Lui, il donnerait plut�t dans le grandiloquent, si tu vois ce que je veux dire.")
		SAY("Ca, j'en sais rien du tout. Tout ce que je sais, c'est les rats qui me le racontent. Et ils me parlent de gros travaux. Ils me racontent que Max va commencer � jouer plus ferme avec Tsunami. Il veut se tailler une part du g�teau, tu comprends. Et �a, �a veut dire un truc : il va y avoir du sang dans les rues. Ca va �tre un carnage.")

		ANSWER("Je ferais mieux de garder les yeux ouverts, alors.",8)
		ANSWER("Merci pour l'info. Je vais �viter de me promener dans les quartiers chauds pendant quelques temps.",8)
	NODE(8)
		SAY("C'est la chose la plus intelligente que j'aie entendue aujourd'hui. Maintenant, tu ferais mieux de t'en aller, j'ai du travail.")

		ENDDIALOG()

end