--new
function DIALOG()
--Trigger
--50 Dialog
--6, 66 Kill Multiple
-----------------------------------------------------------------
--Resource officer

	NODE(0)
		SAY("Père Manus n'a pas pu trouver de nouveaux éléments au sujet de tes reliques. Malheureusement, notre bibliothèque est pauvre, et nous avons donc décidé de sollicité l'aide de frère Agnis. Agnus est un des loyaux serviteurs de Crahn qui ont décidé de demeurer dans le vieux monastère de l'Outzone, dans Neocron. Il a comparé les reliques avec plusieurs des plus anciens écrits consignés, et cela l'a mené à une découverte. Il était fébrile quand il m'en a parlé. Mais tu ferais mieux de lui parler en personne. Rends-toi à la vieille abbaye dans l'Outzone et parle-lui.")

		ANSWER("Merci infiniment pour cette bonne nouvelle. J'y vais tout de suite.",1)
	NODE(1)
		SAY("Que Crahn te bénisse.")
		ENDDIALOG()		

-----------------------------------------------------------------
--Pater Agnus

	NODE(50)
		SAY("Ah, finalement te voilà. Je t'attendais.")

		ANSWER("J'ai su que vous aviez des nouvelles à propos des fragments de Tacholytium?",51)
	NODE(51)
		SAY("Oui, c'est vrai. Comme je soupçonnais, leur origine remonte au temps où nos ancêtres vivaient sous terre, et concentraient leurs efforts exclusivement sur la façon d'augmenter leurs pouvoirs télékinétiques.")

		ANSWER("Et qu'as-tu découvert?",52)
	NODE(52)
		SAY("La puissance du Tacholytium est dérivée directement de la terre, celle que l'on appelle Gaya. Gaya est la somme de tous les pouvoirs qui agissent sur notre monde.")

		ANSWER("C'est donc la même énergie?",53)
	NODE(53)
		SAY("Toute matière comprimée par la formidable énergie de la Grande Lumière porte en elle l'essence de Gaya. C'est le cas pour le Tacholytium.")

		ANSWER("Cela veut-il dire que des objets de Tacholytium peuvent transférer la puissance de Gaya sur un être humain? ",54)
	NODE(54)
		SAY("Pas directement. Mais chaque être doué de PSI peut augmenter ses pouvoirs télékinétiques avec l'aide de Tacholytium. Utilisé correctement, cela fonctionne comme un amplificateur PSI.")

		ANSWER("Par Crahn! Alors mes trois objets façonnés sont bien plus puissants et précieux que je n'ai jamais osé l'espérer.",55)
	NODE(55)
		SAY("Oui, mais sous leur forme actuelle ils sont inutiles. Ils doivent d'abord être assemblés. Mais mes études indiquent qu'il te manque au moins deux autres fragments avant de pouvoir assembler un amplificateur Gaya PSI.")

		ANSWER("Où pourrais-je trouver les fragments manquants? Je vous en prie, père Agnus, aide-moi dans ma recherche.",56)
	NODE(56)
		SAY("J'ai déjà fait cela. J'ai envoyé un groupe de cinq moines sous les ordres du frère Harkon dans les Terres Brûlées à un endroit où je soupçonne la présence d'un autre fragment. Mais le groupe a été attaqué par un gang Tsunami. Ils ont été dépouillés, puis massacrés.")

		ANSWER("Par Crahn... c'est terrible. il faut venger ce crime.",57)
	NODE(57)
		SAY("J'avais espéré que tu suggères cela. Comme tu le sais, nous appliquons la loi du Talion. Mais la patience de Crahn est infinie, et nous attendrons le bon moment. Il ne faudra éliminer qu'un seul d'entre eux. Et à mesure qu'ils mourront tous un par un, la peur et le doute les annihilera.") 

		ANSWER("Qu'il en soit ainsi. Je tuerai un runner du syndicat Tsunami.",58)
		ANSWER("Je ne me sens pas prêt pour un tel défi, Père.",62)
	NODE(58)
		SAY("Il est important que tu tues exclusivement les runners qui sont de ta force.  Ne tue pas les enfants ou les membres sans importance du Syndicat. Choisis un Runner qui sont aussi important pour le syndicat que tu l'es pour nous.")

		ANSWER("Autre chose que je dois savoir?",59)
	NODE(59)
		SAY("Fais attention, le membre de Tsunami que tu tues ne doit pas être plus de dix niveaux plus bas que toi. Garde à l'esprit de viser seulement des Runners, aucun employé, aucun garde. Seulement des runners.")

		ANSWER("Qu'il en soit ainsi. Que la volonté de Crahn s'accomplisse.",60)
	NODE(60)
		SAY("Tu peux aussi avoir des camarades qui t'aident dans cette mission. Mais fais en sorte que tu infliges la majorité des souffrances au runner. Une fois que tu auras tué un runner du syndicat, reviens ici de sorte que nous puissions parler plus avant au sujet des reliques. Que Crahn bénisse tes armes.")
		SETNEXTDIALOGSTATE(61)
		ENDDIALOG()

