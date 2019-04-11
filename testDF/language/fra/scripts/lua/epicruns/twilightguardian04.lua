--new
--Twilight Guardian
--
--Trigger
--Triggernumber,Type,Person
--0,D, JOHNSON
--1,PvP vs CityMerc
--2,D, Donnovan
--3
--
--Startnode, Person
--0, Contact Person
--50, DONNOVAN
--100, JOHNSON
--150, cont P
--200, DONNOVAN
--250,
--
--Items
--

function DIALOG()
--------------------------------------------------------------------
--Contact Person
--0
	
	NODE(0)
		SAY("On entend de plus en plus de rumeurs au sujet d'une police secr�te mise en place par Reza. Ils ont d�j� r�ussi � abattre un grand nombre de nos membres. Ils semblent �tre violents et tr�s efficaces.")

		ANSWER("On sait autre chose sur eux?",1)
	NODE(1)
		SAY("J'esp�rais qu'en te disant �a, tu aies d'autres �l�ments � ajouter, mais je vois que tu n'en sais pas plus que nous. Tiens, j'y pense, Donovan a quelque chose de sp�cial pour toi.")

		ANSWER("Excellent, je vais le voir tout de suite.",2)
	NODE(2)
		SAY("D'accord. Moi, je pense payer n'importe quelle information sur cette police secr�te, donc si tu entends quelque chose...")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--50
	NODE(50)
		SAY("D�sol�, mais cette fois je vais te mettre � forte contribution. J'aurais aim� mener cette op�ration moi-m�me, mais je me suis cass� la jambe hier, et j'en suis incapable. Mon nouvel implant doit se mettre en place le temps que les nanotech terminent le travail.")

		ANSWER("J'esp�re que tu pourras marcher normalement bient�t. Plus vite j'aurai accompli cette mission, plus vite le gouvernement de Reza chutera.",51)
	NODE(51)
		SAY("Pour commencer, on a quelques probl�mes avec nos anciens ennemis. Les CityMercs ont envoy� des troupes dans les environs. Ils op�rent toujours par groupes de 6. On a d�j� perdu deux combats. Il va falloir renverser la vapeur rapidement.")

		ANSWER("Et si on les embauchait?",52)
	NODE(52)
		SAY("Arr�te de dire des b�tises, ils sont neutres envers tout le monde sauf envers nous. Il faut tuer des runners qui ne sont pas prot�g�s par un groupe de ce genre. C'est ta premi�re mission. Trouve un runner � peu pr�s aussi fort que toi, et tue-le. C'est important de tuer un runner, ce sont leurs soutiens les plus fid�les.")

		ANSWER("Compris. Je descends un runner de CityMercs aussi fort que moi.",53)
	NODE(53)
		SAY("Voil�. Tu te rappelles de Simmons. Il a organis� la rencontre dont tu m'as parl�. Fais attention, on ne sait pas encore de quoi ce contact est capable. Le rendez-vous est dans les Terres Br�l�es, en F 06. Il s'appelle Johnson. Va le voir une fois que tu as r�gl� le probl�me avec CityMercs, et n'oublie pas de me faire un rapport d�taill� apr�s tout �a.")

		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()


