--new
function DIALOG()
--Trigger
--100,150 Dialog
--
-----------------------------------------------------------------
--Resource officer

	NODE(0)
		SAY("Bienvenue mon fr�re. Le conseil m'a demand� de quelle fa�on je t'�valuerais. J'ai ou� dire que p�re Agnus t'a recommand� pour le Cercle Noir. A en juger par tes actes h�ro�ques, je ne serais pas surpris que tu sois accept� dans ce cercle prochainement.") 

		ANSWER("Merci pour ton �loge, mon fr�re. Il est vrai que la lumi�re de Crahn a resplendi sur moi ces derniers mois.",1)
	NODE(1)
		SAY("C'est ce qu'on dit dans l'Ordre. Bien� Si tu veux entrer dans le cercle noir, tu devras passer une �preuve � laquelle te soumettra un des p�res du cercle noir.")

		ANSWER("Je me sens pr�t. Dis-m'en plus.",2)
		ANSWER("Je ne me sens pas encore assez digne de cet honneur.",4)
	NODE(2)
		SAY("Les moines PSI du cercle noir excellent non seulement dans leur sagesse, mais aussi dans leur puissance et leur force. Un moine du cercle noir doit �tre capable de survivre m�me dans les zones les plus obscures et les plus dangereuses des Terres Br�l�es.")

		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Va voir le p�re Morpheus, tu pourras le trouver dans les ruines abandonn�es de Crest Village. Il va te donner ta mission, et t'envoyer � ton p�lerinage. Que Crahn b�nisse ta route.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(4)
		SAY("Tu ferais mieux de te pr�parer.")
		ENDDIALOG()
	NODE(5)
		SAY("Tu dois parler au p�re Morpheus dans Crest village.")
		ENDDIALOG()	

