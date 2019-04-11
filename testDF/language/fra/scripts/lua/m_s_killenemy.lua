function DIALOG()

	NODE(0)

		SAY("H�, psst! Je cherche un assassin pour un travail important!")
		SAY("Oh. Vous �tes la personne que je cherchais. Une mission importante pour %FRACTION_NAME( %NPC_TYPE(4)), �a vous int�resserait?")

		ANSWER("Bien s�r! De quoi s'agit-il?",2)
		ANSWER("Hors de mon chemin!",1)
		ANSWER("Laissez-moi tranquille!",1)
		ANSWER("NON!",1)		

	NODE(1)

		SAY("Bon, vous n'avez peut-�tre pas le talent...")	
		SAY("Alors circulez.")	
		SAY("Hmm. Peut-�tre une prochaine fois...")	
		ENDDIALOG()
	

	NODE(2)

		SAY("OK, alors �coutez bien. Pour des raisons de fonctionnement, il faut qu'un de nos pires ennemis, %NPC_NAME(0), qui travaille pour %FRACTION_NAME( %NPC_TYPE(0)) dans %NPC_WORLD(0), soit �limin� imm�diatement. Quand vous avec fini, revenez ici et vous toucherez une r�compense de %REWARD_MONEY() cr�dits. Vous acceptez?");

		ANSWER("Bien s�r.",3)
		ANSWER("D'accord.",3)
		ANSWER("Ouaip.",3)
		ANSWER("Pas question.",1)
		ANSWER("NON!",1)
		ANSWER("Haha... pas question!",1)

	NODE(3)

		SAY("OK, alors d�p�chez-vous. Nous devons donner une le�on � %FRACTION_NAME( %NPC_TYPE(0)).")

		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()

	NODE(4)

		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Qu'est-ce que vous attendez! Allez tuer %NPC_NAME(0)!")
			SAY("Allez-y. Vous n'avez pas encore termin� votre mission.")
			SAY("On nous signale que %NPC_NAME(0) est toujours en vie. Vous n'avez plus beaucoup de temps!")
			ENDDIALOG()

		else			

			SAY("OK, on nous a signal� que votre mission avait �t� remplie. Voici votre r�compense.")
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()

		end

	NODE(10)

		SAY("Qui �tes-vous?")
		SAY("Qu'est-ce que vous voulez?")
		SAY("On n'aime pas les inconnus, ici...")
		SAY("Allez, dehors!")

		ENDDIALOG()

end