function DIALOG()

	NODE(0)

		SAY("Bonjour! J'ai quelque chose à vous proposer. Ca vous intéresse?")
		SAY("Bonjour, j'ai un travail important à vous proposer, mais c'est peut-être un peu dangereux. Qu'est-ce que vous en dites?")
		SAY("Bonjour, qu'est-ce que vous diriez d'une mission secrète?")
		
		ANSWER("Bien sûr!", 1)
		ANSWER("Evidemment! C'est ma chance de prouver ma loyauté envers la faction!", 1)
		ANSWER("Je suis partant. J'écoute!", 1)

		ANSWER("Je ne veux pas m'impliquer dans ce genre de choses.",20)
		ANSWER("Pardon, mais je n'ai pas ce qu'il faut pour ça.",20)
		ANSWER("Non, pas maintenant.",20)

	NODE(1)
		SAY("OK. Mais il faut vraiment que ça reste entre nous. La vie de %NPC_NAME(0) en dépend.")

		ANSWER("Pourquoi sa vie dépend-elle de ça?",2)
		ANSWER("Sa vie? Mais qui est-ce?",2)

	NODE(2)
		SAY("%NPC_NAME(0) est un membre loyal de notre faction, qui a infiltré %FRACTION_NAME(%NPC_TYPE(0)) pour enquêter sur leur structure interne.")

		ANSWER("Je vois. Mais qu'est-ce que je dois faire dans tout ça?",3)
		ANSWER("Je comprends mieux. Et mon rôle dans tout ça?",3)

		ANSWER("Stop! Plus un mot... je ne veux plus rien entendre. Je ne veux pas être mêlé à tout ça.",20)
		ANSWER("Je ne crois pas ce que vous me dites. C'est impossible. Je m'en vais.",20)

	NODE(3)

		SAY("Nous voulons que vous lui donniez ce décodeur afin qu'il puisse enquêter sur les plus importantes structures de leur réseau. Vous pensez que vous en serez capable?")

		ANSWER("Oui, je pense.", 4)
		ANSWER("OK. Je m'en charge.", 4)

		ANSWER("Non, c'est trop difficile pour moi.", 20)
		ANSWER("Demandez à quelqu'un d'autre. C'est trop difficile pour moi.", 20)

	NODE(4)
		ACCEPTMISSION()
		GIVEQUESTITEM(99)

		SAY("OK, voilà le décodeur. Faites attention à vous.")
		SAY("Voilà le décodeur, faites attention! Et surtout, n'en parler à personne.")

		ANSWER("OK. Mais où est-ce que je trouve mon contact?", 5)
		ANSWER("OK. Il y a autre chose à savoir?", 5)

	NODE(5)

		SAY("En effet, j'ai failli oublier. Vous le trouverez dans %NPC_WORLD(0)... et... revenez me voir quand vous aurez terminé, pour toucher votre récompense. Ce sera %REWARD_MONEY() crédits.")

		ANSWER("OK. Préparez le transfert, je serai de retour bientôt.", 6)
		ANSWER("Je ne fais pas ça pour l'argent, mais pour prouver ma loyauté envers %FRACTION_NAME(%NPC_TYPE(4)).", 6)

	NODE(6)

		SAY("Ouais, ouais... Mais dépêchez-vous, maintenant.")

		SETNEXTDIALOGSTATE(15)
		ENDDIALOG()

	NODE(7)

		SAY("Je ne parle pas aux gens de %FRACTION_NAME(%NPC_TYPE(4)). Sortez d'ici avant que je fasse venir la sécurité!")
		SAY("Sortez d'ici. On n'aime pas les gens de votre espèce, vous ne devriez pas être là.")

		ANSWER("%NPC_NAME(4) m'a donné ça pour vous... Je pense que vous savez quoi en faire...",8)

		ANSWER("Si vous n'en voulez pas, je vais le revendre ailleurs, c'est votre problème.", 21)
		ANSWER("Je voulais simplement vous donner quelque chose, mais ne voulez pas coopérer, on oublie.",21)

	NODE(8)

		SAY("Chut!...*chuchote*... Je vois. Qu'est-ce que vous savez sur moi?...")
		SAY("Hé!...*chuchote*... Personne ne doit nous entendre, ou bien... Merci. Qu'est-ce que vous savez sur ma... mission?...")

		ANSWER("...*chuchote*...Pas grand chose... et pour être honnête... ça ne m'intéresse pas...",9)
		ANSWER("...*chuchote*..Je fais ça uniquement pour %FRACTION_NAME(%NPC_TYPE(4)). Alors épargnez-moi les détails...",9)

	NODE(9)

		TAKEQUESTITEM(99)
		if(result==1) then
			SAY("...*chuchote*...Enfin! Merci. Il vaudrait mieux que vous n'en sachiez pas trop... Allez toucher votre récompense.");
			SAY("...*chuchote*...Merci... Partez, maintenant. On commence à nous surveiller...");
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()			
			SETNEXTDIALOGSTATE(21)
		else
			SAY("...*chuchote*... Alors, vous l'avez?...");
			SAY("...*chuchote*... Ne jouez pas à ça avec moi. C'est très important...");
			ENDDIALOG()			
			SETNEXTDIALOGSTATE(9)
		end
			
	NODE(15)
		
		ISMISSIONTARGETACCOMPLISHED(0)
		if( result==0 ) then

			SAY("Allons! Vous savez que c'est important! Ne revenez pas tant que la livraison n'est pas effectuée.")
			ENDDIALOG()

		else			

			SAY("Merci pour votre travail. Nous avons un avantage stratégique, maintenant. Tenez, voici votre argent.")
			SAY("Grâce à votre excellent travail, nous sommes maintenant en position de force face à %FRACTION_NAME(%NPC_TYPE(0)). Voici votre argent, vous l'avez bien mérité.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()

		end


	NODE(20)

		SAY("J'en suis navré. Nous allons devoir trouver quelqu'un d'autre.")
		SAY("Revenez si vous changez d'avis.")
		SAY("Si vous connaissez quelqu'un qui peut nous aider, envoyez-le ici!")
		
		ENDDIALOG()

	NODE(21)

		SAY("...*chuchote*... Tu essaies de m'avoir, c'est ça? %NPC_NAME(4) n'aurait jamais confié ce travail à quelqu'un comme toi...")
		
		ENDDIALOG()
end