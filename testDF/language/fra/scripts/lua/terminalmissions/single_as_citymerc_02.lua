function DIALOG()

	NODE(0)
		SAY("Des questions, runner?")
		SAY("Quoi, runner?")
		SAY("Besoin de quelque chose, runner?")
		
		ANSWER("J'ai trouv� un job sur un terminal, et j'ai pens� que �a pouvait m'int�resser. Je pense �tre au bon endroit. Je voudrais remplir la mission d'ex�cution pour laquelle vous cherchez quelqu'un.")
		ANSWER("J'ai vu une annonce sur un terminal, et j'estime avoir les comp�tences requises. Laissez-moi prendre en charge cette ex�cution.",1)
		ANSWER("Je pense que je ne devrais pas �tre l�. Au revoir.",3)

	NODE(1)
		SAY("Il est de la plus haute importance que vous gardiez le silence absolu sur ce que je vais vous dire, que ce soit avant ou apr�s l'ex�cution de cette t�che. Rendez-vous � %NCP_WORLD(1). Une fois sur place, ex�cutez %NPC_NAME(1). Je ne peux vous donner plus d'informations, runner, je pense que vous comprenez que l'affaire est sensible. C'est moi qui vous paierai. Rompez.")
		SAY("Runner, ne posez aucune question que les informations que je vais vous donner. Rendez-vous � %NPC_WORLD(1). Localisez et �liminez %NPC_NAME(1). Si vous agissez correctement, nous vous en serons reconnaissants. Revenez me voir lorsque votre mission sera accomplie.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, partez tout de suite, ou vous allez en subir les cons�quences.")
				SAY("Runner, partez imm�diatement !!")
				ENDDIALOG()
			else
				SAY("Voici vos %REWARD_MONEY() cr�dits. Vous avez bien agi. Pensez � surveiller votre terminal pour de futures offres. Bonne journ�e. Rompez.")
				SAY("Bien, vous revoil�. J'avais quelques doutes sir vos comp�tences, mais je me suis tromp�. Acceptez ces %REWARD_MONEY() cr�dits. Votre capacit� � agir sous la pression est tr�s utile. Nous pourrions avoir besoin de vous prochainement, pensez � surveiller votre terminal.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Au revoir.")
		SAY("Revenez lorsque vous aurez des questions, runner. Au revoir.")
		SAY("Veuillez partir, runner. Je n'ai pas le temps de vous parler.")
		ENDDIALOG()
	
end



