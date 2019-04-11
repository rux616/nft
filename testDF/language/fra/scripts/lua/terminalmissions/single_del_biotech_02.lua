--single_del_biotech
--
--QuestItem = Recycler Tool

function DIALOG()

	NODE(0)
		SAY("Oui runner ? Comment puis-je vous aider ?")
		SAY("Salutations, citoyen. Que puis-je faire pour vous ?")
		SAY("Bonjour runner, que puis-je faire pour vous ?")
		
		ANSWER("J'ai accepté une livraison sur un terminal... Qu'est-ce que ce sera ?",1)
		ANSWER("Je viens pour une livraison. Je l'ai prise sur un terminal.",1)
		ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre. Au revoir.",4)

	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Un groupe de techniciens a besoin de ce recycleur. Vous rencontrerez %NPC_NAME(1) à %NPC_WORLD(1) qui se chargera du transfert final. Ils en ont vraiment besoin, alors soyez rapide. Revenez ici pour paiement.")
		SAY("%NPC_NAME(1) est un technicien de BioTech qui travaille à %NPC_WORLD(1). Donnez-lui le recycleur aussi rapidement que possible. Revenez me voir ensuite pour paiement.")
		SAY("OK Runner, vous savez où se trouve %NPC_WORLD(1), j'imagine. Prenez ce recycleur, et livrez-le à %NPC_NAME(1), un de nos techniciens. Il a dû suspendre le travail à cause de cela, alors faites vite. Revenez me voir ensuite pour paiement.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(2)
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Runner, Qu'est-ce que vous faites encore ici ? %NPC_NAME(1) attend son recycleur, ne tardez pas !")
				SAY("Mais c'est pas possible ! Qu'est-ce que vous faites encore ici ? Portez ce recycleur à %NPC_NAME(1), et en vitesse !")
				ENDDIALOG()
			else
				SAY("Bon travail, runner. BioTech tirera bénéfice de notre collaboration. Voici vos %REWARD_MONEY() crédits. J'espère vous revoir bientôt.")
				SAY("Très bien, beau travail. Voici vos %REWARD_MONEY() crédits. J'espère vous revoir bientôt.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Où est mon recycleur ? On vous a dit de m'en livrer un. Allez ! .")
				SAY("Quoi ? Vous n'avez pas mon recycleur ? Allez le chercher, je vous en prie, et ramenez-le-moi.")
				ENDDIALOG()
			else
				SAY("Ah oui, le recycleur ! Maintenant je peux me remettre au travail. Bien joué. Pour votre paiement, voyez avec %NPC_NAME(1).")
				SAY("Le recycleur, enfin ! Beau travail, runner. Retournez voir %NPC_NAME(1) pour toucher votre paie.")
				SAY("Enfin, vous avez le recycleur ! Ca va aller beaucoup plus rapidement maintenant. Merci, runner.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Au revoir")
		SAY("Revenez me voir quand vous saurez ce que vous voulez, runner.")
		ENDDIALOG()
	NODE(5)
		SAY("Mais qu'est-ce que vous voulez encore ? J'ai eu ce que je voulais, maintenant retournez voir %NPC_NAME(1).")
		SAY("Merci pour la livraison. Vous pouvez retourner voir %NPC_NAME(1) maintenant.") 
		ENDIALOG()
end
