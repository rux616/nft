function DIALOG() --single_as__tangent01

        NODE(0)
                GENDERCHECK()
                        if (result==1) then
                        SAY("Bienvenue, runner. Besoin de quelque chose?")
                        SAY("Je vous �coute, runner.")
                        SAY("Besoin d'aide, runner ?")
                        SAY("Oui monsieur ? Un probl�me ?")
                        SAY("Bienvenue, monsieur. Si vous avez un probl�me, je suis l�.")
                        else
                        SAY("Bienvenue, runner. Besoin de quelque chose?")
                        SAY("Je vous �coute, runner.")
                        SAY("Besoin d'aide, runner ?")
                        SAY("Oui madame ? Un probl�me ?")
                        SAY("Comment puis-je vous aider, madame ?")
			end
                        ANSWER("Je regardais ce que vous proposiez sur un terminal, et il me semble que vous avez quelque chose pour moi.",1)
                        ANSWER("Je viens pour le job que j'ai trouv� sur un terminal.",1)
                        ANSWER("Je viens pour l'ex�cution, je pense avoir les comp�tences requises.",1)
                        ANSWER("Pardon, j'ai d� me tromper d'endroit.",3)
                        ANSWER("Ce n'est rien, j'ai d'autres choses � faire. Au revoir.",3)

        NODE(1)
                SAY("OK, Runner. Votre dossier nous montre que vous avez les qualifications n�cessaires pour cette mission class�e 'difficile'. Rendez-vous � %NPC_WORLD(1) et ex�cutez %NPC_NAME(1). Ne vous inqui�tez pas, la personne que vous allez tuer a �t� class�e comme 'criminelle' par CityAdmin, et vous savez qu'il n'existe qu'une seule sentence � Neocron : la mort. Quand vous avez termin�, revenez me voir et je m'occuperai de votre paiement.")
                SAY("OK, Runner. Votre dossier montre que vous poss�dez les pr�-requis pour cette mission. CityAdmin a demand� � tangent d'�liminer un criminel notoire. Ce genre de situation est tr�s avantageux pour nous, car nous pouvons l'utiliser pour tester de nouvelles armes en milieu r�el. Rendez-vous � %NPC_WORLD(1) et ex�cutez %NPC_NAME(1). Ensuite, revenez me voir. J'ai l'autorisation de proc�der � votre paiement une fois la mission accomplie.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("Si vous ne faites pas ce qui vous est demand�, vous ne toucherez jamais votre r�compense !!")
                                SAY("Veuillez partir. Je n'ai pas le temps de discuter avec vous.")
                                ENDDIALOG()
                        else
                                SAY("Excellent, runner. Tenez, voici vos %REWARD_MONEY() cr�dits. Tangent Technologies sera ravie de travailler avec vous dans un avenir proche, alors surveillez votre terminal. Passez une bonne journ�e, runner.")
                                SAY("Fantastique, runner. Voici vos %REWARD_MONEY() cr�dits, profitez-en. Surveillez votre terminal, d'autres offres d'emploi se pr�senteront bient�t � vous.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end
	NODE(3)
		SAY("Good Bye")
		ENDDIALOG()
end

        


