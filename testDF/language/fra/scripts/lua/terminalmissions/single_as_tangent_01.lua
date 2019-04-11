function DIALOG() --single_as__tangent01

        NODE(0)
                GENDERCHECK()
                        if (result==1) then
                        SAY("Bienvenue, runner. Besoin de quelque chose?")
                        SAY("Je vous écoute, runner.")
                        SAY("Besoin d'aide, runner ?")
                        SAY("Oui monsieur ? Un problème ?")
                        SAY("Bienvenue, monsieur. Si vous avez un problème, je suis là.")
                        else
                        SAY("Bienvenue, runner. Besoin de quelque chose?")
                        SAY("Je vous écoute, runner.")
                        SAY("Besoin d'aide, runner ?")
                        SAY("Oui madame ? Un problème ?")
                        SAY("Comment puis-je vous aider, madame ?")
			end
                        ANSWER("Je regardais ce que vous proposiez sur un terminal, et il me semble que vous avez quelque chose pour moi.",1)
                        ANSWER("Je viens pour le job que j'ai trouvé sur un terminal.",1)
                        ANSWER("Je viens pour l'exécution, je pense avoir les compétences requises.",1)
                        ANSWER("Pardon, j'ai dû me tromper d'endroit.",3)
                        ANSWER("Ce n'est rien, j'ai d'autres choses à faire. Au revoir.",3)

        NODE(1)
                SAY("OK, Runner. Votre dossier nous montre que vous avez les qualifications nécessaires pour cette mission classée 'difficile'. Rendez-vous à %NPC_WORLD(1) et exécutez %NPC_NAME(1). Ne vous inquiétez pas, la personne que vous allez tuer a été classée comme 'criminelle' par CityAdmin, et vous savez qu'il n'existe qu'une seule sentence à Neocron : la mort. Quand vous avez terminé, revenez me voir et je m'occuperai de votre paiement.")
                SAY("OK, Runner. Votre dossier montre que vous possédez les pré-requis pour cette mission. CityAdmin a demandé à tangent d'éliminer un criminel notoire. Ce genre de situation est très avantageux pour nous, car nous pouvons l'utiliser pour tester de nouvelles armes en milieu réel. Rendez-vous à %NPC_WORLD(1) et exécutez %NPC_NAME(1). Ensuite, revenez me voir. J'ai l'autorisation de procéder à votre paiement une fois la mission accomplie.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("Si vous ne faites pas ce qui vous est demandé, vous ne toucherez jamais votre récompense !!")
                                SAY("Veuillez partir. Je n'ai pas le temps de discuter avec vous.")
                                ENDDIALOG()
                        else
                                SAY("Excellent, runner. Tenez, voici vos %REWARD_MONEY() crédits. Tangent Technologies sera ravie de travailler avec vous dans un avenir proche, alors surveillez votre terminal. Passez une bonne journée, runner.")
                                SAY("Fantastique, runner. Voici vos %REWARD_MONEY() crédits, profitez-en. Surveillez votre terminal, d'autres offres d'emploi se présenteront bientôt à vous.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end
	NODE(3)
		SAY("Good Bye")
		ENDDIALOG()
end

        


