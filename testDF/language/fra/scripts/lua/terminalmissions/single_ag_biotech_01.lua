function DIALOG()
--single_ag_biotec_01

        NODE(0)
                GENDERCHECK()
                        if (result==1) then 
                        	SAY("Bonjour runner, que puis-je faire pour vous ?")
                        	SAY("Salutations, runner, comment puis-je vous aider ?")
                        	SAY("Oui, runner ? Comment puis-je vous aider ?")
                        	SAY("Bonjour monsieur, que puis-je faire pour vous ?")
                        	SAY("Oui monsieur ? Comment puis-je vous aider ?")
                        else
                        	SAY("Bonjour runner, que puis-je faire pour vous ?")
                        	SAY("Salutations, runner, comment puis-je vous aider ?")
                        	SAY("Oui, runner ? Comment puis-je vous aider ?")
                        	SAY("Bonjour madame, que puis-je faire pour vous ?")
                        	SAY("Oui madame ? Comment puis-je vous aider ?")
			end
                        ANSWER("J'ai vu l'annonce sur un terminal. Je suis l� pour l'extermination.",1)
                        ANSWER("Je suis l� pour l'extermination. L'annonce sur le terminal.",1)
                        ANSWER("J'ai accept� une mission depuis un terminal. On m'a dit de m'adresser � vous.",1)
                        ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",3)
                        ANSWER("Pardon, je vous au pris pour quelqu'un d'autre. Oubliez-moi.",3)

        NODE(1)
                SAY("Ah, je vois, une minute, le temps que j'acc�de � votre dossier... Nous y sommes. OK, comme vous le savez peut-�tre, CityAdmin paye des runners pour des op�rations de maintenance et de nettoyage. En compl�ment, Biotech a sign� un contrat avec CityAdmin pour r�compenser ces activit�s de maintenance. Votre travail est un nettoyage de la zone : vous devez �liminer au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Revenez une fois que vous avez fini, afin de toucher votre r�compense de la part de BioTech.")
                SAY("En effet, runner. Nous avons un contrat de maintenance et de nettoyage de la ville, en partenariat avec CityAdmin. Votre r�le est d'exterminer des %TARGET_NPCNAME(0). Apr�s en avoir abattu au moins %TARGET_VALUE(0,1), revenez pour toucher votre r�compense de BioTech.")
SAY("Une des connaissances de Seymour Jordan a fait une mauvaise rencontre au cours d'une tourn�e. Jordan lui a fait une faveur en acceptant d'augmenter le budget d'extermination de BioTech, dans le cadre de son partenariat avec CityAdmin. Votre mission, c'est de faire un peu de nettoyage. Plus particuli�rement concernant les %TARGET_NPCNAME(0). Exterminez-en au moins %TARGET_VALUE(0,1), et � votre retour je vous donnerai votre r�compense de la part de BioTech.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("Qu'est-ce que vous faites ici ? Allez finir votre travail !!")
                                SAY("Mais qu'est-ce que vous �tes en train de faire ? Vous devez en abattre au moins %TARGET_VALUE(0,1) pour toucher votre r�compense. Maintenant, en chasse !")
                                ENDDIALOG()
                        else
                                SAY("Bon travail, runner. Voici vos %REWARD_MONEY() cr�dits. Consultez r�guli�rement les terminaux pour des missions propos�es par BioTech. Nous avons besoin de personnes qualifi�es telles que vous. J'esp�re vous revoir rapidement. Passez une bonne journ�e.")
                                SAY("Vous revoil� enfin. J'esp�re que vous n'avez pas eu trop de probl�mes avec votre mission. Si vous voulez remplir des missions similaires, n'h�sitez pas � consulter les terminaux. Voil� vos cr�dits, vous les avec bien m�rit�s. Au revoir, runner.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end

        NODE(3)
                GENDERCHECK()
                        if (result==1) then -- Runner is male.
                                SAY("Monsieur, arr�tez de me faire perdre mon temps. Bonne journ�e.")
                                SAY("Monsieur, je suis tr�s occup�. Veuillez me laisser tranquille.")
                                SAY("Je n'ai pas le temps de discuter. Laissez-moi tranquille.")
                                SAY("Vous pensez vraiment que j'ai le temps de bavarder, monsieur ? Allez, bonne journ�e.")
                                ENDDIALOG()
                        else
                                SAY("Madame, arr�tez de me faire perdre mon temps. Bonne journ�e.")
                                SAY("Madame, je suis tr�s occup�. Veuillez me laisser tranquille.")
                                SAY("Je n'ai pas le temps de discuter. Laissez-moi tranquille.")
                                SAY("Vous pensez vraiment que j'ai le temps de bavarder, Madame ? Allez, bonne journ�e.")
                                ENDDIALOG()
                        end

end

