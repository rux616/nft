function DIALOG()
--single_del_biotech_01
--

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Runner is male.
				SAY("Bonjour runner, que puis-je faire pour vous ?")
				SAY("Salutations, runner, comment puis-je vous aider ?")
				SAY("Oui runner ? Comment puis-je vous aider ?")
				SAY("Bonjour monsieur, que puis-je faire pour vous ?")
				SAY("Oui monsieur ? Comment puis-je vous aider ?")

				ANSWER("Je viens pour la livraison. Qu'est-ce que vous avez pour moi ?",1)
				ANSWER("Je viens pour la livraison. Le message sur le terminal m'indiquait de m'adresser directement à vous.",1)
				ANSWER("J'ai accepté une mission de livraison sur un terminal. Je viens en rapport avec cette mission.",1)
				ANSWER("Désolé, je vous ai pris pour quelqu'un d'autre.",4)
				ANSWER("Je n'ai rien dit. Je vous ai pris pour quelqu'un d'autre, au revoir.",4)
			else -- Runner is female.
				SAY("Bonjour runner, que puis-je faire pour vous ?")
				SAY("Salutations, runner, comment puis-je vous aider ?")
				SAY("Oui runner ? Comment puis-je vous aider ?")
				SAY("Bonjour madame, que puis-je faire pour vous ?")
				SAY("Oui madame ? Comment puis-je vous aider ?")          

				ANSWER("Je viens pour la livraison. Qu'est-ce que vous avez pour moi ?",1)
				ANSWER("Je viens pour la livraison. Le message sur le terminal m'indiquait de m'adresser directement à vous.",1)
				ANSWER("J'ai accepté une mission de livraison sur un terminal. Je viens en rapport avec cette mission.",1)
				ANSWER("Désolée, je vous ai pris pour quelqu'un d'autre.",4)
				ANSWER("Je n'ai rien dit. Je vous ai pris pour quelqu'un d'autre, au revoir.",4)
			end

	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Ah oui. Je veux que vous livriez cet InfoCube à un technicien du nom de %NPC_NAME(1). Il travaille à %NPC_WORLD(1). Une fois que la livraison est effectuée, revenez ici pour votre récompense.")
		SAY("Bien, runner. Veuillez livrer cet InfoCube à %NPC_NAME(1), à %NPC_WORLD(1). Il a besoin de terminer un travail très rapidement, et il en a besoin. Revenez me voir ensuite pour recevoir votre paiement.")
		SAY("Excellent ! Cet InfoCube doit être transféré à %NPC_NAME(1), à %NPC_WORLD(1). Donnez-le lui, et revenez ici pour toucher votre paiement.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()



	NODE(2) 
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Qu'est-ce que vous faites encore ici ? %NPC_NAME(1) a besoin de cette livraison, ne perdez pas de temps !")
				SAY("Runner, si vous voulez toucher votre argent, vous feriez mieux de vous occuper de votre livraison. %NPC_NAME(1) doit certainement s'impatienter. Allez, en route !")
				ENDDIALOG()
			else
				SAY("Bon travail, runner. Voici vos %REWARD_MONEY() crédits. Ne les dépensez pas d'un seul coup, sauf si c'est pour acheter des articles de chez BioTech !")
				SAY("Merci pour votre aide. Voici votre récompense : %REWARD_MONEY() crédits. Passez une excellente journée.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Ben ? Et mon six-faces ? J'ai besoin de ce cube pour corriger des erreurs de programmation. Vous me coûtez beaucoup de temps, ainsi qu'à BioTech. Alors allez me chercher ce cube !")
				SAY("Vous n'avez pas mon cube ? Mais moi j'en ai besoin pour mon travail ! S'il-vous-plaît, allez le chercher tout de suite.")
				SAY("Vous n'avez pas mon six-faces ? J'en ai besoin pour continuer mon travail, et vous me faites perdre mon temps. Allez me chercher ce cube tout de suite.")
				ENDDIALOG()
			else    
				SAY("Vous avez le cube ? Bien ! Maintenant retournez voir %NPC_NAME(0) pour toucher votre paie.")
				SAY("Ah oui, le livreur. Merci, ça va bien m'aider... Retournez voir %NPC_NAME(0) pour toucher votre argent.")
				SAY("Vous avez mon six-faces ? Bien ! Maintenant, retournez voir %NPC_NAME(0) pour votre paiement.")
				ACTIVATEDIALOGTRIGGER(1) 
				SETNEXTDIALOGSTATE(5)       
				ENDDIALOG()
			end

	NODE(4)
		SAY("Veuillez ne pas me faire perdre mon temps. Passez une bonne journée.")
		SAY("J'ai beaucoup à faire. Bonne journée.")
		SAY("Je n'ai pas le temps de bavarder avec vous. Circulez.")
		SAY("Vous pensez que j'ai le temps de discuter ? La réponse est non. Au revoir.")
		ENDDIALOG()
	NODE(5)
		SAY("Qu'est-ce que vous voulez d'autre ? J'ai eu ce que j'attendais, maintenant retournez voir %NPC_NAME(0).")
		SAY("Merci pour la livraison. Vous pouvez retourner voir %NPC_NAME(0).") 
		ENDIALOG()
end

