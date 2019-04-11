--new
--Antiregierungsfraktionen

--
--Trigger
--Triggernumber,Type,Person
--0,PvP, Gehenna 1 CA 150
--1,PvP, Gehenna 1 TT 150
--2,D, Gehenna 150
--3
--
--Startnode, Person
--0, Aufgabenverteiler
--50, GEHENNA
--100, BENJAMIN
--150, GEHENNA
--200,
--250,
--
--Items
--ENERGY PACKS  50 1549
--ID CUBE DOY 50 9432
--DOKUMENTPAKET BENJAMIN 100 9433

function DIALOG()
--------------------------------------------------------------------
--Aufgabenverteiler
--0
	
	NODE(0)
		SAY("Pour le moment, tu peux tenter de tirer quelques cr�dits de l'avant-poste du D�me de York. Mais je suppose que tu le sais d�j�.")
		
		ENDDIALOG()
--------------------------------------------------------------------
--GEHENNA
--50
	NODE(50)
		SAY("Je me souviens de toi, on a fait du bon travail ensemble. Le D�me de York te remercie pour tes efforts. Je pense que �a t'int�ressera de savoir que nous allons poursuivre nos plans. Nous avons des dizaines de scientifiques qui travaillent pour nous jour et nuit pour am�liorer notre technologie.")

		ANSWER("Int�ressant. Et de quel technologie s'agit-il ?",51)
	NODE(51)
		SAY("C'est encore Top Secret. Et nous n'allons pas r�v�ler ce dont il s'agit dan sun futur proche. Mais nous avons d�couvert que Neocron est en possession de technologies qui pourront �tre utilis�es comme source d'�nergie pour nos projets.")

		ANSWER("Et c'est moi qui vais aller r�cup�rer ces technologies ?",52)
	NODE(52)
		SAY("Exactement. Neocron utilise des Energypacks pour alimenter ses v�hicules. Il m'en faut 30. Nous allons confier la m�me mission � d'autres runners afin d'avoir asse d'�nergie � la fin de l'op�ration.")

		ANSWER("Oui, mais la question de mon paiement reste en suspens...",53)
	NODE(53)
		SAY("En effet. Comme d'habitude, on abordera la question une fois que tu nous auras rapport� ce qu'il faut.")

		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()

--SPIELER BESORGT 30 ENERGY PACKS
	NODE(54)
		TAKEITEMCNT(1549,30)
		if(result==0)then
			SAY("Trouve ces Energypacks quelque part, je ne sais pas o�. Au moins 30.")
			ENDDIALOG()
		else
			SAY("Tu as tout trouv� ? Excellent. Mais �a n'est que la premi�re partie de la mission. D�sol� de ne pas t'avoir pr�venu avant.")

			ANSWER("C'est bien beau, tout �a, mais je veux mon argent tout de suite.",55)
		end
	NODE(55)
		SAY("Je suis d�sol�, mais les r�gles sont tr�s strictes pour de genre d'affaires. Et crois-moi, au D�me de York rien n'est plus strict que le militaire. Tu vas devoir terminer la mission si tu veux voir la couleur de ton argent.")

		ANSWER("Bon, tu m'as convaincu. Quelle est la suite des op�rations ?",56)
	NODE(56)
		SAY("Nous avons dans Neocron une source d'informations r�guli�re. Il est bien connu, et informe tous ceux qui peuvent le payer. Autant dire qu'on voit souvent des runners de Tsunami, du Dragon Noir, de Crahn et des Gardiens du Cr�puscule lui tourner autour.")

		ANSWER("Son nom ? Je le connais peut-�tre d�j�.",57)
	NODE(57)
		GIVEITEM(9432)
