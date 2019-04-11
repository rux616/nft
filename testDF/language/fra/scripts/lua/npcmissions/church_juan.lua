--NEW
function DIALOG()
--Waffenhändler, Geschäft floriert.
	NODE(0)
		SAY("Entrez, entrez, je peux vous être utile?")
		SAY("Ahh, un client! Venez, approchez!")
		SAY("Je peux vous proposer quelque chose?")
		
		ANSWER("Vous ne chercheriez pas à me vendre quelque chose, par hasard?",2)
		ANSWER("Je ne veux pas entendre un mot de plus. Au revoir.",1)
	NODE(1)
		SAY("Vous venez de rater l'affaire de votre vie...")
		ENDDIALOG()
	NODE(2)
		SAY("Oui, oui, vous avez deviné, mais je ne vends pas seulement quelque chose, je vends ce qu'il y a de meilleur! Faites-moi confiance!")
		
		ANSWER("Alors qu'est-ce que vous vendez?",3)
	NODE(3)
		SAY("Je vends des armes, évidemment. La meilleure monnaie d'échange après le crédit.")
		
		ANSWER("Vous vendez des armes? Comme ça, à côté d'une église?",4)
		ANSWER("Cool, quelles armes est-ce que vous avez?",23)
	NODE(4)
		SAY("Oui, le prêcheur n'arrête pas de me casser les oreilles avec ça, mais je suis plutôt du genre obstiné. Je pense que ce monsieur fait de l'hypertension.")
		
		ANSWER("Vous vous disputez souvent, tous les deux?",5)
	NODE(5)
		SAY("Evidemment, mais au moins ça anime mon existence. Oui il me dit, Juan c'est un péché de vendre des armes, et moi je lui réponds ouais prêcheur, va te faire enc...")
		
		ANSWER("Ca suffit, pas la peine de me faire un dessin...",6)
	NODE(6)
		SAY("Le prêcheur Gregory, il me fait penser à une petite vieille, toujours à marmonner. Mais à part ça, c'est un type cool. C'est juste qu'il a une conception plutôt tordue du monde.")
		
		ANSWER("Pourquoi? Parce qu'il pense que vous devriez faire le bien?",9)
		ANSWER("De ce monde? Oui, vous avez certainement raison.",7)
	NODE(7)
		SAY("Vous voulez voir les armes que je vends?")
		
		--Link zu Waffen
		ANSWER("Evidemment!",23)
		ANSWER("J'en ai eu assez pour aujourd'hui. Au revoir.",1)
		
--Theological discussion
	NODE(8)
		SAY("Oui, et il pense aussi qu'on devrait être plus gentil avec les autres. Il faut qu'il redescende sur terre, le vieux... Vous en voyez beaucoup, des gens qui se soucient des autres? Moi pas.")
		
		ANSWER("Et moi je pense que vous devriez faire le bien.",9)
	NODE(9)
		SAY("Ah oui? Et qu'est-ce que ça t'apporterait? Une vie meilleure? C'est des conneries, un point c'est tout.")
		
		ANSWER("Vous ne faites pas le bien parce que vous ne pensez qu'à vous-même.",12)
		ANSWER("Si vous faites une faveur à quelqu'un, il vous en fera une en retour.",10)
	NODE(10)
		SAY("D'accord, mais je suis pas du genre à travailler pour les beaux yeux de la princesse. Si vous faites quelque chose pour moi, vous me renvoyez l'ascenseur, c'est pas vrai?")
		
		ANSWER("Evidemment!",11)
	NODE(11)
		SAY("Bien! Bon, de quoi on discutait déjà? Ah oui, on parlait d'armes! Vous voulez voir de ce que j'ai en stock?")
		
		--Link zu Waffen
		ANSWER("Bien sûr. Voyons ça.",23)
		ANSWER("Non, je pense que je vais m'en aller. Merci.",1)
	NODE(12)	
		SAY("Eh oui, mais le truc, c'est qu'on fait jamais rien sans avoir quelque chose en retour.")
		
		ANSWER("...",13)
	NODE(13)
		SAY("Même si on fait quelque chose gratuitement, on attend toujours un retour. Même si c'est que la satisfaction d'avoir la conscience tranquille et d'avoir fait quelque chose de bien.")
		
		ANSWER("Je vais y réfléchir...",14)
	NODE(14)
		SAY("Mais on sait même pas la différence entre le bien et le mal. C'est comme le vieux dilemme : sauver 10 personnes ou en sauver 100, mais pas les deux.")
		
		ANSWER("Je choisirais de sauver les 100. C'est un choix évident et rationnel.",15)
		ANSWER("Ca dépend... je choisirais les 10 s'ils ont quelque chose de spécial.",18)
		ANSWER("Je refuserais de choisir, tout simplement.",21)
