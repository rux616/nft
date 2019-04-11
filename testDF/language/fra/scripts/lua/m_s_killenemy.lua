function DIALOG()

	NODE(0)

		SAY("Hé, psst! Je cherche un assassin pour un travail important!")
		SAY("Oh. Vous êtes la personne que je cherchais. Une mission importante pour %FRACTION_NAME( %NPC_TYPE(4)), ça vous intéresserait?")

		ANSWER("Bien sûr! De quoi s'agit-il?",2)
		ANSWER("Hors de mon chemin!",1)
		ANSWER("Laissez-moi tranquille!",1)
		ANSWER("NON!",1)		

	NODE(1)

		SAY("Bon, vous n'avez peut-être pas le talent...")	
		SAY("Alors circulez.")	
		SAY("Hmm. Peut-être une prochaine fois...")	
		ENDDIALOG()
	

	NODE(2)

		SAY("OK, alors écoutez bien. Pour des raisons de fonctionnement, il faut qu'un de nos pires ennemis, %NPC_NAME(0), qui travaille pour %FRACTION_NAME( %NPC_TYPE(0)) dans %NPC_WORLD(0), soit éliminé immédiatement. Quand vous avec fini, revenez ici et vous toucherez une récompense de %REWARD_MONEY() crédits. Vous acceptez?");

		ANSWER("Bien sûr.",3)
		ANSWER("D'accord.",3)
		ANSWER("Ouaip.",3)
		ANSWER("Pas question.",1)
		ANSWER("NON!",1)
		ANSWER("Haha... pas question!",1)

	NODE(3)

		SAY("OK, alors dépêchez-vous. Nous devons donner une leçon à %FRACTION_NAME( %NPC_TYPE(0)).")

		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()

	NODE(4)

		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Qu'est-ce que vous attendez! Allez tuer %NPC_NAME(0)!")
			SAY("Allez-y. Vous n'avez pas encore terminé votre mission.")
			SAY("On nous signale que %NPC_NAME(0) est toujours en vie. Vous n'avez plus beaucoup de temps!")
			ENDDIALOG()

		else			

			SAY("OK, on nous a signalé que votre mission avait été remplie. Voici votre récompense.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()

		end

	NODE(10)

		SAY("Qui êtes-vous?")
		SAY("Qu'est-ce que vous voulez?")
		SAY("On n'aime pas les inconnus, ici...")
		SAY("Allez, dehors!")

		ENDDIALOG()

end