--Spieler killt Tsunami Spieler Trigger 6 kill multiple

	NODE(61)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ce fut ton idée de venger nos frères et tu dois être l'instrument de cette vengeance. Tue l'hérétique Tsunami, tue!")
			ENDDIALOG()
		else
			SAY("Beau travail mon jeune frère. L'ordre a accepté ton entrée dans le cercle rouge. Cela signifie également que tu peux me parler dorénavant comme à un frère.")

			ANSWER("Merci frère Agnus. Je serai digne de mon rang et lui ferai honneur.",63)
		end
	NODE(62)
		SAY("Tu dois d'abord continuer ta formation. Mais reviens dès que possible.")
		ENDDIALOG()


	NODE(63)
		SAY("J'en suis certain, frère. Revenons à nos reliques. Dans le nord-ouest des Terres Brûlées se trouve la mine de Gaya. J'ai également envoyé le groupe du frère Harkon dans cette direction.")

		ANSWER("Une autre relique se trouverait-elle là-bas?",64)
	NODE(64)
		SAY("Quelque part dans les mines se trouve un vieux Warbot Titan. Il date de la vieille guerre, du temps de Neopha Kansil. La légendes dit que le Warbot est invincible et les habitants du vieux village de Yucida l'ont appelé gardien de Gaya par crainte.")

		ANSWER("Que dois-je faire? Dois-je combattre le Warbot?",65)
	NODE(65)
		SAY("Je cite la légende des anciens de Yucida : 'Le gardien de fer de la mine possède un coeur de métal brillant qui lui donne le tempérament et la force d'un dragon sauvage.'")

		ANSWER("Il y a autre chose?",66)
	NODE(66)
		SAY("Et en dépit de son aspect métallique, il semble être chaud comme s'il était relié à la terre elle-même... Si ma théorie est correcte, ce coeur est l'un des fragments qui te manquent.")

		ANSWER("Mais comment vaincre un Warbot que l'on dit invincible?",67)
	NODE(67)
		SAY("Je ne pense pas que tu puisses. Mais tu dois sûrement pouvoir le neutraliser pendant un moment. Et tu pourras alors prendre son coeur.")

		ANSWER("Et su je n'y arrive pas seul?",68)
	NODE(68)
		SAY("Tu peux prendre quelques amis avec toi pour t'aider. Mais c'est toi qui devras faire la plus grande partie des dommages au Warbot. Sinon, il ne donnera pas son coeur de Tacholytium.")

		ANSWER("Je comprends, frère.",69)
	NODE(69)
		SAY("Va ensuite la mine de Gaya pour accomplir ton destin. Reviens une fois que tu as le coeur du Warbot. Que Crahn bénisse ta mission.")
		SETNEXTDIALOGSTATE(70)
		ENDDIALOG()

--Spieler killt Warbot Titan Trigger 66
		
	NODE(70)
		TAKEITEM(9001)
		if(result==0)then
			SAY("Où as-tu laissé le coeur du gardien, frère? Est-il encore dans les mines de Gaya?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(71)
			SAY("Bienvenue, frère. Je vois que tu apportes le coeur du gardien de Gaya. Il semble qu'il n'y a aucun ennemi capable de résister à ta puissance. Je veillerai sur le coeur jusqu'à ce que tu en aies besoin.")

			ANSWER("Ce fut une dure bataille. Mais Crahn m'a donné la force.",71)
		end
	NODE(71)
		SAY("Tu es non seulement en train de devenir un de nos meilleurs membres, mais également une de nos meilleures armes. J'ai suggéré au conseil de t'introniser dans le cercle noir.")

		ANSWER("C'est un honneur.",72)
	NODE(72)
		SAY("Mais avant que je reçoive une réponse, les plages de l'océan central verra encore quelques dizaines de marées.")

		ANSWER("Merci frère Agnus. J'apprécie ton respect.",73)
	NODE(73)
		GIVEMONEY(10000)
		SAY("Pour avoir vengé nos frères sous la conduite du frère Harkon, l'ordre t'a attribué ces 10000 crédits. Prends les fruits de ton travail et complète ton équipement et tes compétences. Marche dans la lumière de Crahn.")
		EPICRUNFINISHED(10,3)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()

--Warbot
	NODE(100)
		SAY("zzzzt...")
		ATTACK()
		ENDDIALOG()


end