--------------------------------------------------------------------
--JOHNSON
--100
	NODE(100)
		SAY("Tu es le contact des Gardiens du Cr�puscule?")

		ANSWER("Si c'est toi Johnson, alors oui. J'esp�re que j'ai raison d'avoir confiance en toi.",101)
	NODE(101)
		SAY("Evidemment, et je ferai de mon mieux. Apr�s tout, on a les m�mes buts.")

		ANSWER("Tu as int�r�t. D�balle-moi tout.",102)
	NODE(102)
		SAY("J'aimerais que tu me parles autrement, je risque beaucoup ici. C'est pas trop demander?")

		ANSWER("Excuse-moi... Tu peux nous dire ce que tu sais?",103)
	NODE(103)
		SAY("Reza a une nouvelle force de police secr�te. Les NeoKorps. Le chef des NeoKorps est probablement connu de Reza seulement. Je sais que leurs op�rations sont violentes et d�cisives. Mais j'ai appris autre chose.")

		ANSWER("Ca expliquerait ces nombreux raids.",104)
	NODE(104)
		SAY("Attends, �a n'est pas tout. Ils vont organiser une rencontre secr�te entre le chef des NeoKorps et les officiers. Ce sera une chance � saisir pour leur porter un coup fatal.")

		ANSWER("Ca m'a l'air tentant. Mais qu'est-ce que tu as � y gagner, toi? Tu risques beaucoup pour un tel r�sultat.",105)
	NODE(105)
		SAY("T'en fais pas pour moi. Ma r�compense, �a sera la chute de Reza. Je te donnerai des infos bient�t au sujet de l'endroit de la rencontre. Mais pour l'instant, ne reste pas l�, on pourrait nous surprendre.")

		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
	NODE(106)
		SAY("Je te donnerai le lieu de la rencontre plus tard.")

		ENDDIALOG()
--SPIELER BRINGT EINEN CITYMERC UM 2
--------------------------------------------------------------------
--cONTACT pERSON
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Va parler � Donnovan.")
			ENDDIALOG()
		else

			SAY("Content de te voir. Alors, les nouvelles sont bonnes?")

			ANSWER("Oui, plut�t bonnes. Je vais quand m�me pas te laisser mourir dans ton coin sans te dire ce que je sais.",151)
		end
	NODE(151)
		SAY("Merci, t'es vraiment un philanthrope. Tiens, voil� 2000 cr�dits pour ce genre d'info.")

		ANSWER("Philan-quoi? Euh... Ouais. Reza a une nouvelle police secr�te, les NeoKorps. J'ai rencontr� un tra�tre de CityAdmin qui veut trahir le commandant de cette force de police.",152)
	NODE(152)
		GIVEMONEY(2000)
		SAY("Int�ressant. Ce genre d'info me pla�t beaucoup, merci.")
		SETNEXTDIALOGSTATE(153)
		ENDDIALOG()
	NODE(153)
		SAY("Si tu en apprends plus, reviens me voir.")

		ENDDIALOG()

--------------------------------------------------------------------
--DONNOVAN
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Va tuer un runner CityMercs, et ensuite tu as rendez-vous avec Johnson en F 06. Tu te rappelles?")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Va tuer un runner CityMercs, et ensuite tu as rendez-vous avec Johnson en F 06. Tu te rappelles?")
				ENDDIALOG()
			else
				SAY("Tu as �t� voir Johnson?")

				ANSWER("Pourquoi tu ne me demandes pas d'abord si j'ai tu� un CityMercs comme convenu?",201)
			end
		end
	NODE(201)
		SAY("Parce que si tu ne l'avais pas fait, tu n'aurais pas os� revenir. Allez, dis-moi ce que t'a appris Johnson.")

		ANSWER("Il m'a parl� d'une force de police secr�te, les NeoKorps. Apparemment, c'est une id�e de Reza.",202)
	NODE(202)
		SAY("Voil� pourquoi on perd tant d'hommes ces derniers temps. C'est tout? C'est un peu l�ger comme info...")

		ANSWER("Il m'a aussi promis qu'il nous tiendrait au courant si une opportunit� se pr�sentait de frapper les NeoKorps en plein coeur.",203)
	NODE(203)
		SAY("Ah vraiment? Il est bien, ce Johnson, il me pla�t beaucoup. Il ne faut pas manquer l'occasion. Dis-moi quand �a se passera et o�.")

		ANSWER("Aucune id�e pour l'instant. Mais il m'a dit qu'il me pr�viendrait.",204)
	NODE(204)
		GIVEMONEY(10000)
		SAY("Bon travail, tu commences � me plaire de plus en plus, tu sais? Tiens, j'ai une r�compense pour t'encourager. Je crois que tu devrais t'entra�ner un peu, et reviens nous voir ensuite. Bonne chance! (prochaine mission au niveau 40)")
		ACTIVATEDIALOGTRIGGER(2)
		EPICRUNFINISHED(15,3)
		ENDDIALOG()
end