--ID CUBE DOY
		SAY("Il s'appelle Benjamin, mais c'est probablement un faux nom. Il nous donne des rapports tous les deux jours. Votre mission sera d'aller chercher ce rapport. Il vous attend dans le secteur industriel 02. Vous rencontrerez certainement d'autres runners l�-bas, Benjamin est quelqu'un de tr�s occup�. Prenez ce signe de reconnaissance pour qu'il puisse vous identifier.")

		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()


--------------------------------------------------------------------
--BENJAMIN
--100
	NODE(100)
		TAKEITEM(9432)
--DOY ID CUBE
		if(result==0)then
			SAY("Fichez-moi la paix, je sui sen train de savourer mon tord-boyaux synth�tique. Allez, du vent !")
			ENDDIALOG()
		else
			SAY("Aha, il y a du changement dans les envoy�s du D�me de York � ce que je vois.")

			ANSWER("Qu'est-ce que vous entendez par l� ?",101)
		end
	NODE(101)
		SAY("Que le D�me de York ne fait confiance � personne, m�me pas � ses alli�s. Ils ne se portent garants que d'eux-m�mes. C'est mon opinion, du moins.")

		ANSWER("Bon, �a ira. Alors, quelles sont les informations cette fois ci ?",102)
	NODE(102)
		SAY("CityAdmin m�prise Tsunami, le Dragon Noir et Crahn encore plus qu'avant. Apparemment, Reza a envie de frapper un grand coup. Mais comment exactement ? Ca, j'en sais rien.")

		ANSWER("OK, alors donnez-moi ces informations et je m'en vais.",103)
	NODE(103)
		GIVEITEM(9433)
--DOKUMENTPAKET BENJAMIN
		SAY("Tenez. Et faites attention sur le chemin du retour, c'est devenu encore plus dangereux derni�rement.")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("Demandez au type qui vous a donn� la mission. Moi, je donne pas de r�compense.")

		ENDDIALOG()
--------------------------------------------------------------------
-- GEHENNA
--150
	NODE(150)
		TAKEITEM(9433)
--BENJAMINS PAKET
		if(result==0)then
			SAY("Benjamin se trouve dans le secteur industriel. Il te donnera un rapport que tu devras me remettre.")
			ENDDIALOG()
		else
			SAY("Bon travail. Donne-moi le rapport.")

			ANSWER("Je peux avoir ma prime maintenant, ou bien il y a encore autre chose ?",151)
		end
	NODE(151)
		SAY("Un moment. Les nouvelles sont mauvaises. Le rapport parle d'espions dans les Terres Br�l�es. En nombres croissants. La situation pourrait devenir dangereuse pour nous. Nos secrets ne doivent pas �tre d�couverts. Runner, il va falloir que tu abattes un runner de CityAdmin et un autre de Tangent. Seulement des runners, pas de gardes, pas de CopBots. Nous devons d�tourner leur attention. Je vais donner les m�mes instructions � d'autres runners.")

		ANSWER("Et pour ma paye ?",152)
	NODE(152)
		SAY("Vous la toucherez d�s que vous aurez accompli cette mission. Nous pourrions m�me vous donner une prime pour vos efforts.")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
--SPIELER KILLT EINEN CITYADMIN UND EINEN TANGENT RUNNER
	NODE(153)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Un runner de CityAdmin, et un de Tangent. C'est ce qui �tait convenu.")
				ENDDIALOG()
			else
				SAY("Il ne te manque plus qu'un runner de CityAdmin, et tu auras ta paye.")
				ENDDIALOG()
			end		

		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Plus qu'un runner de Tangent � descendre.")
				ENDDIALOG()
			else
				GIVEMONEY(50000)
				SAY("Bon travail, tu sembles avoir l'exp�rience de ce genre de travail. Le g�n�ral Babel te donnera peut-�tre une mission en temps voulu. (prochaine mission au niveau 45)")
				EPICRUNFINISHED(10,1)	
				EPICRUNFINISHED(10,2)	
				EPICRUNFINISHED(10,3)	
				EPICRUNFINISHED(10,4)
					
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
	
			end
		end

end
