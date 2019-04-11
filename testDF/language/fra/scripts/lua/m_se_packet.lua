function DIALOG()

	NODE(0)

		SAY("Bonjour! J'ai quelque chose � vous proposer. Ca vous int�resse?")
		SAY("Bonjour, j'ai un travail important � vous proposer, mais c'est peut-�tre un peu dangereux. Qu'est-ce que vous en dites?")
		SAY("Bonjour, qu'est-ce que vous diriez d'une mission secr�te?")
		
		ANSWER("Bien s�r!", 1)
		ANSWER("Evidemment! C'est ma chance de prouver ma loyaut� envers la faction!", 1)
		ANSWER("Je suis partant. J'�coute!", 1)

		ANSWER("Je ne veux pas m'impliquer dans ce genre de choses.",20)
		ANSWER("Pardon, mais je n'ai pas ce qu'il faut pour �a.",20)
		ANSWER("Non, pas maintenant.",20)

	NODE(1)
		SAY("OK. Mais il faut vraiment que �a reste entre nous. La vie de %NPC_NAME(0) en d�pend.")

		ANSWER("Pourquoi sa vie d�pend-elle de �a?",2)
		ANSWER("Sa vie? Mais qui est-ce?",2)

	NODE(2)
		SAY("%NPC_NAME(0) est un membre loyal de notre faction, qui a infiltr� %FRACTION_NAME(%NPC_TYPE(0)) pour enqu�ter sur leur structure interne.")

		ANSWER("Je vois. Mais qu'est-ce que je dois faire dans tout �a?",3)
		ANSWER("Je comprends mieux. Et mon r�le dans tout �a?",3)

		ANSWER("Stop! Plus un mot... je ne veux plus rien entendre. Je ne veux pas �tre m�l� � tout �a.",20)
		ANSWER("Je ne crois pas ce que vous me dites. C'est impossible. Je m'en vais.",20)

	NODE(3)

		SAY("Nous voulons que vous lui donniez ce d�codeur afin qu'il puisse enqu�ter sur les plus importantes structures de leur r�seau. Vous pensez que vous en serez capable?")

		ANSWER("Oui, je pense.", 4)
		ANSWER("OK. Je m'en charge.", 4)

		ANSWER("Non, c'est trop difficile pour moi.", 20)
		ANSWER("Demandez � quelqu'un d'autre. C'est trop difficile pour moi.", 20)

	NODE(4)
		ACCEPTMISSION()
		GIVEQUESTITEM(99)

		SAY("OK, voil� le d�codeur. Faites attention � vous.")
		SAY("Voil� le d�codeur, faites attention! Et surtout, n'en parler � personne.")

		ANSWER("OK. Mais o� est-ce que je trouve mon contact?", 5)
		ANSWER("OK. Il y a autre chose � savoir?", 5)

	NODE(5)

		SAY("En effet, j'ai failli oublier. Vous le trouverez dans %NPC_WORLD(0)... et... revenez me voir quand vous aurez termin�, pour toucher votre r�compense. Ce sera %REWARD_MONEY() cr�dits.")

		ANSWER("OK. Pr�parez le transfert, je serai de retour bient�t.", 6)
		ANSWER("Je ne fais pas �a pour l'argent, mais pour prouver ma loyaut� envers %FRACTION_NAME(%NPC_TYPE(4)).", 6)

	NODE(6)

		SAY("Ouais, ouais... Mais d�p�chez-vous, maintenant.")

		SETNEXTDIALOGSTATE(15)
		ENDDIALOG()

	NODE(7)

		SAY("Je ne parle pas aux gens de %FRACTION_NAME(%NPC_TYPE(4)). Sortez d'ici avant que je fasse venir la s�curit�!")
		SAY("Sortez d'ici. On n'aime pas les gens de votre esp�ce, vous ne devriez pas �tre l�.")

		ANSWER("%NPC_NAME(4) m'a donn� �a pour vous... Je pense que vous savez quoi en faire...",8)

		ANSWER("Si vous n'en voulez pas, je vais le revendre ailleurs, c'est votre probl�me.", 21)
		ANSWER("Je voulais simplement vous donner quelque chose, mais ne voulez pas coop�rer, on oublie.",21)

	NODE(8)

		SAY("Chut!...*chuchote*... Je vois. Qu'est-ce que vous savez sur moi?...")
		SAY("H�!...*chuchote*... Personne ne doit nous entendre, ou bien... Merci. Qu'est-ce que vous savez sur ma... mission?...")

		ANSWER("...*chuchote*...Pas grand chose... et pour �tre honn�te... �a ne m'int�resse pas...",9)
		ANSWER("...*chuchote*..Je fais �a uniquement pour %FRACTION_NAME(%NPC_TYPE(4)). Alors �pargnez-moi les d�tails...",9)

	NODE(9)

		TAKEQUESTITEM(99)
		if(result==1) then
			SAY("...*chuchote*...Enfin! Merci. Il vaudrait mieux que vous n'en sachiez pas trop... Allez toucher votre r�compense.");
			SAY("...*chuchote*...Merci... Partez, maintenant. On commence � nous surveiller...");
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()			
			SETNEXTDIALOGSTATE(21)
		else
			SAY("...*chuchote*... Alors, vous l'avez?...");
			SAY("...*chuchote*... Ne jouez pas � �a avec moi. C'est tr�s important...");
			ENDDIALOG()			
			SETNEXTDIALOGSTATE(9)
		end
			
	NODE(15)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allons! Vous savez que c'est important! Ne revenez pas tant que la livraison n'est pas effectu�e.")
			ENDDIALOG()

		else			

			SAY("Merci pour votre travail. Nous avons un avantage strat�gique, maintenant. Tenez, voici votre argent.")
			SAY("Gr�ce � votre excellent travail, nous sommes maintenant en position de force face � %FRACTION_NAME(%NPC_TYPE(0)). Voici votre argent, vous l'avez bien m�rit�.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("J'en suis navr�. Nous allons devoir trouver quelqu'un d'autre.")
		SAY("Revenez si vous changez d'avis.")
		SAY("Si vous connaissez quelqu'un qui peut nous aider, envoyez-le ici!")
		
		ENDDIALOG()

	NODE(21)

		SAY("...*chuchote*... Tu essaies de m'avoir, c'est �a? %NPC_NAME(4) n'aurait jamais confi� ce travail � quelqu'un comme toi...")
		
		ENDDIALOG()
end