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
--PAKET F�R JADE
--TECH WAFFE

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("Donnovan m'a appris l'emplacement de la rencontre NeoKorps. C'est quelque part dans le secteur A 06, le long de la c�te. D�sol�, j'ai aucune m�moire des chiffres. Ton job sera de descendre le leader des NeoKorps. Ensuite, tu pourras venir chercher ta paie. D�p�che-toi de descendre ce type. Une fois que tu as fini, pense aussi � voir Tovall, je pense qu'il voudra marquer le coup en te r�compensant.")

		ANSWER("D'accord...",1)
	NODE(1)
		GIVEITEM(9483)
--CASHCUBE
		SAY("Excellent. Dessoude le commandant des NeoKorps, et pas de quartier. Essaie une des stations radio qui se trouvent dans ce secteur, tu trouveras peut-�tre quelqu'un qui l'a vu passer.")

		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("La cible est en A06, et ton contact attend que tu lui donnes ce cube de cr�dits. Ensuite, va parler � Tovall. Mais souviens-toi : ta mission avant tout!")

		ENDDIALOG()

--------------------------------------------------------------------
--Mrs Sung
--50
	NODE(50)
		SAY("Tu cherches quelqu'un?")

		ANSWER("Je cherche un groupe de gens qui doit se rencontrer ici, quelque part.",51)
	NODE(51)
		SAY("Ahh, je t'attendais. T'es tomb� en plein dans le pi�ge, je vais m'occuper de toi. J'esp�re que tu as bien fait ta pri�re.")

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
			SAY("Tu as d�j� l'argent? Alors va en A 060, et descends le chef des NeoKorps.")
			ENDDIALOG()
		else
			SAY("Toi ici? Tu t'en es tir�? Mais tout �tait pr�vu � la perfection, je ne comprends pas!")

			ANSWER("Sale tra�tre! Je savais bien que j'avais raison de me m�fier de toi!",101)
		end
	NODE(101)
		SAY("J'en ai marre de tes insultes, tu m�rites de crever, comme tes semblables!")

		ANSWER("De la part d'un esclave de Reza, je m'attendais � quelque chose comme �a. Je vais te soulager du poids de ta conscience...",102)
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
			SAY("J'ai quelque chose � faire, repasse plus tard.")
			ENDDIALOG()
		else
			SAY("H�, �a fait longtemps! J'avais raison quand je disais qu'il y avait de l'espoir � propos de Jade. Elle est vivante, et elle s'en est plut�t bien tir�e, �tant donn� les circonstances..")

			ANSWER("Bonne nouvelle! Mais actuellement, ce qui m'inqui�te surtout, c'est qu'on s'est fait avoir par un pi�ge de Reza. Un de ses agents a tout mis en place, et je me suis fait avoir.",151)
		end
	NODE(151)
		SAY("Alors tu n'as pas r�ussi � �liminer le chef des NeoKorps? Ne me regarde pas comme �a, Donnovan m'a parl� du plan. Tout va bien, il sait que je suis au courant.")

		ANSWER("En effet, j'ai rat� l'op�ration, je suis tomb� sur un de leurs tueurs.",152)
	NODE(152)
		SAY("Je vois, alors il est temps qu'on passe au plan B. Jade est en vie, et elle m'a appris qu'elle �tait sur le point de trouver des informations cruciales. C'est pour �a qu'elle avait disparu de la circulation. Donnovan voulait envoyer quelqu'un � son secours, mais je crois que cette personne, elle se tient juste en face de moi actuellement.")

		ANSWER("D'accord, mais j'esp�re que �a va porter ses fruits. Le chef des NeoKorps ferait mieux d'esp�rer ne pas croiser ma route.",153)
	NODE(153)
		GIVEITEM(9480)
--PAKET F�R JADE
		SAY("Tu la trouveras quelque part dans l'Outzone. Elle change d'endroit tout le temps pour pas se faire rep�rer. Logiquement elle est dans l'Outzone 4. Tiens, tu pourrais aussi lui porter �a. Merci.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

	NODE(154)
		SAY("Elle est quelque part dans l'Outzone, mais je sais pas exactement o�. La derni�re fois qu'elle m'a contact�, elle �tait dans l'Outzone 4.")

		ENDDIALOG()

--------------------------------------------------------------------
--JADE
--200
	NODE(200)
		TAKEITEM(9480)
		if(result==0)then
			SAY("On ne se conna�t pas, laisse-moi tranquille.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("Ah enfin, te voila!")

			ANSWER("J'arrive directement du QG, avec un cadeau de Tovall.",201)
		end
	NODE(201)
		SAY("De Tovall? D�cid�ment, il ne me l�chera jamais, celui-l�. J'ai l'impression qu'il est tomb� un peu amoureux de moi, mais il est trop fier pour le reconna�tre je pense. Mais oublions �a, on a plus urgent � faire.")

		ANSWER("C'est justement pour �a que je suis l�.",202)
	NODE(202)
		SAY("Je sais que toi aussi tu en as apr�s les NeoKorps. J'esp�re au moins que tu sais de quoi je parle.")

		ANSWER("Oui, mais mon enqu�te a abouti � une impasse. Celui qui m'a donn� le tuyau �tait un tra�tre envoy� par Reza.",203)
	NODE(203)
		SAY("Depuis que les NeoKorps nous donnent la chasse, j'ai suivi tous leurs d�placements. Il ne me reste plus que quelques points � contr�ler, et j'esp�re pouvoir mettre la main sur leur commandant apr�s �a. J'ai besoin d'un peu d'aide, si tu es pr�t. A tout hasard, je te rappelle qu'il y a une grosse prime sur la t�te de ce type.")

		ANSWER("Tu as une mani�re de pr�senter les choses, toi... J'adore �a.",204)
	NODE(204)
		SAY("Je vais terminer quelques pr�paratifs, et on commence. Va parler � un de nos contacts au QG lorsque tu seras pr�t pour le feu d'artifice final. Si tu veux, tu peux voir Tovall, il m'a dit qu'il avait quelque chose pour toi de la part des Anges D�chus. A plus tard.")
		SETNEXTDIALOGSTATE(205)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(205)
		SAY("Va voir Tovall, il a pr�par� quelque chose qui devrait te plaire.")

		ENDDIALOG()
--------------------------------------------------------------------
--Tovall
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Elle est quelque part dans l'Outzone, mais je sais pas exactement o�. La derni�re fois qu'elle m'a contact�, elle �tait dans l'Outzone 4.")
			ENDDIALOG()
		else

--tECH wAFFE
			GIVEITEM(9484,255)
			SAY("Le projet des Anges D�chus sera bient�t termin�. Mais nous avons encore beaucoup de choses � faire. Tiens, voil� un avant-go�t de leur invention, si tu veux tester. (prochaine mission au niveau 45)")
			EPICRUNFINISHED(15,4)
			ACTIVATEDIALOGTRIGGER(3)
			ENDDIALOG()
		end

end