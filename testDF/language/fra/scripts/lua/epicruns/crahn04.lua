--new
function DIALOG()
--Trigger
--50 Dialog
--6, 66 Kill Multiple
-----------------------------------------------------------------
--Resource officer

	NODE(0)
		SAY("P�re Manus n'a pas pu trouver de nouveaux �l�ments au sujet de tes reliques. Malheureusement, notre biblioth�que est pauvre, et nous avons donc d�cid� de sollicit� l'aide de fr�re Agnis. Agnus est un des loyaux serviteurs de Crahn qui ont d�cid� de demeurer dans le vieux monast�re de l'Outzone, dans Neocron. Il a compar� les reliques avec plusieurs des plus anciens �crits consign�s, et cela l'a men� � une d�couverte. Il �tait f�brile quand il m'en a parl�. Mais tu ferais mieux de lui parler en personne. Rends-toi � la vieille abbaye dans l'Outzone et parle-lui.")

		ANSWER("Merci infiniment pour cette bonne nouvelle. J'y vais tout de suite.",1)
	NODE(1)
		SAY("Que Crahn te b�nisse.")
		ENDDIALOG()		

-----------------------------------------------------------------
--Pater Agnus

	NODE(50)
		SAY("Ah, finalement te voil�. Je t'attendais.")

		ANSWER("J'ai su que vous aviez des nouvelles � propos des fragments de Tacholytium?",51)
	NODE(51)
		SAY("Oui, c'est vrai. Comme je soup�onnais, leur origine remonte au temps o� nos anc�tres vivaient sous terre, et concentraient leurs efforts exclusivement sur la fa�on d'augmenter leurs pouvoirs t�l�kin�tiques.")

		ANSWER("Et qu'as-tu d�couvert?",52)
	NODE(52)
		SAY("La puissance du Tacholytium est d�riv�e directement de la terre, celle que l'on appelle Gaya. Gaya est la somme de tous les pouvoirs qui agissent sur notre monde.")

		ANSWER("C'est donc la m�me �nergie?",53)
	NODE(53)
		SAY("Toute mati�re comprim�e par la formidable �nergie de la Grande Lumi�re porte en elle l'essence de Gaya. C'est le cas pour le Tacholytium.")

		ANSWER("Cela veut-il dire que des objets de Tacholytium peuvent transf�rer la puissance de Gaya sur un �tre humain? ",54)
	NODE(54)
		SAY("Pas directement. Mais chaque �tre dou� de PSI peut augmenter ses pouvoirs t�l�kin�tiques avec l'aide de Tacholytium. Utilis� correctement, cela fonctionne comme un amplificateur PSI.")

		ANSWER("Par Crahn! Alors mes trois objets fa�onn�s sont bien plus puissants et pr�cieux que je n'ai jamais os� l'esp�rer.",55)
	NODE(55)
		SAY("Oui, mais sous leur forme actuelle ils sont inutiles. Ils doivent d'abord �tre assembl�s. Mais mes �tudes indiquent qu'il te manque au moins deux autres fragments avant de pouvoir assembler un amplificateur Gaya PSI.")

		ANSWER("O� pourrais-je trouver les fragments manquants? Je vous en prie, p�re Agnus, aide-moi dans ma recherche.",56)
	NODE(56)
		SAY("J'ai d�j� fait cela. J'ai envoy� un groupe de cinq moines sous les ordres du fr�re Harkon dans les Terres Br�l�es � un endroit o� je soup�onne la pr�sence d'un autre fragment. Mais le groupe a �t� attaqu� par un gang Tsunami. Ils ont �t� d�pouill�s, puis massacr�s.")

		ANSWER("Par Crahn... c'est terrible. il faut venger ce crime.",57)
	NODE(57)
		SAY("J'avais esp�r� que tu sugg�res cela. Comme tu le sais, nous appliquons la loi du Talion. Mais la patience de Crahn est infinie, et nous attendrons le bon moment. Il ne faudra �liminer qu'un seul d'entre eux. Et � mesure qu'ils mourront tous un par un, la peur et le doute les annihilera.") 

		ANSWER("Qu'il en soit ainsi. Je tuerai un runner du syndicat Tsunami.",58)
		ANSWER("Je ne me sens pas pr�t pour un tel d�fi, P�re.",62)
	NODE(58)
		SAY("Il est important que tu tues exclusivement les runners qui sont de ta force.  Ne tue pas les enfants ou les membres sans importance du Syndicat. Choisis un Runner qui sont aussi important pour le syndicat que tu l'es pour nous.")

		ANSWER("Autre chose que je dois savoir?",59)
	NODE(59)
		SAY("Fais attention, le membre de Tsunami que tu tues ne doit pas �tre plus de dix niveaux plus bas que toi. Garde � l'esprit de viser seulement des Runners, aucun employ�, aucun garde. Seulement des runners.")

		ANSWER("Qu'il en soit ainsi. Que la volont� de Crahn s'accomplisse.",60)
	NODE(60)
		SAY("Tu peux aussi avoir des camarades qui t'aident dans cette mission. Mais fais en sorte que tu infliges la majorit� des souffrances au runner. Une fois que tu auras tu� un runner du syndicat, reviens ici de sorte que nous puissions parler plus avant au sujet des reliques. Que Crahn b�nisse tes armes.")
		SETNEXTDIALOGSTATE(61)
		ENDDIALOG()

