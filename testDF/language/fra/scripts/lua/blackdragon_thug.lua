-- Description: Commentary for Black Dragon Clan Thug
-- Purpose: This dialog is like a 'Clue Dropper' for players to figure out a little about what BDC is really all about.
-- NPC: Character will be a standard thug, perhaps guarding a door to a building/warehouse or something.
-- Author: Singe 'DarkShell' Graham
-- Date: October 31, 2001

function DIALOG()	

	NODE(0)
		SAY("Hors d'ici! Je n'ai pas le temps. Le Dragon Noir n'a pas le temps de s'occuper des gens qu'il ne connaît pas.")
		SAY("Hors d'ici! Tu ne vois pas que je travaille? Le Dragon Noir n'a rien à faire de toi.")

		ANSWER("Du calme, j'ai seulement quelques questions à te poser.",2)
		ANSWER("Détendez-vous. J'aimerais seulement te poser quelques questions.",2)

		ANSWER("Bien, ducon.",1)
		ANSWER("Je vois. Tu as l'air très occupé à te gratter le bas-ventre!",1)


	NODE(1) 		-- Goodbye (Angry)
		SAY("Sors d'ici avant que je te botte le cul!")
		SAY("Ne me force pas à te chasser à coups de pied dans le cul!")

		ENDDIALOG()


	NODE(2)		-- Question 1
		SAY("Des questions? J'ai pas le temps pour des questions.")
		SAY("Mais tu me prends pour quoi? Est-ce que je ressemble à un terminal?")

		ANSWER("Je veux seulement savoir ce que tu fais ici.",3)
		ANSWER("Je pensais que tu pourrais m'apprendre ce que tu fais ici.",3)

		ANSWER("Je pensais seulement que quelqu'un de son envergure et de ta compétence aurait quelque chose de plus valorisant à faire que de garder les lieux.",4)
		ANSWER("C'est juste que je n'arrive pas à comprendre pourquoi ils ont mis quelqu'un d'aussi intelligent et valeureux que toi pour monte la garde ici. Moi, je trouverais ça injuste, à ta place.",4)

		ANSWER("Rien. C'est pas important. Pardon de t'avoir dérangé.",5)


	NODE(3)		-- Suspicious/Angry
		SAY("Mais pour qui tu te prends? On se connaît pas, et je répondrai pas à tes questions. Maintenant, tire-toi de là avant que je te transforme en bouillie!")
		SAY("Et pourquoi est-ce que je te le dirais? Tu parles trop. Je te suggère de partir d'ici avant que je te présente à un ami à moi. *caresse son arme*")

		ENDDIALOG()

	NODE(4)		-- Friendly
		SAY("Tu te rends compte! Je sais même pas pourquoi ils m'ont cloué là! Mais si Trond ne fait pas attention, je serai le premier à lui mettre une balle dans la tête. Il va trop loin, ça va lui attirer des ennuis sérieux. C'est moi qui travaille, et c'est lui qui ramasse tout le mérite. Tu vois le genre...")
		SAY("Ah, j'te raconte pas! Tout ça, c'est de la faute à Trond. Je suis planté là, avec des rats qui grouillent tout autour, à garder je sais même pas quoi. Et pendant ce temps là, monsieur mène une vie de roi avec son armoire à alcool, son compte en banque et ses putes, dans son grand appartement. C'est moi qui devrais être là-haut, pas lui. C'est moi qui travaille, c'est lui qui profite. Ca me rend malade.")

		ANSWER("Apparemment, Trond et toi vous n'êtes pas vraiment amis...",6)
		ANSWER("J'ai l'impression que tu n'apprécies pas trop ce type.",6)
	
		ANSWER("En effet, je te plains. J'espère que tu arriveras à ce que tu veux un jour, mais là il faut que je m'en aille.",5)
		ANSWER("J'aime bien ton histoire. Mais là, il faut que je m'en aille.",5)

		ANSWER("Tais-toi, j'en ai marre de t'entendre te plaindre. Dans ce monde, il n'y a de la place que pour les plus forts, et tu as eu ce que tu méritais.",1)
		ANSWER("Tu te plains plus qu'une pute qui a de l'herpès. Arrête ton cirque, Priscilla. Il est temps de changer de répertoire.",1)

	NODE(5)		-- Goodbye (Neutral)
		SAY("Bon. Ne remets plus les pieds ici, compris?")
		SAY("Alors fiche le camp.")
		
		ENDDIALOG()

	NODE(6)
		SAY("HA! T'as un sacré sens de l'euphémisme, toi! Ce type est une raclure. C'est la pire raclure que le monde ait jamais portée. Le problème, c'est que ça l'a fait monter là où il est maintenant.")
		SAY("Vraiment? Tu trouves? Qu'est-ce qui a pu t'amener à cette conclusion, je me le demande bien!")

		ANSWER("Alors qu'est-ce que tu comptes faire?",7)
		ANSWER("Et tu vas le laisser te traiter comme ça pendant longtemps?",7)

	NODE(7)
		SAY("Si seulement je savais! Tout ce que je sais, c'est que bientôt, un gros boss va se faire truffer de plombs. Si j'étais Véronique, je garderais mes yeux grand ouverts. J'entends tout le temps des rumeurs, apparemment Max pense se tailler une part dans la prostitution et le jeu, les secteurs d'activité de Tsunami. Connaissant Max, ça va pas être une opération chirurgicale. C'est pas son genre. Lui, il donnerait plutôt dans le grandiloquent, si tu vois ce que je veux dire.")
		SAY("Ca, j'en sais rien du tout. Tout ce que je sais, c'est les rats qui me le racontent. Et ils me parlent de gros travaux. Ils me racontent que Max va commencer à jouer plus ferme avec Tsunami. Il veut se tailler une part du gâteau, tu comprends. Et ça, ça veut dire un truc : il va y avoir du sang dans les rues. Ca va être un carnage.")

		ANSWER("Je ferais mieux de garder les yeux ouverts, alors.",8)
		ANSWER("Merci pour l'info. Je vais éviter de me promener dans les quartiers chauds pendant quelques temps.",8)
	NODE(8)
		SAY("C'est la chose la plus intelligente que j'aie entendue aujourd'hui. Maintenant, tu ferais mieux de t'en aller, j'ai du travail.")

		ENDDIALOG()

end