-----------------------------------------------------------------
--Pater Morpheus

	NODE(50)
		SAY("Et tu es le jeune moine du cercle rouge, dont tout l'ordre parle? ")

		ANSWER("Salutations, p�re Morpheus. Ces histoires dans l'ordre sont plus qu'exag�r�es.",51)
	NODE(51)
		SAY("La modestie, mon fils est un pr�-requis important dans le cercle noir. Au moins je peux d�j� confirmer que tu l'as. Mais nous devons contr�ler ta connaissance et ton courage.")

		ANSWER("Je t'en prie, p�re Morpheus... fais-moi l'honneur de me faire subir l'�preuve.",52)
		ANSWER("D�sol�, mais je ne crois pas encore �tre pr�t � relever le d�fi.",60)
	NODE(52)
		SAY("Qu'il en soit ainsi... L'�preuve se compose de plusieurs missions. Le but de l'�preuve est de rechercher les deux cristaux des p�res de Crahn et de les rapporter l� o� ils doivent �tre : au village antique de Yucida dans le nord des Terres Br�l�es.")

		ANSWER("O� puis-je trouver ces cristaux?",53)
	NODE(53)
		SAY("Le premier cristal est prot�g� par un mutant g�ant appel� Galopticus, qui vit dans les Crystal Caves. L'entr�e de ces cavernes se trouve dans les Terres Br�l�es.")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Le second cristal est d�tenu par un faucheur g�ant appel� Galopticus. Il vit pr�s de Catlock Bay avec d'autres monstres.")

		ANSWER("Et une fois que j'ai tous les cristaux? Je suis cens� les apporter au village de Yucida, mais � qui les donner?",55)
	NODE(55)
		SAY("Oui... donne les cristaux au p�re Tesara. Il attend depuis des d�cennies dans ces ruines antiques le retour de ces cristaux. Il �tait par le pass� le gardien des cristaux noirs mais ils lui furent d�rob�s, et il fut contraint � l'exil.")

		ANSWER("CONTINUER",56)
	NODE(56)
		SAY("C'est seulement si tu r�ussis � lui apporter ces cristaux qu'il sera r�habilit� et reconnu en tant que l'un des n�tres.")

		ANSWER("Je vais faire de mon mieux pour ne pas te d�cevoir.",57)
	NODE(57)
		SAY("Sur ta route dans les Terres Br�l�es, tu rencontreras beaucoup de dangers. Ne crains rien, car peu de cr�atures peuvent repr�senter un danger pour un moine aussi puissant que toi.")

		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("Si tu r�ussis cette t�che, reviens me voir de sorte que je puisse te donner la b�n�diction du cercle noir.")

		ANSWER("CONTINUER",59)
	NODE(59)
		SAY("Le fr�re Agnus m'a appris que tu �tais tr�s int�ress� par l'�nergie de Gaya. Je crois que j'ai une information int�ressante pour toi... Va de l'avant, et puisse la lumi�re de Crahn te suivre partout o� tu iras.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(60)
		SAY("Reviens quand tu te sentiras pr�t.")
		ENDDIALOG()

-----------------------------------------------------------------
--Pater Tesara
		
	NODE(100)
		TAKEITEMCNT(9007,2)
		if(result==0)then
			SAY("Laisse-moi. Je cherche la solitude.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(101)
			SAY("Salutations, puissant moine du cercle rouge. Qu'est-ce qui t'am�ne ici? ")

			ANSWER("Salutations, p�re Tesara. Je t'apporte les deux cristaux noirs des p�res de Crahn. ",101)
		end
	NODE(101)
		SAY("Non... Ai-je bien entendu? Les cristaux ont �t� perdus il y a des lustres! Comment les as-tu trouv�s?")

		ANSWER("Les trouver n'�tait pas un probl�me, puisque le p�re Morpheus m'a �t� d'un grand secours. Le plus difficile concernait la mani�re dont ces cristaux �taient prot�g�s.",102)
	NODE(102)
		SAY("Je savais que Morpheus ne m'abandonnerait pas dans mes �preuves. Il doit avoir recherch� les cachettes des cristaux plusieurs ann�es durant avant d'envoyer un moine courageux comme toi pour les r�cup�rer. Comment pourrai-je te remercier?")

		ANSWER("Ta r�int�gration dans le cercle noir sera une r�compense suffisante pour moi. Mais je dois m'en aller, car le p�re Morpheus m'attend � Crest Village... et la route est longue. Adieu, p�re Tesara.",103)
	NODE(103)
		SAY("Que Crahn b�nisse ton courage. Je te serai toujours reconnaissant. Adieu mon fils.",104)
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("Merci encore. Que Crahn soit avec toi. P�re Morpheus t'attend s�rement d�j�.")
		ENDDIALOG()

-----------------------------------------------------------------
--Pater Morpheus

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tu dois apporter les deux cristaux au fr�re Tesara. L'un d'eux peut �tre trouv� pr�s du mutant g�ant Veskulus dans les Crystal Caves, l'autre pr�s du faucheur g�ant Galopticus pr�s de Catlock Bay.")
			ENDDIALOG()	
		else
			SAY("Il semble que les rumeurs � ton sujet n'ont pas �t� exag�r�es, apr�s tout. Tu as pass� l'�preuve brillamment, mon jeune fr�re.")

			ANSWER("CONTINUER",151)
		end
	NODE(151)
		SAY("Par ce geste je b�nis ta route et ton esprit. Dor�navant tu es un membre du cercle noir. Tu as atteint les plus hauts honneurs de la Fraternit�.")

		ANSWER("Je suis honor�, fr�re Morpheus. Je montrerai que je suis digne de mon rang... Au d�but de l'�preuve tu as dit que tu as l'information concernant l'�nergie magique de la terre, la Gaya. Peux-tu me dire quelque chose � son sujet?",152)
	NODE(152)
		SAY("La Gaya est une puissance qui traverse toute chose et toute personne. C'est la base de la t�l�kin�sie, ou si tu pr�f�res, des pouvoirs PSI. Les moines avec de puissants pouvoirs PSI connaissent la Gaya et peuvent m�me ressusciter les morts.")

		ANSWER("CONTINUER",153)
	NODE(153)
		SAY("Quiconque comprend et contr�le la Gaya sera toujours en �quilibre avec ses semblables humains et avec l'environnement.")

		ANSWER("Pourquoi seuls les moines contr�lent si bien cette �nergie PSI?",154)
	NODE(154)
		SAY("C'est une bonne question mon jeune fr�re. Rares sont les autres � pouvoir contr�ler cette puissance. Mais comme tu sais, nos anc�tres ont v�cu sous terre apr�s la Grande Lumi�re. Ils y ont v�cu pendant des si�cles.")

		ANSWER("CONTINUER",155)
	NODE(155)
		SAY("Dans une obscurit� et un isolement complets, ils se sont int�ress�s � leur puissance int�rieure. Sans la distraction de la lumi�re et sans stimulations optiques, ils devaient compter sur leurs autres sens.")

		ANSWER("CONTINUER",156)
	NODE(156)
		SAY("A un tel point qu'ils ont simplement senti la puissance de la terre et ont appris � l'utiliser.")

		ANSWER("Est-ce � ce moment que nos anc�tres ont compris l'utilisation des �l�ments compress�s de la terre?",157)
	NODE(157)
		
		SAY("Tu parles du Tacholytium? Oui, je me souviens. P�re Agnus m'a demand� de te pr�venir qu'il avait la relique finale. Elle semble �tre la derni�re partie qui manquait pour ton amplificateur PSI.")

		ANSWER("CONTINUER",158)
	NODE(158)
		SAY("Un objet puissant. Tu dois t'assurer qu'il ne tombe pas entre de mauvaises mains.")

		ANSWER("Merci beaucoup, fr�re. Enfin j'ai les cinq fragments. Si seulement je pouvais les assembler... Il est imp�ratif que je trouve un vieux plan de construction de l'amplificateur PSI, ou un mod�le.",159)
	NODE(159)
		SAY("Je crains de ne pas pouvoir t'aider pour cela. Mais je suis s�r que tu trouveras la solution � ton probl�me bient�t. Marche dans la lumi�re de Crahn mon jeune fr�re.")
		GIVEMONEY(20000)
                SETNEXTDIALOGSTATE(160)
                EPICRUNFINISHED(10,4)
                ACTIVATEDIALOGTRIGGER(1)
                ENDDIALOG()
                
        NODE(160)
                        SAY("Casse toi")
                        ENDDIALOG()

end