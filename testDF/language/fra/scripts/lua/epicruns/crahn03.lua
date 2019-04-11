--new
function DIALOG()
--Trigger
--1,100,150 Dialog
--6 Kill Multiple
-----------------------------------------------------------------
--Resource officer
	NODE(0)
		SAY("Tu commences à devenir un des membres les plus indispensables de notre ordre, jeune moine. Le conseil a décidé de t'accepter officiellement dans le cercle bleu de la Fraternité.")

		ANSWER("Je te remercie. J'accomplirai mon devoir avec l'aide de Crahn.",1)
	NODE(1)
		SAY("Cela signifie que tu vas être chargé de missions qui relèvent des affaires internes de l'Ordre. Tu dois exécuter ces missions secrètement.")

		ANSWER("Je suis honoré, père. Comment puis-je servir l'ordre cette fois?",2)
		ANSWER("Je ne me sens pas encore assez éclairé, père.",6)
	NODE(2)
		SAY("Notre ami, Mark Cole, a contacté le conseil. Il aurait eu vent d'une rencontre secrète entre les Anges Déchus et les représentants des Fils de l'Anarchie.")

		ANSWER("Une rencontre secrète? Sait-on ce qu'ils préparent?",3)
	NODE(3)
		SAY("Il existe des rumeurs d'alliance entre ces deux factions depuis longtemps, mais jusqu'à maintenant, nous n'avons pas pu connaître l'état de leurs négociations. Va voir Cole et écoute ce qu'il a à dire.")

		ANSWER("Où vais-je le rencontrer?",4)
	NODE(4)
		SAY("Où devrait être ce bon à rien? Il est encore aux alentours du marché des armes, dans le secteur 06, à essayer de vendre ses tuyaux percés au plus offrant.")

		ANSWER("Très bien.",5)
	NODE(5)
		SAY("Mais sois prudent... tu sais, c'est un individu détestable. Que Crahn bénisse ta mission.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	NODE(6)
		SAY("Maintenant, va et travaille en gardant cet objectif à l'esprit. Si tu te sens prêt nous t'offrirons le même une fois de plus.")

		ENDDIALOG()

-----------------------------------------------------------------
--Cole
	NODE(50)

		ACTIVATEDIALOGTRIGGER(0)
			SAY("Ah, voilà mon moine Psi préféré. Comment va frère Gabriel? J'ai entendu dire qu'il a survécu à une embuscade")

			ANSWER("Comment savez-vous au sujet de cette attaque? Ni moi ni personne n'en a parlé.",51)

	NODE(51)
		SAY("Je gagne ma vie en sachant des choses que d'autres veulent savoir. Mais une petite bataille au couteau dans le métro n'est pas une info pour laquelle on paierait. Quoique...")

		ANSWER("Salaud... c'était toi. Et ensuite tu as essayé de vendre l'holodisque à BioTech? Mais cette fois tu es allé trop loin. Tu vas être pourchassé et torturé par l'Ordre pour cette agression. Jusqu'à ce que tu t'étouffes avec ton propre sang.",52)
	NODE(52)
		SAY("Bah... toujours aussi impulsif, mon jeune moine? Je ne crois vraiment pas que frère Gabriel puisse identifier le Runner qui l'a attaqué.")

		ANSWER("La Fraternité a des méthodes particulières pour cela.",53)
	NODE(53)
		SAY("Et devine quelles empreintes on retrouve sur le stiletto utilisé? Merci infiniment pour l'arme. C'est toujours bon de pouvoir se défendre dans cette cité sombre, hahaha.")

		ANSWER("Espèce de bâtard...",54)
	NODE(54)
		SAY("Mais c'est qu'il est méchant! Le plus important est que frère Gabriel se porte bien de nouveau, n'est-ce pas? L'ordre ne serait sûrement pas content de savoir que derrière un jeune moine talentueux se cache en réalité un assassin. ")

		ANSWER("Je te préviens que si tu tentes de...",55)
	NODE(55)
		SAY("Je suggère que cet incident reste notre petit secret... Mais ce n'est pas la raison de ta visite, n'est-ce pas?")

		ANSWER("Je n'arrive pas à comprendre comment l'Ordre peut avoir affaire avec un homme comme toi. Mais cette décision n'est pas de mon ressort... On m'a dit que tu avais des renseignements au sujet d'une rencontre entre des Fils de l'Anarchie et des Anges Déchus?",56)
	NODE(56)
		SAY("J'en ai, oui.....")

		ANSWER("Et? ... Allons Cole, ne me force pas à te délier la langue, le jeune moine talentueux pourrait bien devenir l'assassin que tu aimerais tant qu'il soit. Pour être franc, ça serait un plaisir pour moi de voir tes tripes éparpillées sur le mur qui se trouve derrière toi.",57)
	NODE(57)
		SAY("Parfait... dans l'intérêt de notre nouvelle amitié qui vient de naître, je vais faire une exception et te donner des informations sans rien te demander en retour.")

		ANSWER("J'attends! Déballe ton sac.",58)
	NODE(58)
		SAY("Calvin Grimwood des Anarchistes et Drakkhan Helios des Anges vont se rencontrer à la prison dans l'Outzone secteur 04.")

		ANSWER("Pourquoi? Quelle est la raison de cette rencontre?",59)
	NODE(59)
		SAY("Drakkhan va donner à Calvin une petite fiole de métal liquide appelé Corytium. La substance intensifierait le PSI lorsqu'on l'avale. Les Anges Déchus veulent de cette façon aider les Anarchistes à devenir plus autonomes et offensifs.")

		ANSWER("Et est-ce que par hasard cela aurait un rapport avec l'alliance dont on parle ici et là?",60)
	NODE(60)
		SAY("La remise du Corytium serait la base d'une alliance entre les deux factions. Les factions ne se font pas encore confiance... et si la remise du Corytium était interrompue, ça retarderait leurs négociations de plusieurs mois.")

		ANSWER("Ce plan porte bien ta marque. Je peux presque entendre le sifflement d'un serpent sortir ta bouche.",61)
	NODE(61)
		SAY("Un simple merci aurait suffi... mais je n'ai pas encore terminé. Le plus important reste à venir. Si tu réussis à t'emparer du Corytium, tu dois l'apporter à Maxime, dans le secteur 10 du Dôme. Elle s'assurera que la livraison parvienne à Tangent.")

		ANSWER("Tangent? Pourquoi Tangent?",62)
	NODE(62)
		SAY("Tu ne lis jamais les Neochroniques? Tangent n'a pas de Corytium et ils commencent juste à découvrir le principe ds armes contrôlées par PSI.")

		ANSWER("Je comprends bien pourquoi ils recherchent cette substance. Mais en quoi cela peut-il nous aider?",63)
	NODE(63)
		SAY("Je vais t'expliquer les choses plus clairement. Si les Fils de l'Anarchie apprennent que leur Corytium a été donné à Tangent, leurs ennemis jurés, ils vont s'en prendre aux Anges.")

		ANSWER("En effet, c'est limpide",64)
	NODE(64)
		SAY("Ceci nuirait beaucoup à l'alliance entre les Anarchistes et les Anges, et la Fraternité de Crahn apprécierait beaucoup cette rupture. Et toi, jeune moine, tu seras encore une fois le héros du jour.")

		ANSWER("Je ne sais pas quoi dire... c'est incroyable que tant de méchanceté et de perfidie soient cachées dans ton esprit malade. Mais je dois le reconnaître, j'aime bien ton plan. Bien, dis-moi ce que toi tu comptes en tirer, maintenant.",65)
	NODE(65)
		SAY("Ne te tracasse pas pour moi, je ne repartirai pas les mains vides. Mais tu devrais plutôt penser à ton avenir. Ca ne sera pas facile. Drakkhan et Calvin seront sûrement escortés. Tu devras tous les tuer avant de pouvoir prendre le Corytium de l'un d'eux.")

		ANSWER("Ca ne devrait pas poser problème",66)
	NODE(66)
		SAY("Je te connais, tu as le profil de l'emploi. Amuse-toi, et à la prochaine.")
		SETNEXTDIALOGSTATE(67)	
		ENDDIALOG()
	NODE(67)
		SAY("Je regrette de ne pas avoir plus d'informations pour toi, moine! Drakkhan et les autres sont dans l'Outzone 04. Et assure-toi de livrer le Corytium à Maxime dans le secteur 10, sinon tu auras fait tout ça pour rien.")
		ENDDIALOG()

--Spieler killt Drakkhan Trigger 6
-----------------------------------------------------------------
--Tangent Torbin

		
	NODE(100)
		SAY("Tiens, tiens... un moine du cercle bleu. Ta réputation t'a devancée. Que puis-je faire pour toi?")

		ANSWER("J'ai besoin d'une personne fiable pour me faire une livraison. Une livraison pour Tangent.",101)
	NODE(101)
		TAKEITEM(9006)
		if(result==0)then
			SAY("Tu n'as rien qui m'intéresse. Arrête de me faire perdre mon temps.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(102)
			SAY("Je t'attendais. Pas de souci, avec moi ton paquet arrivera à bon port. Tu peux me faire confiance, j'ai du kilométrage au compteur.")

			ANSWER("Rappelle-toi, Tangent doit croire que ça vient des Anges Déchus.",102)
		end
	NODE(102)
		SAY("Très bien. Qu'est-ce que c'est que ce truc?")

		ANSWER("Du Corytium. Tu n'as pas besoin d'un savoir plus.",103)
	NODE(103)
		SAY("Cole touchera sa part par le circuit habituel?")

		ANSWER("Quel fourbe, ce Cole, je savais qu'il allait tirer profit de la situation. Il a sûrement tout préparé depuis le début.",104)
	NODE(104)
		SAY("Tu devrais régler ça avec lui, ça ne me regarde pas. Moi, je m'occupe de livrer ton colis en express.")
		
		SETNEXTDIALOGSTATE(105)
		ACTIVATEDIALOGTRIGGER(2)	
		ENDDIALOG()
	NODE(105)	
		SAY("Je crois que tout a déjà été dit. Ne dois-tu pas retourner à ton QG?")
		ENDDIALOG()


-----------------------------------------------------------------
--resource officer
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("N'avais-tu pas une mission à terminer? Mark Cole t'attend dans le secteur 06.")
			ENDDIALOG()
		else
			SAY("Par Crahn! Comment as-tu fait si vite? Frère Gabriel vient juste de m'expliquer les problèmes qui viennent de surgir entre les Anarchistes et les Anges Déchus.")
		
			ANSWER("Ca n'a pas été une mince affaire.",151)
		end
	NODE(151)
		SAY("L'alliance dangereuse entre ces deux factions devrait être mise à mal pour le moment. Comment notre ordre peut-il te remercier pour ton geste?")
		
		ANSWER("Ne me remercie pas... remercie Cole. C'est lui qui a eu l'idée de ce plan diabolique. J'en ai seulement été l'exécutant, au nom de Crahn.",152)
	NODE(152)
		SAY("Ne sois pas si modeste... comment une vieille vipère comme Cole pourrait inventer quoi que ce soit d'utile?")
		
		ANSWER("On a parfois besoin d'un serpent pour régler rapidement une situation.",153)
	NODE(153)
		SAY("Tu parles en paraboles... Ah, avant que j'oublie : Père Magnus a découvert un autre fragment près de la mine de Gaya Gaya dans les Terres Brûlées.")
		
		ANSWER("Il en sait davantage sur le rôle de ces objets?",154)
	NODE(154)
		SAY("Je dois t'informer qu'il semble sur le point de résoudre cette énigme. Il te contactera dès qu'il saura exactement ce que sont ces fragments.")
		
		ANSWER("Nous avons déjà trois fragments... Il serait temps que je comprenne leur signification.",155)
	NODE(155)
		SAY("Je te suggère de te préparer pour l'initiation au cercle rouge de l'Ordre. Pour cela, tu dois améliorer tes aptitudes avant que je te confie la prochaine mission spéciale.")
		
		ANSWER("Je me prépare immédiatement.",156)
	NODE(156)
		GIVEMONEY(6000)
		SAY("Voici 6.000 crédits, tu devrais les investir dans ton équipement. Reviens ici quand tu auras suffisamment progressé. Que Crahn te bénisse. Au revoir, jeune moine.")
		EPICRUNFINISHED(10,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
--Drakkhan
	NODE(200)
		SAY("C'est une réunion privée, dégage!")
		ENDDIALOG()
	

end