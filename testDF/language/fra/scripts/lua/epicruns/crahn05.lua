--new
function DIALOG()
--Trigger
--100,150 Dialog
--
-----------------------------------------------------------------
--Resource officer

	NODE(0)
		SAY("Bienvenue mon frère. Le conseil m'a demandé de quelle façon je t'évaluerais. J'ai ouï dire que père Agnus t'a recommandé pour le Cercle Noir. A en juger par tes actes héroïques, je ne serais pas surpris que tu sois accepté dans ce cercle prochainement.") 

		ANSWER("Merci pour ton éloge, mon frère. Il est vrai que la lumière de Crahn a resplendi sur moi ces derniers mois.",1)
	NODE(1)
		SAY("C'est ce qu'on dit dans l'Ordre. Bien… Si tu veux entrer dans le cercle noir, tu devras passer une épreuve à laquelle te soumettra un des pères du cercle noir.")

		ANSWER("Je me sens prêt. Dis-m'en plus.",2)
		ANSWER("Je ne me sens pas encore assez digne de cet honneur.",4)
	NODE(2)
		SAY("Les moines PSI du cercle noir excellent non seulement dans leur sagesse, mais aussi dans leur puissance et leur force. Un moine du cercle noir doit être capable de survivre même dans les zones les plus obscures et les plus dangereuses des Terres Brûlées.")

		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Va voir le père Morpheus, tu pourras le trouver dans les ruines abandonnées de Crest Village. Il va te donner ta mission, et t'envoyer à ton pèlerinage. Que Crahn bénisse ta route.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(4)
		SAY("Tu ferais mieux de te préparer.")
		ENDDIALOG()
	NODE(5)
		SAY("Tu dois parler au père Morpheus dans Crest village.")
		ENDDIALOG()	

