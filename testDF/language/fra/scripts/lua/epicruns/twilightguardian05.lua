--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D,Mrs Sung
--1,D,johnson
--2,D,JADE
--3,D,TOVALL
--
--Startnode, Person
--0, Contact Person
--50, Mrs Sung
--100, JOHNSON
--150, TOVALL
--200, JADE
--250, TOVALL
--
--Items
--CASHCUBE
--PAKET FÜR JADE
--TECH WAFFE

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Donnovan m'a appris l'emplacement de la rencontre NeoKorps. C'est quelque part dans le secteur A 06, le long de la côte. Désolé, j'ai aucune mémoire des chiffres. Ton job sera de descendre le leader des NeoKorps. Ensuite, tu pourras venir chercher ta paie. Dépêche-toi de descendre ce type. Une fois que tu as fini, pense aussi à voir Tovall, je pense qu'il voudra marquer le coup en te récompensant.")

		ANSWER("D'accord...",1)
	NODE(1)
		GIVEITEM(9483)
--CASHCUBE
		SAY("Excellent. Dessoude le commandant des NeoKorps, et pas de quartier. Essaie une des stations radio qui se trouvent dans ce secteur, tu trouveras peut-être quelqu'un qui l'a vu passer.")

		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("La cible est en A06, et ton contact attend que tu lui donnes ce cube de crédits. Ensuite, va parler à Tovall. Mais souviens-toi : ta mission avant tout!")

		ENDDIALOG()

--------------------------------------------------------------------
--Mrs Sung
--50
	NODE(50)
		SAY("Tu cherches quelqu'un?")

		ANSWER("Je cherche un groupe de gens qui doit se rencontrer ici, quelque part.",51)
	NODE(51)
		SAY("Ahh, je t'attendais. T'es tombé en plein dans le piège, je vais m'occuper de toi. J'espère que tu as bien fait ta prière.")

		ANSWER("Je ne comprends pas...",52)
	NODE(52)
		SAY("...")
		ATTACK()
		SETNEXTDIALOGSTATE(53)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(53)
		SAY("...")
		ATTACK()
		ENDDIALOG()

--------------------------------------------------------------------
--JOHNSON
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tu as déjà l'argent? Alors va en A 060, et descends le chef des NeoKorps.")
			ENDDIALOG()
		else
			SAY("Toi ici? Tu t'en es tiré? Mais tout était prévu à la perfection, je ne comprends pas!")

			ANSWER("Sale traître! Je savais bien que j'avais raison de me méfier de toi!",101)
		end
	NODE(101)
		SAY("J'en ai marre de tes insultes, tu mérites de crever, comme tes semblables!")

		ANSWER("De la part d'un esclave de Reza, je m'attendais à quelque chose comme ça. Je vais te soulager du poids de ta conscience...",102)
	NODE(102)
		SAY("...")

		ATTACK()
		SETNEXTDIALOGSTATE(103)
		ENDDIALOG()
	NODE(103)
		SAY("...")
		ATTACK()
		ENDDIALOG()
--------------------------------------------------------------------
--Tovall
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("J'ai quelque chose à faire, repasse plus tard.")
			ENDDIALOG()
		else
			SAY("Hé, ça fait longtemps! J'avais raison quand je disais qu'il y avait de l'espoir à propos de Jade. Elle est vivante, et elle s'en est plutôt bien tirée, étant donné les circonstances..")

			ANSWER("Bonne nouvelle! Mais actuellement, ce qui m'inquiète surtout, c'est qu'on s'est fait avoir par un piège de Reza. Un de ses agents a tout mis en place, et je me suis fait avoir.",151)
		end
	NODE(151)
		SAY("Alors tu n'as pas réussi à éliminer le chef des NeoKorps? Ne me regarde pas comme ça, Donnovan m'a parlé du plan. Tout va bien, il sait que je suis au courant.")

		ANSWER("En effet, j'ai raté l'opération, je suis tombé sur un de leurs tueurs.",152)
	NODE(152)
		SAY("Je vois, alors il est temps qu'on passe au plan B. Jade est en vie, et elle m'a appris qu'elle était sur le point de trouver des informations cruciales. C'est pour ça qu'elle avait disparu de la circulation. Donnovan voulait envoyer quelqu'un à son secours, mais je crois que cette personne, elle se tient juste en face de moi actuellement.")

		ANSWER("D'accord, mais j'espère que ça va porter ses fruits. Le chef des NeoKorps ferait mieux d'espérer ne pas croiser ma route.",153)
	NODE(153)
		GIVEITEM(9480)
--PAKET FÜR JADE
		SAY("Tu la trouveras quelque part dans l'Outzone. Elle change d'endroit tout le temps pour pas se faire repérer. Logiquement elle est dans l'Outzone 4. Tiens, tu pourrais aussi lui porter ça. Merci.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

	NODE(154)
		SAY("Elle est quelque part dans l'Outzone, mais je sais pas exactement où. La dernière fois qu'elle m'a contacté, elle était dans l'Outzone 4.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--200
	NODE(200)
		TAKEITEM(9480)
		if(result==0)then
			SAY("On ne se connaît pas, laisse-moi tranquille.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("Ah enfin, te voila!")

			ANSWER("J'arrive directement du QG, avec un cadeau de Tovall.",201)
		end
	NODE(201)
		SAY("De Tovall? Décidément, il ne me lâchera jamais, celui-là. J'ai l'impression qu'il est tombé un peu amoureux de moi, mais il est trop fier pour le reconnaître je pense. Mais oublions ça, on a plus urgent à faire.")

		ANSWER("C'est justement pour ça que je suis là.",202)
	NODE(202)
		SAY("Je sais que toi aussi tu en as après les NeoKorps. J'espère au moins que tu sais de quoi je parle.")

		ANSWER("Oui, mais mon enquête a abouti à une impasse. Celui qui m'a donné le tuyau était un traître envoyé par Reza.",203)
	NODE(203)
		SAY("Depuis que les NeoKorps nous donnent la chasse, j'ai suivi tous leurs déplacements. Il ne me reste plus que quelques points à contrôler, et j'espère pouvoir mettre la main sur leur commandant après ça. J'ai besoin d'un peu d'aide, si tu es prêt. A tout hasard, je te rappelle qu'il y a une grosse prime sur la tête de ce type.")

		ANSWER("Tu as une manière de présenter les choses, toi... J'adore ça.",204)
	NODE(204)
		SAY("Je vais terminer quelques préparatifs, et on commence. Va parler à un de nos contacts au QG lorsque tu seras prêt pour le feu d'artifice final. Si tu veux, tu peux voir Tovall, il m'a dit qu'il avait quelque chose pour toi de la part des Anges Déchus. A plus tard.")
		SETNEXTDIALOGSTATE(205)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(205)
		SAY("Va voir Tovall, il a préparé quelque chose qui devrait te plaire.")

		ENDDIALOG()
--------------------------------------------------------------------
--Tovall
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Elle est quelque part dans l'Outzone, mais je sais pas exactement où. La dernière fois qu'elle m'a contacté, elle était dans l'Outzone 4.")
			ENDDIALOG()
		else

--tECH wAFFE
			GIVEITEM(9484,255)
			SAY("Le projet des Anges Déchus sera bientôt terminé. Mais nous avons encore beaucoup de choses à faire. Tiens, voilà un avant-goût de leur invention, si tu veux tester. (prochaine mission au niveau 45)")
			EPICRUNFINISHED(15,4)
			ACTIVATEDIALOGTRIGGER(3)
			ENDDIALOG()
		end

end