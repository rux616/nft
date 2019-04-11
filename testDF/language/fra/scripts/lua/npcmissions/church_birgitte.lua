--new
function DIALOG()
--Birgitte ist beim Tode ihrer Familie wahnsinnig geworden
	NODE(0)
		SAY("Ils sont tous morts.")
		SAY("Je suis toute seule maintenant.")
		SAY("J'ai peur...")
		
		ANSWER("Quel est le probl�me? Vous avez besoin d'aide?",2)
		ANSWER("Euh... J'ai rien vu et rien entendu, moi. D�brouillez-vous.",1)
	NODE(1)
		SAY("Je vous en supplie, ne me laissez pas ici... toute seule... j'ai peur...")
		ENDDIALOG()
	NODE(2)
		SAY("Ce sont les bots qui les ont tu�s. Je vois encore les flammes et le sang.")
		
		ANSWER("...",3)
	NODE(3)
		SAY("Mon p�re... ma m�re... et ma... ma soeur... Maintenant je n'ai plus personne.")
		
		ANSWER("Je peux faire quelque chose pour vous aider?",4)
	NODE(4)
		SAY("Vous entendez? Ils reviennent! Vite, d�p�chez-vous! La mort approche...")
		
		ANSWER("Je n'entends rien du tout.",5)
	NODE(5)
		SAY("Ils sont intelligents, vous savez. Ils peuvent voir dans le noir et vous d�couper en morceaux. Et tout �a en vous regardant de leurs yeux froids...")
		
		ANSWER("Vous devez avoir v�cu quelque chose d'horrible...",6)
	NODE(6)
		SAY("Les hurlements... le sang de ma soeur sur mes mains, la peur insoutenable dans ses yeux... Mon dieu! Est-ce que je suis d�j� en enfer?")
		
		ANSWER("Peut-�tre que P�re Gregory, de l'Eglise, sait comment l'aider.",7)
	NODE(7)
		SAY("Je ne dors plus. Toutes les nuits je r�ve de �a. Je vous en supplie, ne me laissez pas seule...")
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()
	
--got some drugs from the preacher
	NODE(8)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Dites-moi! Est-ce qu'ils sont revenus? Est-ce qu'ils vont me tuer? Je vous en prie, prot�gez-moi!")
			ENDDIALOG()
		else
			SAY("J'entends les hurlements, je sens l'odeur de la chair br�l�e. Encore et toujours.")
			
			ANSWER("Ne vous inqui�tez pas. Tout ira mieux lorsque vous aurez pris cette drogue.",9)
		end
	NODE(9)
		SAY("Ne me faites pas de mal... Oh, �a tourne...")
		
		ANSWER("Le pr�cheur m'a pr�venu qu'elle serait dans un �tat de l�thargie apr�s la prise de la drogue.",10)
	NODE(10)
		SAY("...")
		
		ANSWER("Bon, � pr�sent je ne peux plus rien faire de plus.",11)
	NODE(11)
		SAY("...")
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()	
		
--the preacher knows about Birgitte
	NODE(12)
		SAY("Bonjour. C'est un plaisir de vous voir en notre �glise.")
		
		ANSWER("Je ne viens pas pour prier, mais pour vous demander ce qui s'�tait pass� avec cette fille qui vit dans la rue.",13)
	NODE(13)
		SAY("Vous parlez de Brigitte? Oh, c'est une histoire bien triste... Je ne pense pas qu'elle vous int�resserait.")
		
		ANSWER("Je lui ai parl�, et je veux comprendre ce qui s'est pass�.",14)
		ANSWER("Je passais seulement admirer votre �glise. Alors � une prochaine fois.",1)
	NODE(14)
		SAY("Il y a quelques ann�es, ce village �tait un peu plus grand qu'aujourd'hui. La petite communaut� qui y vivait avait r�ussi � prosp�rer en d�pit de l'environnement hostile.")
		
		ANSWER("...",15)
	NODE(15)
		SAY("Mais un jour, tout a chang�. Tout cela � cause d'une attaque d�vastatrice. Le village a subi l'invasion d'un groupe de Warbots, et de pire encore.")
		
		ANSWER("...",16)
	NODE(16)
		SAY("Le village a �t� transform� en gravats, et les petites unit�s m�canis�s ont fouill� tous les recoins et ont tu� tout le monde. Tout le monde, sauf... euh...")
		
		ANSWER("Brigitte?",17)
	NODE(17)
		SAY("Oui. Neocron ne l'a pas aid�e, la priorit� �tait de contr�ler le crime dans la ville, pas de s'occuper des �mes perdues.")
		
		ANSWER("Ella a donc perdu tout ce qu'elle avait? Qui se soucie d'elle maintenant?",18)
	NODE(18)
		SAY("Je m'occupe d'elle du mieux que je peux, mais j'ai du travail ici � l'�glise, et elle ne veut pas nous quitter.")
		
		ANSWER("Elle n'a pas l'air au meilleur de sa forme actuellement.",19)
	NODE(19)
		SAY("Oui, �a lui revient de temps en temps. Mais la seule mani�re que je connaisse d'emp�cher �a, c'est de la droguer. Vous voudriez bien avoir la bont� de lui donner quelques pilules?")
		
		ANSWER("Si c'est ce dont elle a besoin...",20)
		ANSWER("Non, pr�cheur. Je pense que c'est � vous de faire �a.",1)
	NODE(20)
		GIVEITEM(701)
		SAY("Tenez, c'est pour elle. Merci de votre gentillesse.")
		SETNEXTDIALOGSTATE(21)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(21)
		SAY("Avez-vous donn� ses pilules � Brigitte?")
		ENDDIALOG()
end