--save 100 men
	NODE(15)
		SAY("Mais vous venez de condamner 10 innocents, vous ne pensez pas que leur vie avait une quelconque valeur?")
		
		ANSWER("Je pense que cent vies valent mieux que dix.",16)
	NODE(16)
		SAY("Mais si vous laissez ces dix hommes mourir, votre acte n'est-il pas mauvais?")
		
		ANSWER("Non! Pas dans le cas présent!",17)
--general answer
	NODE(17)
		SAY("Bon, on va arrêter de philosopher, ça devient trop profond. On fait une petite pause, d'accord?")
		
		ANSWER("Ca vaut mieux. Au revoir.",1)
		
--save 10 men
	NODE(18)
		SAY("Vous sauvez dix hommes pour en laisser mourir cent? Cent vies contre dix? Pourquoi?")
		
		ANSWER("Je le ferais si les dix avaient quelque chose d'irremplaçable.",19)
	NODE(19)
		SAY("Alors vous divisez l'humanité en personnes plus ou moins importantes. C'est ce que vous voulez?")
		
		ANSWER("Pas du tout! J'essaie seulement de sauver ceux qui ont plus d'importance.",20)
	NODE(20)
		SAY("Mais quand vous dites que certains ont plus d'importance que d'autres, est-ce que ça n'est pas pour autant mauvais de laisser mourir les autres?")
		
		ANSWER("Pas si j'ai le choix de sauver un des deux groupes.",17)
		
--save neither
	NODE(21)
		SAY("Mais vous ne pensez pas que dans certains moments de l'existence on ne peut pas se permettre de rester les bras croisés à ne rien faire?")
		
		ANSWER("Oui, je sais bien...",22)
	NODE(22)
		SAY("Alors vous venez de condamner cent dix vies en refusant d'agir. Refuser d'agir, ça n'est pas un vrai choix, vous êtes bien d'accord?")
		
		ANSWER("Je sais, mais je ne veux pas faire un choix qui me troublerait, qui me donnerait des honneurs ou me troublerait.",17)
		
--Waffen
	NODE(23)
		SAY("Ma stratégie, c'est de construire une certaine arme en grande quantités, et de la revendre à prix réduit. Mais si on est loin de la ville, c'est pas facile à mettre en place.")
		
		ANSWER("Et quel genre d'arme est-ce que vous avez en réserve actuellement?",24)
	NODE(24)
		SAY("Ne me faites pas penser à ça. Ce satané marchand m'en a vendu des dizaines de caisses.")
		
		ANSWER("Ca vous pose un problème?",25)
	NODE(25)
		SAY("Ben oui, parce que maintenant j'ai mis tout mon argent dans ces armes, et plus personne n'en veut.")
		
		ANSWER("Peut-être que ça pourra m'intéresser...",26)
	NODE(26)
		SAY("Ce serait parfait! Je vais vous faire une réduction, cinq pour le prix de trois. Plus vous en prenez, moins vous payez. Qu'est-ce que vous en dites?")
		
		ANSWER("Je vais y réfléchir. Alors, quel genre d'armes est-ce que vous avez?",27)
	NODE(27)
		--Tangent assault rifle 402
		--S 337 F Submachine Guns 27
		SAY("J'ai plein de fusils d'assaut Tangent, et quelques mitrailleuses S-337_F. Vous pouvez les acheter par cinq pour le prix de trois, ou par vingt pour le prix de quinze.")
		
		ANSWER("Laissez tomber. Au revoir.",1)
		ANSWER("OK, je vais prendre cinq fusils d'assaut Tangent.",28)
		ANSWER("Je vais prendre vingt fusils d'assaut Tangent.",30)
		ANSWER("Je vais prendre cinq mitrailleuses S-337_F.",32)
		ANSWER("Je vais acheter vingt mitrailleuses S-337_F.",34)