-----------------------------------------------------------------
--Pater Morpheus

	NODE(50)
		SAY("Et tu es le jeune moine du cercle rouge, dont tout l'ordre parle? ")

		ANSWER("Salutations, père Morpheus. Ces histoires dans l'ordre sont plus qu'exagérées.",51)
	NODE(51)
		SAY("La modestie, mon fils est un pré-requis important dans le cercle noir. Au moins je peux déjà confirmer que tu l'as. Mais nous devons contrôler ta connaissance et ton courage.")

		ANSWER("Je t'en prie, père Morpheus... fais-moi l'honneur de me faire subir l'épreuve.",52)
		ANSWER("Désolé, mais je ne crois pas encore être prêt à relever le défi.",60)
	NODE(52)
		SAY("Qu'il en soit ainsi... L'épreuve se compose de plusieurs missions. Le but de l'épreuve est de rechercher les deux cristaux des pères de Crahn et de les rapporter là où ils doivent être : au village antique de Yucida dans le nord des Terres Brûlées.")

		ANSWER("Où puis-je trouver ces cristaux?",53)
	NODE(53)
		SAY("Le premier cristal est protégé par un mutant géant appelé Galopticus, qui vit dans les Crystal Caves. L'entrée de ces cavernes se trouve dans les Terres Brûlées.")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("Le second cristal est détenu par un faucheur géant appelé Galopticus. Il vit près de Catlock Bay avec d'autres monstres.")

		ANSWER("Et une fois que j'ai tous les cristaux? Je suis censé les apporter au village de Yucida, mais à qui les donner?",55)
	NODE(55)
		SAY("Oui... donne les cristaux au père Tesara. Il attend depuis des décennies dans ces ruines antiques le retour de ces cristaux. Il était par le passé le gardien des cristaux noirs mais ils lui furent dérobés, et il fut contraint à l'exil.")

		ANSWER("CONTINUER",56)
	NODE(56)
		SAY("C'est seulement si tu réussis à lui apporter ces cristaux qu'il sera réhabilité et reconnu en tant que l'un des nôtres.")

		ANSWER("Je vais faire de mon mieux pour ne pas te décevoir.",57)
	NODE(57)
		SAY("Sur ta route dans les Terres Brûlées, tu rencontreras beaucoup de dangers. Ne crains rien, car peu de créatures peuvent représenter un danger pour un moine aussi puissant que toi.")

		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("Si tu réussis cette tâche, reviens me voir de sorte que je puisse te donner la bénédiction du cercle noir.")

		ANSWER("CONTINUER",59)
	NODE(59)
		SAY("Le frère Agnus m'a appris que tu étais très intéressé par l'énergie de Gaya. Je crois que j'ai une information intéressante pour toi... Va de l'avant, et puisse la lumière de Crahn te suivre partout où tu iras.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
	NODE(60)
		SAY("Reviens quand tu te sentiras prêt.")
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
			SAY("Salutations, puissant moine du cercle rouge. Qu'est-ce qui t'amène ici? ")

			ANSWER("Salutations, père Tesara. Je t'apporte les deux cristaux noirs des pères de Crahn. ",101)
		end
	NODE(101)
		SAY("Non... Ai-je bien entendu? Les cristaux ont été perdus il y a des lustres! Comment les as-tu trouvés?")

		ANSWER("Les trouver n'était pas un problème, puisque le père Morpheus m'a été d'un grand secours. Le plus difficile concernait la manière dont ces cristaux étaient protégés.",102)
	NODE(102)
		SAY("Je savais que Morpheus ne m'abandonnerait pas dans mes épreuves. Il doit avoir recherché les cachettes des cristaux plusieurs années durant avant d'envoyer un moine courageux comme toi pour les récupérer. Comment pourrai-je te remercier?")

		ANSWER("Ta réintégration dans le cercle noir sera une récompense suffisante pour moi. Mais je dois m'en aller, car le père Morpheus m'attend à Crest Village... et la route est longue. Adieu, père Tesara.",103)
	NODE(103)
		SAY("Que Crahn bénisse ton courage. Je te serai toujours reconnaissant. Adieu mon fils.",104)
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()
	NODE(104)
		SAY("Merci encore. Que Crahn soit avec toi. Père Morpheus t'attend sûrement déjà.")
		ENDDIALOG()

-----------------------------------------------------------------
--Pater Morpheus

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tu dois apporter les deux cristaux au frère Tesara. L'un d'eux peut être trouvé près du mutant géant Veskulus dans les Crystal Caves, l'autre près du faucheur géant Galopticus près de Catlock Bay.")
			ENDDIALOG()	
		else
			SAY("Il semble que les rumeurs à ton sujet n'ont pas été exagérées, après tout. Tu as passé l'épreuve brillamment, mon jeune frère.")

			ANSWER("CONTINUER",151)
		end
	NODE(151)
		SAY("Par ce geste je bénis ta route et ton esprit. Dorénavant tu es un membre du cercle noir. Tu as atteint les plus hauts honneurs de la Fraternité.")

		ANSWER("Je suis honoré, frère Morpheus. Je montrerai que je suis digne de mon rang... Au début de l'épreuve tu as dit que tu as l'information concernant l'énergie magique de la terre, la Gaya. Peux-tu me dire quelque chose à son sujet?",152)
	NODE(152)
		SAY("La Gaya est une puissance qui traverse toute chose et toute personne. C'est la base de la télékinésie, ou si tu préfères, des pouvoirs PSI. Les moines avec de puissants pouvoirs PSI connaissent la Gaya et peuvent même ressusciter les morts.")

		ANSWER("CONTINUER",153)
	NODE(153)
		SAY("Quiconque comprend et contrôle la Gaya sera toujours en équilibre avec ses semblables humains et avec l'environnement.")

		ANSWER("Pourquoi seuls les moines contrôlent si bien cette énergie PSI?",154)
	NODE(154)
		SAY("C'est une bonne question mon jeune frère. Rares sont les autres à pouvoir contrôler cette puissance. Mais comme tu sais, nos ancêtres ont vécu sous terre après la Grande Lumière. Ils y ont vécu pendant des siècles.")

		ANSWER("CONTINUER",155)
	NODE(155)
		SAY("Dans une obscurité et un isolement complets, ils se sont intéressés à leur puissance intérieure. Sans la distraction de la lumière et sans stimulations optiques, ils devaient compter sur leurs autres sens.")

		ANSWER("CONTINUER",156)
	NODE(156)
		SAY("A un tel point qu'ils ont simplement senti la puissance de la terre et ont appris à l'utiliser.")

		ANSWER("Est-ce à ce moment que nos ancêtres ont compris l'utilisation des éléments compressés de la terre?",157)
	NODE(157)
		
		SAY("Tu parles du Tacholytium? Oui, je me souviens. Père Agnus m'a demandé de te prévenir qu'il avait la relique finale. Elle semble être la dernière partie qui manquait pour ton amplificateur PSI.")

		ANSWER("CONTINUER",158)
	NODE(158)
		SAY("Un objet puissant. Tu dois t'assurer qu'il ne tombe pas entre de mauvaises mains.")

		ANSWER("Merci beaucoup, frère. Enfin j'ai les cinq fragments. Si seulement je pouvais les assembler... Il est impératif que je trouve un vieux plan de construction de l'amplificateur PSI, ou un modèle.",159)
	NODE(159)
		SAY("Je crains de ne pas pouvoir t'aider pour cela. Mais je suis sûr que tu trouveras la solution à ton problème bientôt. Marche dans la lumière de Crahn mon jeune frère.")
		GIVEMONEY(20000)
                SETNEXTDIALOGSTATE(160)
                EPICRUNFINISHED(10,4)
                ACTIVATEDIALOGTRIGGER(1)
                ENDDIALOG()
                
        NODE(160)
                        SAY("Casse toi")
                        ENDDIALOG()

end