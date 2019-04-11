--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCY 50
--1,NPCTYPEloot, Mercurus
--2,LOOTNPC, CHANG
--3
--
--Startnode, Person
--0, WISEGUY
--50, LUCY
--100, MERCURUS 
--150, Chang
--200, LUCY
--250,
--
--Items
--DrogenProduzent 9464
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--
--START	START	START	START
--50	100	150	200
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("Il �tait temps que tu passes. Lucy m'a dit qu'elle voulait te parler. Mais fais attention, Gecko n'aime pas les gens qui tournent autour de sa nana.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("T'as �t� voir Lucy?")
		ENDDIALOG()


--------------------------------------------------------------------
--LUCY
--50
	NODE(50)
		SAY("Ah, voil� le meilleur runner du monde. J'esp�re que tu es pr�t � te remplir les poches?")

		ANSWER("J'ai r�fl�chi, et j'ai rien contre l'id�e, je dois dire.",51)
	NODE(51)
		SAY("Ecoute. Le clan Monsun a attaqu� un de nos convois � nouveau. Habituellement, ils tuent tous ceux qui r�sistent, et ils pillent tout. Etant donn� le nombre d'attaques qu'ils ont faites ces derniers temps, je pense qu'ils doivent cacher ce qu'ils ont vol� quelque part.")

		ANSWER("Je vois. Une sorte de caverne d'Ali Baba.",52)
	NODE(52)
		SAY("Oui. Un tr�sor qui n'attend que nous. Imagine un peu ce qu'on pourrait en tirer...")

		ANSWER("On serait plein aux as... Je marche! On commence quand?",53)
	NODE(53)
		SAY("D�s que tu es pr�t. J'ai l'appui de certains hauts grad�s chez Crahn. Ils pourraient nous aider � trouver l'endroit qu'on cherche.")

		ANSWER("Et � quoi tu me sers si je dois tout faire tout seul?",54)
	NODE(54)
		SAY("Imaginons que tu trouves les drogues. A qui tu les donneras? Qu'est-ce que tu en feras? Ton meilleur choix, c'est de compter sur moi, de tout le revendre. Apr�s tout, Leone et Lucky t'en veulent � mort tous les deux en ce moment. Je te ferai un bon prix, fais-moi confiance.")

		ANSWER("Je vois que tu as pens� � tout... Par o� est-ce que je commence les recherches?",55)
	NODE(55)
		SAY("Mercurus m'a dit que les voyants de Crahn pourraient d�tecter des traces. Quelque chose, une piste � suivre. Personne ne sait vraiment ce qu'ils savent faire, mais je sais qu'ils savent deviner les choses avant qu'elles n'arrivent. D�s que tu trouveras quelque chose, reviens me parler.")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()



--------------------------------------------------------------------
--MERCURUS
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Les suivants de Crahn ne sont pas l� pour te divertir.")
			ENDDIALOG()
		else
			SAY("Je me souviens de toi, on s'est d�j� vus. J'esp�re que Crahn t'a enfin apport� la lumi�re. Parle, que veux-tu?")

			ANSWER("On m'a promis que vos voyants pourraient me donner des renseignements importants. Une piste menant � un entrep�t appartenant au clan Monsun. Un endroit o� ils cachent toutes leurs drogues, celles qu'ils nous ont vol�es.",101)
		end
	NODE(101)
		SAY("Je vois. Alors vous voulez l'aide de nos voyants pour retrouver ces drogues? Et vous pensez qu'ils n'ont pas d�j� mieux � faire?")

		ANSWER("Je suis pas au courant de vos affaires, mais il me faut de l'aide.",102)
	NODE(102)
		SAY("Si tu as besoin de l'aide de nos voyants, tu dois d'abord nous rendre service.")

		ANSWER("Quel genre de service?",103)
	NODE(103)
		SAY("Quelques reins pour une exp�rience en cours. On se fiche d'o� ils viennent. Nous nous comprenons bien? La seule subtilit� est qu'il faut des reins d'Anges D�chus. Deux, ce serait suffisant.")

		ANSWER("Donc, tout ce que je dois faire c'est sauter sur un Ange D�chu, le buter et lui arracher les reins?",104)
	NODE(104)
		SAY("Ca vous pose un cas de conscience?")

		ANSWER("Non, si �a m'aide � r�soudre mon probl�me, je vais le faire. Je vais ramener deux reins.",105)
	NODE(105)
		SAY("Bien. Mais attention, n'attaque que des employ�s, pas de runners. Le probl�me avec les runners, c'est qu'ils sont souvent expos�s aux radiations, et que leurs reins deviennent inutilisables.")

		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
--SPIELER LOOTED 2 FA NPCS 

	NODE(106)
		TAKEITEMCNT(9464,2)
--NIERE
		if(result==0)then
			SAY("Nous avons besoin de ces reins pour notre exp�rience. Qu'est-ce que tu attends?")
			ENDDIALOG()
		else
			SAY("Excellent. J'ai pos� ta question � un de nos voyants pendant que tu �tais parti. Maintenant que tu es revenu avec ce que je t'ai demand�, nous allons pouvoir parler.")

			ANSWER("Tant mieux.",107)
		end
	NODE(107)
		SAY("Cherche un d�nomm� Chang. Il se trouve dans le secteur Tsunami, le secteur 07. Il d�tient la cl� de l'endroit que tu cherches.")

		ANSWER("C'est tout? ",108)
	NODE(108)
		SAY("Oui, et maintenant va-t-en, je n'ai plus de temps � perdre avec toi.")
		SETNEXTDIALOGSTATE(109)
		ENDDIALOG()
	NODE(109)
		SAY("Chang, dans le secteur 07. C'est lui qui poss�de la cl�.")
		ENDDIALOG()

		

--------------------------------------------------------------------
--Chang
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("J'ai rien � te dire.")
			ENDDIALOG()		
		else
			SAY("Tire-toi d'ici, j'ai pas envie de te parler.")

			ANSWER("Tu dois savoir o� Monsun entrepose ses drogues vol�es, j'imagine?",151)
		end
	NODE(151)
		SAY("Toi, t'es compl�tement perdu. Chez Tsunami, on touche pas aux drogues.")

		ANSWER("J'ai un contact tr�s fiable, alors pas la peine de jouer � �a avec moi. Je te tabasse d'abord, ou bien tu me r�ponds tout de suite?",152)
	NODE(152)
		RAND(2)
		if(result==0)then
			SAY("Je vais t'apprendre un truc : te m�le pas des affaires de Tsunami. Les gars, butez-moi ce connard.")
			ATTACK()
			SETNEXTDIALOGSTATE(153)	
			ENDDIALOG()
		else
			SAY("Tu commences � me les briser, j'aime pas beaucoup �a.")
			ATTACK()
			SETNEXTDIALOGSTATE(153)	
			ENDDIALOG()
		end
	NODE(153)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("T'as rien � faire ici, tire-toi!")
			ATTACK()
			ENDDIALOG()
		else
			SAY("J'esp�re que t'as pas eu ma cl�... Putain, je vais perdre mon job sinon!")

			ANSWER("Tu veux dire... cette cl�-l�?",154)
		end
	NODE(154)
		TAKEITEM(9463)
--KEY F�R DROGEN EL DORADO
		if(result==0)then
			SAY("Tu l'auras jamais, je vais m'occuper de toi!H")
			
			HELP()
			ENDDIALOG()
		else
			GIVEITEM(9463)
			SAY("Comment t'as eu cette cl�? Rends-la moi tout de suite!")
			ATTACK()
			ENDDIALOG()
		end

--------------------------------------------------------------------
--LUCY
--200
	NODE(200)
		TAKEITEM(9463)
--KEY F�R DROGEN
		if(result==0)then
			SAY("On doit d'abord savoir o� sont entrepos�es les drogues. Va voir Mercurus. Il pourra t'aider � entrer en contact avec les voyants de chez Crahn.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(0)
			if(result==0)then
				SAY("Fais exactement comme je t'ai dit.")
				ENDDIALOG()
			else	
				ISMISSIONTARGETACCOMPLISHED(1)
				if (result==0)then
					SAY("Tu pr�f�res �tre riche ou mort?")
					ENDDIALOG()
				else

					SAY("Bravo, tu es tomb� sur un gros coup. Donne-moi la cl�.")

					ANSWER("D'abord, je veux savoir de quelle quantit� de drogues on parle.",201)
				end
			end
		end
	NODE(201)
		SAY("Ca doit se monter � 1 million de cr�dits. Mais il faut que je voie �a par moi-m�me. La cl� est celle d'un entrep�t, d'apr�s ce que je vois.")

		ANSWER("Alors pour ma r�compense, �a sera simple. Deux millions, et je te donne la cl�.",202)
	NODE(202)
		SAY("Tr�s dr�le. Et d'o� est-ce que je sors une somme pareille? J'ai autre chose � te proposer.")

		ANSWER("Dis toujours.",203)
	NODE(203)
		SAY("Je te donne l'acc�s � notre r�serve de drogues, et tu pourras en prendre autant que tu veux.")

		ANSWER("J'aurais pr�f�r� du pognon, mais �a ira. Autre chose?",204)
	NODE(204)
		SAY("Le contact qui s'occupera de toi ne pourra t'en donner que par petites quantit�s � chaque fois, sinon �a se verra. Mais tu peux revenir quand tu veux, il en aura pour toi.")

		ANSWER("Ca me va. Et au sujet de ma carri�re? Qu'est-ce que je fais maintenant?",205)
	NODE(205)
		SAY("Moi, je ne pourrai pas t'aider, Gecko va devenir jaloux. Et je ne pense pas que Lucky et Leone voudront t'aider non plus, apr�s les embrouilles entre vous. Tu devrais cr�er quelque chose de ton c�t�, pour faire bouger tout �a. Ca serait un bon d�but. Un clan, par exemple. Bonne chance, tu vas en avoir besoin..")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(9,5)
		ENDDIALOG()

end