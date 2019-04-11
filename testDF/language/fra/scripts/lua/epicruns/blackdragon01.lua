--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, MANUEL50
--1,D, WISEGUY 100
--2,D,
--3
--
--Startnode, Person
--0, WISEGUY
--50, MANUEL 1649
--100, WISEGUY
--150, LUCY 1670
--200, LEONE 1671
--250, LUCKY 1672
--
--Items
--Drogenpaket
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1649	1670	1671	1672	3	0	0	0	3	4	1	0
--START	START	START	START
--50	150	200	250
--


function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("Si tu t'imagines que �a va te tomber tout cuit dans la bouche, tire-toi. Tu vas bosser dur comme tout le monde. Et �a se bouscule, crois-moi.")

		ANSWER("Dis-moi un peu ce que vous faites ici, je vais pas commencer � bosser pour quelqu'un que je connais pas.",1)
	NODE(1)
		SAY("D�j�, tu vas commencer par apprendre le respect, on te prendra plus au s�rieux. Pourquoi faut toujours que les bleus aient aucune �ducation, bordel?!")

		ANSWER("Pas la peine de me parler comme �a, je comprends tr�s bien quand on me crie pas dessus.",2)
	NODE(2)
		SAY("Bon, d'accord. J'essaie pas de te mettre dehors, mais avec tous ces Tsunami, on sait jamais � qui on a affaire. Alors je vais te demander de faire un peu tes preuves pour commencer. Ensuite, je r�pondrai � tes questions.")

		ANSWER("Pas de souci, je suis pr�t � tout.",3)
	NODE(3)
		SAY("Si tu agis tout le temps comme �a, tu iras loin, c'est moi qui te le dis. Mais rappelle-toi toujours notre premi�re r�gle, sinon tu feras pas long feu ici.")

		ANSWER("J'�coute...",4)
	NODE(4)
		GIVEITEM(9460)
