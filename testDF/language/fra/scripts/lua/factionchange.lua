--new
--BioTech

function DIALOG()
NODE(0)

	SAY("C'est moi qui m'occupe de traiter les requêtes de changement de faction. Quelle est la faction qui vous intéresse?")
			
	ANSWER("En fait, je n'ai pas envie de changer. Oubliez-moi.",110)
	ANSWER("CityAdmin.",2)
	ANSWER("Diamond Immobilier.",12)
	ANSWER("ProtoPharm.",22)
	ANSWER("BioTech.",32)
	ANSWER("Tangent Technologies.",42)
	ANSWER("CityMercs.",52)
	ANSWER("Les Anges Déchus.",62)
	ANSWER("Les Gardiens du Crépuscule.",72)
	ANSWER("Le Dragon Noir.",82)
	ANSWER("Tsunami.",92)
	ANSWER("NEXT.",102)
	ANSWER("Crahn.",122)

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL CityAdmin
	NODE(1)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(2)
		GETFACTIONSYMPATHY(1)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",3)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(3)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",4)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",1)
	NODE(4)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(1)
			SAY("Bienvenue à CityAdmin.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL Diamond Real Estate
	NODE(11)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(12)
		GETFACTIONSYMPATHY(2)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",13)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(13)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",14)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",11)
	NODE(14)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(2)
			SAY("Bienvenue à Diamond Immobilier.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL ProtoPharm
	NODE(21)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(22)
		GETFACTIONSYMPATHY(6)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",23)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(23)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",24)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",21)
	NODE(24)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(6)
			SAY("Bienvenue chez ProtoPharm.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL BioTech
	NODE(31)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(32)
		GETFACTIONSYMPATHY(5)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",33)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(33)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",34)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",31)
	NODE(34)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(5)
			SAY("Bienvenue chez BioTech.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL Tangent
	NODE(41)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(42)
		GETFACTIONSYMPATHY(4)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",43)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(43)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",44)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",41)
	NODE(44)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(4)
			SAY("Bienvenue chez Tangent.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL CityMerc
	NODE(51)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(52)
		GETFACTIONSYMPATHY(11)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",53)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(53)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",54)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",51)
	NODE(54)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(11)
			SAY("Bienvenue chez les CityMercs.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL FallenAngels
	NODE(61)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(62)
		GETFACTIONSYMPATHY(14)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",63)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(63)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",64)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",61)
	NODE(64)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(14)
			SAY("Bienvenue chez les Anges Déchus.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL Twilight Guardian
	NODE(71)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(72)
		GETFACTIONSYMPATHY(15)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",73)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(73)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",74)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",71)
	NODE(74)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(15)
			SAY("Bienvenue chez les Gardiens du Crépuscule.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL Black Dragon
	NODE(81)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(82)
		GETFACTIONSYMPATHY(9)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",83)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(83)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",84)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",81)
	NODE(84)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(9)
			SAY("Bienvenue chez le Dragon Noir.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL Tsunami
	NODE(91)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(92)
		GETFACTIONSYMPATHY(8)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",93)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(93)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",94)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",91)
	NODE(94)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(8)
			SAY("Bienvenue chez Tsunami.")
			ENDDIALOG()
		end
----------------------------------------------------
--FRAKTIONSWECHSEL NEXT
	NODE(101)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(102)
		GETFACTIONSYMPATHY(3)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",103)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(103)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",104)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",101)
	NODE(104)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(3)
			SAY("Bienvenue chez NEXT.")
			ENDDIALOG()
		end
	NODE(110)
		SAY("Alors ne me faites pas perdre mon temps.")
		ENDDIALOG()
----------------------------------------------------
--FRAKTIONSWECHSEL Crahn
	NODE(121)
		SAY("J'ai beaucoup de travail. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(122)
		GETFACTIONSYMPATHY(10)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les données que j'ai ici, votre statut est tout ce qu'il y a de respectable. Très bien, il vous en coûtera 300.000 crédits.")
	
			ANSWER("Eh bien, ça n'est pas donné!",123)
		else
			SAY("Vous feriez mieux de vous en aller, je pense que la faction qui vous intéresse, vous ne l'intéressez pas.")
			ENDDIALOG()
		end
	NODE(123)
		SAY("Si vous payez cette somme, ce sera un bon moyen de montrer votre dévouement envers votre nouvelle faction.")

		ANSWER("Très bien, je vais payer.",124)
		ANSWER("Laissez tomber. Je ne vais pas dépenser tant d'argent pour une futilité.",121)
	NODE(124)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(10)
			SAY("Bienvenue dans la Fraternité de Crahn.")
			ENDDIALOG()
		end
end