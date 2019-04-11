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
                        ANSWER("J'ai vu l'annonce sur un terminal. Je suis là pour l'extermination.",1)
                        ANSWER("Je suis là pour l'extermination. L'annonce sur le terminal.",1)
                        ANSWER("J'ai accepté une mission depuis un terminal. On m'a dit de m'adresser à vous.",1)
                        ANSWER("Pardon, je vous ai pris pour quelqu'un d'autre.",3)
                        ANSWER("Pardon, je vous au pris pour quelqu'un d'autre. Oubliez-moi.",3)

        NODE(1)
                SAY("Ah, je vois, une minute, le temps que j'accède à votre dossier... Nous y sommes. OK, comme vous le savez peut-être, CityAdmin paye des runners pour des opérations de maintenance et de nettoyage. En complément, Biotech a signé un contrat avec CityAdmin pour récompenser ces activités de maintenance. Votre travail est un nettoyage de la zone : vous devez éliminer au moins %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Revenez une fois que vous avez fini, afin de toucher votre récompense de la part de BioTech.")
                SAY("En effet, runner. Nous avons un contrat de maintenance et de nettoyage de la ville, en partenariat avec CityAdmin. Votre rôle est d'exterminer des %TARGET_NPCNAME(0). Après en avoir abattu au moins %TARGET_VALUE(0,1), revenez pour toucher votre récompense de BioTech.")
SAY("Une des connaissances de Seymour Jordan a fait une mauvaise rencontre au cours d'une tournée. Jordan lui a fait une faveur en acceptant d'augmenter le budget d'extermination de BioTech, dans le cadre de son partenariat avec CityAdmin. Votre mission, c'est de faire un peu de nettoyage. Plus particulièrement concernant les %TARGET_NPCNAME(0). Exterminez-en au moins %TARGET_VALUE(0,1), et à votre retour je vous donnerai votre récompense de la part de BioTech.")
                SETNEXTDIALOGSTATE(2)
                ENDDIALOG()

        NODE(2) 
                ISMISSIONTARGETACCOMPLISHED(0)
                        if (result==0) then -- Mission is NOT accomplished
                                SAY("Qu'est-ce que vous faites ici ? Allez finir votre travail !!")
                                SAY("Mais qu'est-ce que vous êtes en train de faire ? Vous devez en abattre au moins %TARGET_VALUE(0,1) pour toucher votre récompense. Maintenant, en chasse !")
                                ENDDIALOG()
                        else
                                SAY("Bon travail, runner. Voici vos %REWARD_MONEY() crédits. Consultez régulièrement les terminaux pour des missions proposées par BioTech. Nous avons besoin de personnes qualifiées telles que vous. J'espère vous revoir rapidement. Passez une bonne journée.")
                                SAY("Vous revoilà enfin. J'espère que vous n'avez pas eu trop de problèmes avec votre mission. Si vous voulez remplir des missions similaires, n'hésitez pas à consulter les terminaux. Voilà vos crédits, vous les avec bien mérités. Au revoir, runner.") 
                                ACTIVATEDIALOGTRIGGER(1)
                                ENDDIALOG()
                        end

        NODE(3)
                GENDERCHECK()
                        if (result==1) then -- Runner is male.
                                SAY("Monsieur, arrêtez de me faire perdre mon temps. Bonne journée.")
                                SAY("Monsieur, je suis très occupé. Veuillez me laisser tranquille.")
                                SAY("Je n'ai pas le temps de discuter. Laissez-moi tranquille.")
                                SAY("Vous pensez vraiment que j'ai le temps de bavarder, monsieur ? Allez, bonne journée.")
                                ENDDIALOG()
                        else
                                SAY("Madame, arrêtez de me faire perdre mon temps. Bonne journée.")
                                SAY("Madame, je suis très occupé. Veuillez me laisser tranquille.")
                                SAY("Je n'ai pas le temps de discuter. Laissez-moi tranquille.")
                                SAY("Vous pensez vraiment que j'ai le temps de bavarder, Madame ? Allez, bonne journée.")
                                ENDDIALOG()
                        end

end