--DRUGPAKET
		SAY("Pas de regrets et pas de piti�! C'est mauvais pour les affaires, compris? Maintenant que tu connais les subtilit�s, tu vas nous faire une petite livraison. Manuel est un de nos dealers, et il commence � manquer de stock. Tu vas l'approvisionner en lui portant �a au secteur 08. Il se trouve dans une des all�es. Ensuite, tu reviens me voir. Sauf si bien s�r tu veux causer un peu aux gens du coin d'abord. Mais attention, t'avise pas de t'approcher de Lucy, t'as compris. Parle plut�t � Leone ou Lucky si tu veux rencontrer des gens bien.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(100)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- MANUEL
--50
	NODE(50)
		SAY("Oui, quoi? Tu veux essayer notre toute derni�re marchandise? Je peux te trouver ce que tu veux, et m�me des trucs sp�ciaux si c'est ce que tu recherches.")

		ANSWER("Non merci. Mais j'ai une livraison pour toi. C'est une sorte de test, apparemment, tu sais comment �a se passe...",51)
	NODE(51)
		TAKEITEM(9460)
--Drogenpaket
		if(result==0)then
			SAY("Si tu commences � jouer au con avec moi, on va pas s'entendre. Reviens quand tu auras le paquet, j'ai pas de temps � perdre.")
			ENDDIALOG()
		else
			SAY("Un test? Je pr�f�rerais un bon paquet de fric, plut�t. C'est un sale boulot, ce que je fais, et si je fais �a pour encore vingt ans, je crois que je vais en crever.")

			ANSWER("Vingt ans? Ca fait un paquet! Tu dois conna�tre plein de trucs, non?",52)
		end
	NODE(52)
		SAY("Tu m'�tonnes! Apr�s tout, c'est l� que j'ai grandi. Tiens, un conseil : �vite les Tsunami, sauf si tu es en position avantageuse par rapport � eux. Et va causer � Lucky et Leone, c'est eux qui g�rent le business dans le quartier. Enfin, si on compte pas Gecko �videmment. Lui, tu auras de la chance si tu r�ussis � le croiser. Il tra�ne souvent avec sa copine, Lucy. T'avise pas de lui faire du gringue, elle est d�j� maqu�e. Et je pense que Lucky serait pas d'accord non plus. Mais tiens, pendant que t'es l�, j'ai un service � te demander.")

		ANSWER("Dis toujours...",53)
	NODE(53)
		SAY("C'est le bordel ici en ce moment, personne n'ach�te plus rien, et les finances sont pas roses. J'ai rien bouff� depuis des jours � cause de ce merdier. J'ai besoin de pognon. 1000 creds, �a serait bien pour m'aider � remonter la pente. Allez, sois chic, aide un vieux pote...")

		ANSWER("D'accord, mais je peux pas te donner plus que �a.",54)
		ANSWER("Pas question que je joue les nounous pour toi, tu m'entends? D�merde-toi tout seul!",55)
	NODE(54)
		SAY("T'as vraiment rien compris � la vie, toi! Tu ferais mieux d'aller chez les Anges D�chus, parce que t'es compl�tement � la masse. T'as foir� le test, tocard!")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()
		
	NODE(55)
		SAY("Je suis lourd quand je me mets � chialer, hein? Allez, f�licitations, t'as pass� le test. On aime les salopards dans ton genre, qui se laissent pas marcher sur les pieds!")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()
	NODE(56)
		SAY("D�sol�, pas de seconde chance. Retourne d'o� tu viens.")
		ENDDIALOG()

	NODE(57)
		SAY("Va voir le capo qui t'a envoy�, dis-lui que tu as pass� le test.")
		ENDDIALOG()



--------------------------------------------------------------------
--WISEGUY
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Va d'abord parler � Manuel. S'il t'envoie chier, tu vas devoir tout recommencer depuis le d�but.")
			ENDDIALOG()
		else
			SAY("Bien jou�, t'as pass� le test. On dira�t que la premi�re r�gle t'est bien rentr�e dans le cr�ne.")

			ANSWER("Ouais. Alors, j'ai une r�compense, un truc dans le genre?",101)
		end
	NODE(101)
		GIVEMONEY(1000)
		SAY("Tu te crois f�t�? Tiens, voil� 1000 cr�dits, parce que je suis bon prince. Va les claquer quelque part. Si t'es vraiment malin, tu te feras encore un paquet de bl� avec nous. Reviens quand tu te sentiras pr�t, actuellement je pense pas qu'on puisse faire quelque chose de plus compliqu� ensemble. (prochaine mission au niveau 20)")

		EPICRUNFINISHED(9,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

		

--------------------------------------------------------------------
--Lucy
--150
	NODE(150)
		SAY("Je ne te reconnais pas. Tu es nouveau? Comme c'est triste. On reprendra cette conversation lorsque tu seras riche et c�l�bre.")

		ANSWER("Manuel m'a parl� de toi. J'ai de l'ambition, je vais monter tr�s haut. Un peu de patience, tu vas voir.",151)
	NODE(151)
		SAY("Tu n'as pas id�e du nombre de fois que j'ai pu entendre ces conneries. Si tu as des tripes, essaie de devenir ami avec Gecko. C'est le bras droit de Trond, c'est quelqu'un de tr�s puissant. Maximilian Trond, c'est un peu notre dieu. Estime-toi heureux si tu le croises un jour.")
		SETNEXTDIALOGSTATE(152)
		ENDDIALOG()
	NODE(152)
		SAY("J'aimerais bien pouvoir causer plus souvent aux autres, mais Gecko est facilement jaloux.")

		ENDDIALOG()
--------------------------------------------------------------------
--Leone
--200

	NODE(200)
		SAY("Qu'est-ce que tu me veux? J'ai rien � dire � un microbe dans ton genre. J'ai pas envie de finir comme Wan Tokai. Tu sais comment il a fini? Mort!")
	
		ANSWER("T'en fais pas, je compte pas rester un microbe toute ma vie. Qui c'est, Wan?",201)
	NODE(201)
		SAY("Tu connais m�me pas Wan Tokai, alias Le Dragon? C'est lui qui a donn� son nom � l'organisation, putain! T'es vraiment un tocard, tu ferais mieux de te barrer vite fait.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Faut te le dire en quelle langue? Suis les r�gles, ou cr�ve. Pig�?")
		ENDDIALOG()	

--------------------------------------------------------------------
--Lucky
--250
	NODE(250)
		SAY("Tiens, une nouvelle t�te! Tu me veux quoi? Je t'ai jamais vu dans le coin. Je vais pas te faire de cadeau, mais rappelle-toi que les meilleures combines pour se faire du pognon ici, c'est les appartements et les drogues! Si tu cherches du boulot, va demander � un des Wiseguys.")
	
		SETNEXTDIALOGSTATE(251)
		ENDDIALOG()
	NODE(251)
		SAY("Entra�ne-toi, on verra ensuite.")
	
		ENDDIALOG()
end