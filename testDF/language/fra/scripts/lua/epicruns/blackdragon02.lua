--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D,LEONE 50
--1,D,MERCURUS 150
--2,D,LEONE 200
--3
--
--Startnode, Person
--0, WISEGUY
--50, LEONE 1671
--100, LUCKY 1672
--150, MERCURUS 1673
--200, LEONE 1671
--250,
--
--Items
--DESTROSOL FORTE 723
--
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1671	1672	1673		3	0	0	0	3	2	1	0	3	0	2	0
--START	START	START	START
--50	100	150
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Salauds de Tsunami. Tu t'es d�j� frott� � eux?")

		ANSWER("Parfois. Et �a s'est jamais bien termin�.",1)
	NODE(1)
		SAY("Ca m'�tonne pas. Apr�s tout, �a remonte � loin, tout �a. Mais hier, ils ont tabass� un de nos dealers, ces enflures. Enfin bon, Leone a du boulot pour toi. Tu connais la chanson, va lui parler directement. Il est au QG.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)
		SAY("Leone tra�ne dans le QG d'habitude. Tu devrais le trouver sans trop chercher.")	
		ENDDIALOG()
	

--------------------------------------------------------------------
--LEONE
--50
	NODE(50)
		SAY("C'est ton jour de chance, on dira�t. Je vais te donner l'occasion de prouver que tu sais y faire. Un de nos dealers a �t� tabass� par un clan Tsunami, Monsun. Tout ce que nos dealers voulaient, c'�tait refourguer des doses � des putes Tsunami. Ces gars s'�nervent vraiment pour un rien.")

		ANSWER("Et en quoi �a me concerne?",51)
	NODE(51)
		SAY("T'as de la flotte � la place du cerveau? Si tu veux r�ussir chez nous, tu devrais faire un peu plus attention � ce que tu raconte. Alors tu te tais, et tu m'�coutes.")

		ANSWER("Pas la peine de s'�nerver, j'�coute. Je dois faire quoi?",52)
	NODE(52)
		SAY("On a perdu un gros paquet de drogue dans la baston, et tu vas devoir trouver une combine pour qu'on puisse garder un contrat qu'on a avec Crahn. Ils attendent une livraison d'une douzaine de Destrosol Forte. Notre contact est un moine qui s'appelle Mercurus. Il devrait tra�ner dans le QG Crahn, je pense. T'as pas droit � l'erreur, alors me d��ois pas.")

		ANSWER("Pas de probl�me, donne-moi les drogues et je vais lui porter �a.",53)
	NODE(53)
		SAY("Je viens pas de te dire qu'on nous les avait vol�es?")

		ANSWER("Oui, je sais bien, mais normalement...",54)
	NODE(54)
		SAY("Je me contrefous de comment tu les trouves, tu te d�merdes! J'ai rien d'autre � te dire, c'est ton probl�me. Mercurus attend une livraison de 12 Destrosol Forte. Tu pourras avoir �a en demandant � Lucky, ou � un autre gars.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


--------------------------------------------------------------------
--LUCKY
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("J'ai pas le temps, j'ai un truc � faire.")
			ENDDIALOG()
		else
			SAY("J'ai quelque chose qui pourrait t'int�resser.")

			ANSWER("Et c'est quoi?",101)
		end
	NODE(101)
		SAY("12 Destrosol Forte, exactement. Bien emball�es dans un joli paquet cadeau. Qu'est-ce que tu en dis?")

		ANSWER("Les nouvelles vont vite! C'est exactement ce qu'il me faut!",102)
	NODE(102)
		SAY("J'ai mes sources... Mis �coute un peu, je te donne ces drogues gratuitement, et en �change tu me feras une faveur plus tard. Qu'est-ce que t'en dis?")

		ANSWER("Ca me va.",103)
		ANSWER("Pas question que je rentre dans tes plans foireux.",105)
	NODE(103)
--DrugPaket 723
		GIVEITEM(9460)
		SAY("Super. On va faire du bon boulot ensemble.")

		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("T'as d�j� les drogues, tu veux quoi encore? Un bonbon?")
		ENDDIALOG()
	NODE(105)
		SAY("Comme tu veux. Reviens quand tu changeras d'avis, tu y viendras t�t ou tard.")
		ENDDIALOG()
		

--------------------------------------------------------------------
--MERCURUS
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je pensais qu'on avait un arrangement! Tenez votre parole, ou vous allez en subir les cons�quences!")
			ENDDIALOG()
		else
			TAKEITEM(9460)
			if(result==0)then
				SAY("Je pensais qu'on avait un arrangement! Tenez votre parole, ou vous allez en subir les cons�quences!")
				ENDDIALOG()
			else
				SAY("Ami ou ennemi?")

				ANSWER("J'ai quelque chose de la part du Dragon Noir. Des drogues.",151)
			end
		end
	NODE(151)
		SAY("Excellent! Je commen�ais � penser que le livreur s'�tait tout envoy� en cours de route. Nous allons pouvoir continuer nos exp�riences... mais... mais il n'y a que 12 Destrosol, et on avait dit 16! O� sont les autres?")

		ANSWER("On ne m'a jamais parl� de 16, on m'a toujours dit que c'�tait 12.",152)
	NODE(152)
		SAY("Je parie que tu t'es gard� quelques doses de c�t�, esp�ce de junkie! Tu vas m'en trouver quatre autres, ou tu en subiras les cons�quences!")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		TAKEITEMCNT(723,4)
		if(result==0)then
			SAY("Il manque 4 doses de Destrosol Forte, tu m'as compris?")
			ENDDIALOG()
		else
			SAY("Excellent, tu as �vit� l'incident diplomatique. Merci. Maintenant, retourne voir ton patron, et dis-lui que la livraison a �t� effectu�e.")
			ACTIVATEDIALOGTRIGGER(1)
			SETNEXTDIALOGSTATE(154)
			ENDDIALOG()
		end

	NODE(154)
		SAY("S'il m'en faut plus, je te recontacte. Retourne d'o� tu veins.")
		ENDDIALOG()
--------------------------------------------------------------------
--LEONE
--200
	
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Reviens ici une fois que tu as livr� les drogues � Mercurus. Et demande � Lucky de te donner un coup de main avant d'y aller.")
			ENDDIALOG()
		else
			SAY("Apparemment �a a march� comme sur des roulettes! On commence � parler de toi ici, c'est bien. J'esp�re que tu appr�cies cette chance que je t'ai donn�e!")

			ANSWER("Evidemment, mais faut pas m'en vouloir, je pr�f�re le pognon, si tu vois ce que je veux dire.",201)
		end
	NODE(201)
		GIVEMONEY(2000)
		SAY("Esp�ce d'ingrat, mes remerciements sont pas assez bien pour toi? Tiens, voil� 2000 creds, ton travail en vaut pas un de plus. T'es m�me d�j� surpay�. Si tu veux du boulot, va parler � un Wiseguy (prochaine mission au niveau 30)")
		EPICRUNFINISHED(9,1)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()


end