--five Tangent Assault Rifles
	NODE(28)
		SAY("Ca nous fera 42.000 creds. Marché conclu?")
		
		ANSWER("C'est parti pour cinq fusils d'assaut Tangent!",29)
		ANSWER("Non. Vous vendez quoi d'autre?",27)
		ANSWER("J'ai changé d'avis. Au revoir.",1)
	NODE(29)
		TAKEMONEY(42000)
		if(result==0)then
			SAY("On ne négocie plus! Je vois bien que vous n'avez pas assez d'argent.")
			ENDDIALOG()
		else
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			SAY("Tenez, voilà vos cinq fusils. Amusez-vous bien, et repasser m'en prendre si vous voulez.")
			ENDDIALOG()
		end
		
--twenty Tangent Assault Rifles
	NODE(30)
		SAY("Ca nous fera 210.000 creds. Marché conclu?")
		
		ANSWER("C'est parti pour vingt fusils d'assaut Tangent!",31)
		ANSWER("Non. Vous vendez quoi d'autre?",27)
		ANSWER("J'ai changé d'avis. Au revoir.",1)
	NODE(31)
		TAKEMONEY(210000)
		if(result==0)then
			SAY("On ne négocie plus! Je vois bien que vous n'avez pas assez d'argent.")
			ENDDIALOG()
		else
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)
			GIVEITEM(402)			
			SAY("Tenez, voilà vos vingt fusils. Amusez-vous bien, et repasser m'en prendre si vous voulez.")
			ENDDIALOG()
		end
		
--five Sub machine guns
	NODE(32)
		SAY("Ca nous fera 36.000 creds. Marché conclu?")
		
		ANSWER("C'est parti pour cinq mitrailleuses S-337-F.",33)
		ANSWER("Non. Vous vendez quoi d'autre?",27)
		ANSWER("J'ai changé d'avis. Au revoir.",1)
	NODE(33)
		TAKEMONEY(42000)
		if(result==0)then
			SAY("On ne négocie plus! Je vois bien que vous n'avez pas assez d'argent.")
			ENDDIALOG()
		else
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			SAY("Tenez, voilà vos cinq mitrailleuses. Amusez-vous bien, et repasser m'en prendre si vous voulez.")
			ENDDIALOG()
		end
--twenty Sub machine guns
	NODE(34)
		SAY("Ca nous fera 130.000 creds. Marché conclu?")
		
		ANSWER("C'est parti pour vingt mitrailleuses S-337-F.",35)
		ANSWER("Non. Vous vendez quoi d'autre?",27)
		ANSWER("J'ai changé d'avis. Au revoir.",1)
	NODE(35)
		TAKEMONEY(130000)
		if(result==0)then
			SAY("On ne négocie plus! Je vois bien que vous n'avez pas assez d'argent.")
			ENDDIALOG()
		else
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			GIVEITEM(27)
			SAY("Tenez, voilà vos vingt mitrailleuses. Amusez-vous bien, et repasser m'en prendre si vous voulez.")
			ENDDIALOG()
		end
end