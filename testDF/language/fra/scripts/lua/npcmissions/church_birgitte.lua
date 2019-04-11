--new
function DIALOG()
--Birgitte ist beim Tode ihrer Familie wahnsinnig geworden
	NODE(0)
		SAY("Ils sont tous morts.")
		SAY("Je suis toute seule maintenant.")
		SAY("J'ai peur...")
		
		ANSWER("Quel est le problème? Vous avez besoin d'aide?",2)
		ANSWER("Euh... J'ai rien vu et rien entendu, moi. Débrouillez-vous.",1)
	NODE(1)
		SAY("Je vous en supplie, ne me laissez pas ici... toute seule... j'ai peur...")
		ENDDIALOG()
	NODE(2)
		SAY("Ce sont les bots qui les ont tués. Je vois encore les flammes et le sang.")
		
		ANSWER("...",3)
	NODE(3)
		SAY("Mon père... ma mère... et ma... ma soeur... Maintenant je n'ai plus personne.")
		
		ANSWER("Je peux faire quelque chose pour vous aider?",4)
	NODE(4)
		SAY("Vous entendez? Ils reviennent! Vite, dépêchez-vous! La mort approche...")
		
		ANSWER("Je n'entends rien du tout.",5)
	NODE(5)
		SAY("Ils sont intelligents, vous savez. Ils peuvent voir dans le noir et vous découper en morceaux. Et tout ça en vous regardant de leurs yeux froids...")
		
		ANSWER("Vous devez avoir vécu quelque chose d'horrible...",6)
	NODE(6)
		SAY("Les hurlements... le sang de ma soeur sur mes mains, la peur insoutenable dans ses yeux... Mon dieu! Est-ce que je suis déjà en enfer?")
		
		ANSWER("Peut-être que Père Gregory, de l'Eglise, sait comment l'aider.",7)
	NODE(7)
		SAY("Je ne dors plus. Toutes les nuits je rêve de ça. Je vous en supplie, ne me laissez pas seule...")
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
	
--got some drugs from the preacher
	NODE(8)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Dites-moi! Est-ce qu'ils sont revenus? Est-ce qu'ils vont me tuer? Je vous en prie, protégez-moi!")
			ENDDIALOG()
		else
			SAY("J'entends les hurlements, je sens l'odeur de la chair brûlée. Encore et toujours.")
			
			ANSWER("Ne vous inquiétez pas. Tout ira mieux lorsque vous aurez pris cette drogue.",9)
		end
	NODE(9)
		SAY("Ne me faites pas de mal... Oh, ça tourne...")
		
		ANSWER("Le prêcheur m'a prévenu qu'elle serait dans un état de léthargie après la prise de la drogue.",10)
	NODE(10)
		SAY("...")
		
		ANSWER("Bon, à présent je ne peux plus rien faire de plus.",11)
	NODE(11)
		SAY("...")
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()	
		
--the preacher knows about Birgitte
	NODE(12)
		SAY("Bonjour. C'est un plaisir de vous voir en notre église.")
		
		ANSWER("Je ne viens pas pour prier, mais pour vous demander ce qui s'était passé avec cette fille qui vit dans la rue.",13)
	NODE(13)
		SAY("Vous parlez de Brigitte? Oh, c'est une histoire bien triste... Je ne pense pas qu'elle vous intéresserait.")
		
		ANSWER("Je lui ai parlé, et je veux comprendre ce qui s'est passé.",14)
		ANSWER("Je passais seulement admirer votre église. Alors à une prochaine fois.",1)
	NODE(14)
		SAY("Il y a quelques années, ce village était un peu plus grand qu'aujourd'hui. La petite communauté qui y vivait avait réussi à prospérer en dépit de l'environnement hostile.")
		
		ANSWER("...",15)
	NODE(15)
		SAY("Mais un jour, tout a changé. Tout cela à cause d'une attaque dévastatrice. Le village a subi l'invasion d'un groupe de Warbots, et de pire encore.")
		
		ANSWER("...",16)
	NODE(16)
		SAY("Le village a été transformé en gravats, et les petites unités mécanisés ont fouillé tous les recoins et ont tué tout le monde. Tout le monde, sauf... euh...")
		
		ANSWER("Brigitte?",17)
	NODE(17)
		SAY("Oui. Neocron ne l'a pas aidée, la priorité était de contrôler le crime dans la ville, pas de s'occuper des âmes perdues.")
		
		ANSWER("Ella a donc perdu tout ce qu'elle avait? Qui se soucie d'elle maintenant?",18)
	NODE(18)
		SAY("Je m'occupe d'elle du mieux que je peux, mais j'ai du travail ici à l'église, et elle ne veut pas nous quitter.")
		
		ANSWER("Elle n'a pas l'air au meilleur de sa forme actuellement.",19)
	NODE(19)
		SAY("Oui, ça lui revient de temps en temps. Mais la seule manière que je connaisse d'empêcher ça, c'est de la droguer. Vous voudriez bien avoir la bonté de lui donner quelques pilules?")
		
		ANSWER("Si c'est ce dont elle a besoin...",20)
		ANSWER("Non, prêcheur. Je pense que c'est à vous de faire ça.",1)
	NODE(20)
		GIVEITEM(701)
		SAY("Tenez, c'est pour elle. Merci de votre gentillesse.")
		SETNEXTDIALOGSTATE(21)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(21)
		SAY("Avez-vous donné ses pilules à Brigitte?")
		ENDDIALOG()
end