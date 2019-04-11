function DIALOG()

	NODE(0)
		SAY("Bonjour, que puis-je faire pour vous ?")
		SAY("Salutations, comment puis-je vous aider ?")
		SAY("Oui ? Comment puis-je vous aider ?")
		SAY("Besoin de quelque chose ?")
		
		ANSWER("Oui, je viens pour l'extermination.",1)
		ANSWER("J'ai pris une mission d'extermination, et on m'a dit que je devais m'adresser à vous.")
		ANSWER("J'ai vu sur un terminal que vous aviez besoin d'un exterminateur.",1)
		ANSWER("Oubliez-moi. Au revoir.",3)
	NODE(1)
		SAY("Des %TARGET_NPCNAME(0) ont attaqué les gens sans raison apparente. Nous devons limiter leur nombre. Tuez-en au moins %TARGET_VALUE(0,1). Revenez ici pour toucher votre prime.")
		SAY("La population locale de %TARGET_NPCNAME(0) est devenue incontrôlable, et nous tentons d'éliminer cette infestation. Je vous demande d'en tuer au moins %TARGET_VALUE(0,1). Si vous le faites, vous toucherez une prime.")
		SAY("D'importantes populations de %TARGET_NPCNAME(0) limitent notre expansion. Nous vous demandons d'en tuer au moins %TARGET_VALUE(0,1) afin que nos équipes puissent faire leur travail.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("J'aimerais bien discuter, mais on a tous les deux beaucoup à faire, n'est-ce pas ? Au fait... Vous ne devriez pas être en train de tuer quelque chose, vous ?")
				SAY("Pour cette mission, vous n'auriez rien d'avance. Vous ne serez payé qu'à la fin. Pas la peine de revenir avant.")
				SAY("Vous n'avez pas encore fini. Revenez quand ce sera bon.")
				SAY("Vous vous êtes perdu en route ? Ca n'est pas ici que vous trouverez ce que vous cherchez...")
				ENDDIALOG()
			else
				SAY("Bon travail. Voici votre prime, il devrait y avoir %REWARD_MONEY() crédits. Si vous voulez d'autres jobs, consulter les terminaux est toujours une bonne méthode.")
				SAY("Beau travail. Ca devrait les calmer quelques temps... %REWARD_MONEY() crédits ont été transférés sur votre compte. Bonne journée.")
				SAY("Excellent. Voici vos %REWARD_MONEY() crédits. Nous avons toujours besoin de gens comme vous. Si vous êtes intéressé, pensez à consulter les terminaux.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Au revoir.")
		SAY("J'ai beaucoup à faire. Si vous n'avez pas de but précis ici, trouvez-vous quelqu'un d'autre à qui parler.")
		SAY("Revenez quand vous saurez ce que vous voulez. Au revoir.")
		SAY("Moi, j'attends quelqu'un pour une extermination. Maintenant, si vous voulez bien m'excuser... Au revoir.")
		ENDDIALOG()
	
end

