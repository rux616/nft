--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--1,D,Figaro
--6(0),PvP,Figaro
--2,D,Benjamin
--3,D,Mazzaro

--Startnode, Person
--0
--50, Figaro
--100,Benjamin
--150,Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Il s'est passé la nuit dernière quelque chose qu'on n'avait pas prévu. On a saboté noter laboratoire, et on a attaqué certains de nos systèmes informatiques. Heureusement, Chester Cohor a pu identifier nos intrus avant que la coupure du réseau.")

		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("On n'a pas été surpris d'apprendre que les hackers étaient des employés de BioTech. Le problème, c'est que nous n'avons pas de preuves de cela, parce que les données permettant de le prouver ont été endommagées lors du sabotage. Nos activités de développement ont pris quelques jours de retard en conséquence.")

		ANSWER("On aurait dû s'attendre à cela de la part de BioTech.",2)
	NODE(2)
		SAY("Très certainement, mais vous sous-estimez la fragilité de ces systèmes et de ces structures de tests. Même la plus petite distorsion peut causer des dommages très importants. De plus, le réseau était encore en reconfiguration après l'attaque informatique des Anges Déchus. Et c'est pourquoi nous étions encore plus vulnérables que d'habitude.")

		ANSWER("Quelles seront les conséquences? Est-ce que Tangent a déjà décidé de la marche à suivre? Il faut bien répondre à ça d'une manière ou d'une autre...",3)
	NODE(3)
		SAY("Oui, vous avez raison. On a déjà décidé d'un plan. BioTech va subir une attaque directe. Comme avertissement, évidemment. Et comme vous avez déjà prouvé votre compétence dans ce genre de missions, Tangent vous a choisi pour cette tâche.")

		ANSWER("Ca n'est pas moi qui décide des missions que je fais. Mais je vais m'en charger.",4)
		ANSWER("Je pense que je n'en suis pas capable.",7)
	NODE(4)
		SAY("Je viens de me souvenir de quelque chose. Le clan Tsunami semble impliqué dans cette histoire. Vous devriez parler à Figaro, parce que nous pourrions utiliser nos contacts dans le Dragon Noir pour cette affaire. Si BioTech utilise l'appui de Tsunami, alors nous allons faire la même chose avec le Dragon Noir. C'est vous qui allez décider de la manière dont le Dragon Noir va attaquer BioTech. Ecoutez attentivement ce qu'ils sont en mesure de faire, et choisissez en conséquence.")

		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("Il y a autre chose. Votre contact là-bas, Benjamin, a insisté pour vous parler. Il a dit préférer parler à quelqu'un qu'il connaissait déjà. Apparemment, il aurait des informations sur le prototype de Biotech, et maintenant il voudrait nous les vendre.")

		ANSWER("Est-ce que vous pourriez être plus explicite quant aux personnes que je dois tuer?",9)
	NODE(6)
		SAY("On est au courant de vos actions dans la hiérarchie, vous savez. Il y a beaucoup à faire, alors ne gaspillez pas votre temps. Vous devriez d'abord aller voir Figaro, et une fois que vous aurez aplati deux membres de BioTech, Benjamin sera prêt à vous parler.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(8)
		ENDDIALOG()


	NODE(7)
		SAY("Si vous changez d'avis, n'hésitez pas à nous contacter.")
		ENDDIALOG()
		
	NODE(8)
		SAY("On vous a déjà expliqué ce que vous aviez à faire. D'abord, donnez vos instructions à Figaro, puis allez aplatir deux types de BioTech, et enfin allez parler à Benjamin dans le secteur industriel 02.")
		ENDDIALOG()

	NODE(9)
		SAY("Deux runners de BioTech, j'insiste bien sur ce mot. Pas d'employés, pas de gardes, pas d'officiels. Que des runners.")
		
		ANSWER("Et je peux aplatir n'importe quel runner?",10)
	NODE(10)
		SAY("Non, seulement ceux qui sont au moins aussi forts que vous. Sinon ça ne sera pas pris en compte.")

		ANSWER("CONTINUER",6)

-----------------------------------------------------
--Figaro

	NODE(50)
		SAY("Ca faisait longtemps, runner! Mais j'arrête pas d'entendre parler de toi. Tu chômes jamais, on dirait!.")

		ANSWER("Oui, depuis quelques semaines ça n'arrête pas.",51)
	NODE(51)
		SAY("On m'a expliqué comment t'avais traité les Anges Déchus. Pas mal, pas mal du tout. T'as de l'avenir, je pense. Mais c'est exactement comme ça que ça se passe, ici dans la rue. Nous, le Dragon Noir, on est en guerre permanente avec Tsunami. Faut dire qu'ils se comportent tous comme s'ils étaient des privilégiés, ça nous énerve.")

		ANSWER("CONTINUER",52)
	NODE(52)
		SAY("Et puis de temps en temps, on se bastonne avec les Gardiens du Crépuscule et les Fils de l'Anarchie. Mais c'est rare qu'une compagnie s'implique dans ce genre d'histoires.")

		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("Le plus souvent, les compagnies nous payent pour qu'on fasse leur sale boulot. et ça paye bien. Toi, on m'a dit que t'allais nous expliquer quoi faire. T'as qu'à m'expliquer, ce que vent Tangent, et on va s'en charger.")

		ANSWER("Quelles sont les options? Qu'est-ce que vous pouvez faire?",54)
	NODE(54)
		SAY("Que je réfléchisse... Un sabotage, un meurtre, du chantage. C'est ce qu'on fait habituellement.")

		ANSWER("Ca me paraît logique de répondre au sabotage parle sabotage. Allez vous occuper de quelques installations de Biotech.",55)
		ANSWER("Il est temps de leur apprendre une bonne leçon. Allez tuer quelques uns de ces bâtards.",56)
		ANSWER("Allez faire chanter quelques uns de leurs scientifiques, ça leur fera prendre du retard et ils ne pourront jamais nous rattraper. C'est Tangent qui doit remporter le contrat CityAdmin, pas BioTech!",57)
	NODE(55)
		SAY("Très bien, sans problème. Bonne journée à toi.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(56)
		SAY("Très bien, sans problème. Bonne journée à toi.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(57)
		SAY("Très bien, sans problème. Bonne journée à toi.")
		SETNEXTDIALOGSTATE(58)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(58)
		SAY("La mission est déjà lancée. On s'occupe du reste. Vous devriez avoir autre chose à faire à présent.")
		ENDDIALOG()
		
--Spieler killt zwei Biotechler 6

-----------------------------------------------------
--Benjamin

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Pas tout de suite. J'attends quelqu'un d'autre.")
			ENDDIALOG()	
		else
			SAY("Ah enfin, vous voilà! Ecoutez... J'ai vraiment l'impression qu'on me surveille. Alors faisons vite. Le deal a déjà été conclu avec Tangent. Disons que par accident, certains éléments du plan se sont retrouvés dans ma poche lorsque j'ai quitté le labo, et que je les ai sur moi. Maintenant, c'est à Tangent. Tenez...")

			ANSWER("Très bien. Merci pour votre aide...",101)
		end

--Spieler bekommt Prototyp 9154

	NODE(101)
		GIVEITEM(9154)
		SAY("Bon, vous pouvez y aller maintenant... Non, attendez! J'ai autre chose qui pourrait aussi vous intéresser. J'ai quelques informations au sujet d'Andressa. Elle travaille pour Biotech. Je peux même vous le prouver avec quelques documents. Cavous intéresse?")

		ANSWER("Evidemment. Tout ce qui vient contre BioTech, j'apprécie.",102)
	NODE(102)
		SAY("Bien. Mais ça va vous coûter un petit extra de 5.000 crédits. ")
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
		
	NODE(103)
		TAKEMONEY(5000)
		if(result==0)then
			SAY("Revenez quand vous aurez 5.000 crédits.")
			SETNEXTDIALOGSTATE(104)
			ENDDIALOG()
		else
			GIVEITEM(9155)
			SAY("Voilà ce que je vous propose. C'est une des scientifiques qui a développé cette arme à rayons, et elle a participé à toutes les étapes importantes. Elle a quelques secrets qu'elle ne souhaite pas voir dévoilés. Peut-être que vous comprendrez mieux si je vous dis qu'elle aime les mutants... Vous trouverez tout ça dans son dossier.")

			ANSWER("Voyons voir... Mon dieu, mais c'est dégoûtant! Et c'est exactement ce dont j'avais besoin. Bon travail.",105)
		end
	NODE(104)
		SAY("Vous avez mes 5.000 crédits?")

		ANSWER("Evidemment. Mais j'ai eu un peu de mal à tout réunir.",103)


	NODE(105)
		SAY("Oui, oui, mais vous feriez mieux de partir.")
		SETNEXTDIALOGSTATE(106)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(106)
		SAY("Je vous ai déjà tout donné, maintenant partez. Je n'ai pas envie qu'on nous voie parler ensemble. Retournez chez vous, maintenant.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mazzaro

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Vous n'avez pas encore terminé. Allez tuer deux runners de BioTech, parlez à Benjamin, et donnez des instructions à Figaro. C'est pas compliqué.")
			ENDDIALOG()	
		else
			SAY("Je suis encore en colère à cause de ce sabotage. On a pris beaucoup de retard à cause d'eux. Mais j'ai encore confiance, nos concepteurs savent vraiment ce qu'ils font.")

			ANSWER("CONTINUER",151)
		end

	NODE(151)
		SAY("J'ai regardé les plans de l'arme de BioTech, et je pense qu'on n'a pas de crainte à avoir. Mais je suppose que votre réponse à leur sabotage a été appropriée?")

		ANSWER("Oui, Biotech va avoir besoin de temps pour se remettre de ce qu'on leur a fait. Et avant que j'oublie de vous le dire, mon contact m'a donné une partie du plan du prototype de BioTech. Je pense que ça va beaucoup vous intéresser.",152)

--Spieler verliert Prototype

	NODE(152)
		TAKEITEM(9154)
		if(result==0)then
			SAY("Mais vous n'avez pas ces plans sur vous.")
			ENDDIALOG()
		else
			SAY("Excellent. Grâce à ça, vous venez de gagner votre place chez Tangent. Il y a peu, j'ai entendu Damion Jordan parler de vous.")

			ANSWER("CONTINUER",153)
		end
	NODE(153)
		SAY("Il parlait du combat contre les Anges Déchus. Mais j'ai entendu différentes versions sur la manière dont vous avez réglé la question. Vous ne les avez pas tous attaqués en même temps, si?")

		ANSWER("Bien sûr que si! Et ne croyez pas tous ceux qui vous diront le contraire, haha!",154)
	NODE(154)
		GIVEMONEY(20000)
		SAY("Voilà 20.000 crédits pour vous récompenser de vos efforts. Bonne chance, et tenez-vous prêt pour votre prochaine mission.")
		EPICRUNFINISHED(4,4)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()


end