--Spieler killt Tsunami Spieler Trigger 6 kill multiple

	NODE(61)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ce fut ton id�e de venger nos fr�res et tu dois �tre l'instrument de cette vengeance. Tue l'h�r�tique Tsunami, tue!")
			ENDDIALOG()
		else
			SAY("Beau travail mon jeune fr�re. L'ordre a accept� ton entr�e dans le cercle rouge. Cela signifie �galement que tu peux me parler dor�navant comme � un fr�re.")

			ANSWER("Merci fr�re Agnus. Je serai digne de mon rang et lui ferai honneur.",63)
		end
	NODE(62)
		SAY("Tu dois d'abord continuer ta formation. Mais reviens d�s que possible.")
		ENDDIALOG()


	NODE(63)
		SAY("J'en suis certain, fr�re. Revenons � nos reliques. Dans le nord-ouest des Terres Br�l�es se trouve la mine de Gaya. J'ai �galement envoy� le groupe du fr�re Harkon dans cette direction.")

		ANSWER("Une autre relique se trouverait-elle l�-bas?",64)
	NODE(64)
		SAY("Quelque part dans les mines se trouve un vieux Warbot Titan. Il date de la vieille guerre, du temps de Neopha Kansil. La l�gendes dit que le Warbot est invincible et les habitants du vieux village de Yucida l'ont appel� gardien de Gaya par crainte.")

		ANSWER("Que dois-je faire? Dois-je combattre le Warbot?",65)
	NODE(65)
		SAY("Je cite la l�gende des anciens de Yucida : 'Le gardien de fer de la mine poss�de un coeur de m�tal brillant qui lui donne le temp�rament et la force d'un dragon sauvage.'")

		ANSWER("Il y a autre chose?",66)
	NODE(66)
		SAY("Et en d�pit de son aspect m�tallique, il semble �tre chaud comme s'il �tait reli� � la terre elle-m�me... Si ma th�orie est correcte, ce coeur est l'un des fragments qui te manquent.")

		ANSWER("Mais comment vaincre un Warbot que l'on dit invincible?",67)
	NODE(67)
		SAY("Je ne pense pas que tu puisses. Mais tu dois s�rement pouvoir le neutraliser pendant un moment. Et tu pourras alors prendre son coeur.")

		ANSWER("Et su je n'y arrive pas seul?",68)
	NODE(68)
		SAY("Tu peux prendre quelques amis avec toi pour t'aider. Mais c'est toi qui devras faire la plus grande partie des dommages au Warbot. Sinon, il ne donnera pas son coeur de Tacholytium.")

		ANSWER("Je comprends, fr�re.",69)
	NODE(69)
		SAY("Va ensuite la mine de Gaya pour accomplir ton destin. Reviens une fois que tu as le coeur du Warbot. Que Crahn b�nisse ta mission.")
		SETNEXTDIALOGSTATE(70)
		ENDDIALOG()

--Spieler killt Warbot Titan Trigger 66
		
	NODE(70)
		TAKEITEM(9001)
		if(result==0)then
			SAY("O� as-tu laiss� le coeur du gardien, fr�re? Est-il encore dans les mines de Gaya?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(71)
			SAY("Bienvenue, fr�re. Je vois que tu apportes le coeur du gardien de Gaya. Il semble qu'il n'y a aucun ennemi capable de r�sister � ta puissance. Je veillerai sur le coeur jusqu'� ce que tu en aies besoin.")

			ANSWER("Ce fut une dure bataille. Mais Crahn m'a donn� la force.",71)
		end
	NODE(71)
		SAY("Tu es non seulement en train de devenir un de nos meilleurs membres, mais �galement une de nos meilleures armes. J'ai sugg�r� au conseil de t'introniser dans le cercle noir.")

		ANSWER("C'est un honneur.",72)
	NODE(72)
		SAY("Mais avant que je re�oive une r�ponse, les plages de l'oc�an central verra encore quelques dizaines de mar�es.")

		ANSWER("Merci fr�re Agnus. J'appr�cie ton respect.",73)
	NODE(73)
		GIVEMONEY(10000)
		SAY("Pour avoir veng� nos fr�res sous la conduite du fr�re Harkon, l'ordre t'a attribu� ces 10000 cr�dits. Prends les fruits de ton travail et compl�te ton �quipement et tes comp�tences. Marche dans la lumi�re de Crahn.")
		EPICRUNFINISHED(10,3)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()

--Warbot
	NODE(100)
		SAY("zzzzt...")
		ATTACK()
		ENDDIALOG()


end