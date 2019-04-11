function DIALOG()

	NODE(0)
		DOYALIGNMENT()
			if( result==-1 ) then
			-- Fall 1: Reza Anh�nger
				SAY("Bonjour, runner. On m'a pr�venu que vous aviez pass� la proc�dure avec succ�s. Mes f�licitations.")
				ANSWER("Proc�dure? Quelle proc�dure?",1)
			else
			-- Fall 2: Reza Feind
				SAY("Bonjour, runner. Dirigez-vous imm�diatement vers le GenReplicateur et quittez cet endroit au plus vite.")
				ANSWER("Qu'est-ce que vous faites ici? O� suis-je?! ...Ohhh...ma t�te... Je ne me souviens plus de rien. Il y avait cette lumi�re intense, et puis...",11)	
			end
		
	NODE(1)
		SAY("Euh... Oui, d'accord. Qu'est-ce que vous voulez?")
		ANSWER("On m'a dit que vous aviez de l'argent pour que j'utilise un GenReplicateur.",2)
		ANSWER("J'ai besoin de faire quelques achats. C'est possible?",8)
		
	NODE(2)	
		SAY("Bien. Si vous avez un peu de temps libre, vous pourriez nous rendre, en particulier � notre technicien chef, un grand service. Je vous conseille aussi de vous r�habituer � l'interface R.P.O.S.. Parce qu'une fois que vous quittez cet endroit, vous ne pouvez plus y revenir.")
		ANSWER("D�sol�, tout ce que je veux c'est retourner � la maison.",6)
		ANSWER("Si je peux vous aider, c'est avec plaisir.",3)

-- Auftrag angenommen
	
	NODE(3)
		SAY("Ravi de l'entendre. Nous avons actuellement quelques probl�mes avec nos installations de surveillance. Il semble qu'il y ait un virus l�-dedans. Actuellement, on n'a pas de solution.")
		ANSWER("Vous feriez mieux de faire appel � un sp�cialiste. Comment est-ce que je peux vous aider?",4)
	
	NODE(4)
		SAY("Certaines de ces installation sont des prototypes. Ils contiennent des puce r�volutionnaires que nous devons r�cup�rer � tout prix. Vous devez en r�cup�rer au moins 4 et les donner au technicien chef. C'est tout. Le personnel de s�curit�, il s'occupe... de s�curit�, et il ne veut pas entendre parler de notre probl�me.")
		ANSWER("Bien. Je vais voir ce que je peux faire.",5)	

	NODE(5)
		SAY("Excellent. Alors allez voir notre technicien chef l�-bas, et ne parlez � personne de ce que je viens de vous dire.")
		ENDDIALOG()
	
-- Auftrag abgelehnt
	
	NODE(6)
		SAY("Je comprends. Si vous voulez vous en aller, allez-y. Mais si vous faites �a, je n'aurai pas le droit de vous donner de l'argent.")
		ANSWER("Il fallait me le dire plus t�t! Alors je veux bien vous aider dans ce cas.",3)
		ANSWER("Bien essay�, mais �a ne marche pas avec moi. Tant pis.",7)
	
	NODE(7)
		SAY("Pas de probl�me. Le GenReplicateur est la petite unit� situ�e pr�s de l'unit� de commande. Bonne journ�e.")
		ENDDIALOG()
	
	NODE(8)
		SAY("Pas de probl�me. Qu'est-ce que vous voulez?")
		TRADE()
		ENDDIALOG()
	


	NODE(11)
		SAY("Je ne peux pas vous donner d'informations. Je suis navr�, mais je vais devoir d�clencher l'alarme.")
		ANSWER("Hein, quoi?! J'exige de savoir ce qui se passe!!",12)

	NODE(12)
		SAY("Quittez les lieux avant que je fasse venir la s�curit�.")
		ENDDIALOG()
		
end
