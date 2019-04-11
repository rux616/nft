function DIALOG()

	NODE(0)
		SAY("Des questions, runner?")
		SAY("Quoi, runner?")
		SAY("Besoin de quelque chose, runner?")
		
		ANSWER("J'ai trouvé un job sur un terminal, et j'ai pensé que ça pouvait m'intéresser. Je pense être au bon endroit. Je voudrais remplir la mission d'exécution pour laquelle vous cherchez quelqu'un.")
		ANSWER("J'ai vu une annonce sur un terminal, et j'estime avoir les compétences requises. Laissez-moi prendre en charge cette exécution.",1)
		ANSWER("Je pense que je ne devrais pas être là. Au revoir.",3)

	NODE(1)
		SAY("Il est de la plus haute importance que vous gardiez le silence absolu sur ce que je vais vous dire, que ce soit avant ou après l'exécution de cette tâche. Rendez-vous à %NCP_WORLD(1). Une fois sur place, exécutez %NPC_NAME(1). Je ne peux vous donner plus d'informations, runner, je pense que vous comprenez que l'affaire est sensible. C'est moi qui vous paierai. Rompez.")
		SAY("Runner, ne posez aucune question que les informations que je vais vous donner. Rendez-vous à %NPC_WORLD(1). Localisez et éliminez %NPC_NAME(1). Si vous agissez correctement, nous vous en serons reconnaissants. Revenez me voir lorsque votre mission sera accomplie.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Runner, partez tout de suite, ou vous allez en subir les conséquences.")
				SAY("Runner, partez immédiatement !!")
				ENDDIALOG()
			else
				SAY("Voici vos %REWARD_MONEY() crédits. Vous avez bien agi. Pensez à surveiller votre terminal pour de futures offres. Bonne journée. Rompez.")
				SAY("Bien, vous revoilà. J'avais quelques doutes sir vos compétences, mais je me suis trompé. Acceptez ces %REWARD_MONEY() crédits. Votre capacité à agir sous la pression est très utile. Nous pourrions avoir besoin de vous prochainement, pensez à surveiller votre terminal.") 
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(3)
		SAY("Au revoir.")
		SAY("Revenez lorsque vous aurez des questions, runner. Au revoir.")
		SAY("Veuillez partir, runner. Je n'ai pas le temps de vous parler.")
		ENDDIALOG()
	
end



