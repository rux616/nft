function DIALOG()
--single_ag_biotec_01

        NODE(0)
                GENDERCHECK()
                if (result==1) then
                        SAY("Bienvenue, runner. Besoin de quelque chose ?")
                        SAY("A votre service, runner.")
                        SAY("Besoin d'aide, runner ?")
                        SAY("Oui monsieur ? Un problème ?")
                        SAY("Bienvenue monsieur, n'hésitez pas à me demander si vous avez un problème.")
                else
                        SAY("Oui, runner ?")
                        SAY("Oui runner ? Comment puis-je vous aider ?")
                        SAY("Oui runner ? Puis-je vous aider ?")
                        SAY("Besoin d'aide, madame ?")
                        SAY("Oui madame ? Je peux vous aider ?")
		end
                        ANSWER("J'ai regardé la section Tangent sur un terminal, et il me semble que vous avez un travail pour moi.",1)
                        ANSWER("Je viens pour le job que j'ai vu sur un terminal.",1)
                        ANSWER("Je viens pour l'extermination. Je pense avoir les compétences nécessaires.",1)
                        ANSWER("Désolé, j'ai dû me tromper de chemin.",3)
                        ANSWER("Oubliez, j'ai d'autres choses à faire, tout compte fait.",3)

        NODE(1)
                SAY("OK Runner, j'ai votre dossier sous les yeux, et je vois que vous avez les qualifications pour le job. Veuillez éliminer au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0).  Une fois que vous aurez fini, revenez me voir et je vous paierai.")
                SAY("Bienvenue, runner. Veuillez passer la zone au peigne fin à la recherche de %TARGET_NPCNAME(0). Trouvez et détruisez au moins %TARGET_VALUE(0,1) de ces créatures, et revenez me voir. Je pourrai alors vous payer pour le service rendu.") 
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("Si vous ne nous fournissez pas de service, nous ne pouvons pas vous fournir de récompense !!")
                                SAY("Veuillez partir. Je n'ai pas le temps de bavarder avec vous.")
                                ENDDIALOG()
                        else
                                SAY("Excellent travail, runner. Veuillez accepter ces %REWARD_MONEY() crédits. Si vous voulez travailler pour nous à nouveau, je pense que nous serons heureux de vous revoir. Passez une bonne journée, runner.")
                                SAY("Fantastique travail, runner. Voici les %REWARD_MONEY() crédits promis. Si vous pensez travailler à nouveau chez nous dans l'avenir, ce sera avec plaisir.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end
        NODE(3)
		SAY("Au revoir.")
		SAY("Revenez quand vous saurez ce que vous voulez. Au revoir.")
		ENDDIALOG()
end 

        


