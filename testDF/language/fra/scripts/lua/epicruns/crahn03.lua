--new
function DIALOG()
--Trigger
--1,100,150 Dialog
--6 Kill Multiple
-----------------------------------------------------------------
--Resource officer
	NODE(0)
		SAY("Tu commences � devenir un des membres les plus indispensables de notre ordre, jeune moine. Le conseil a d�cid� de t'accepter officiellement dans le cercle bleu de la Fraternit�.")

		ANSWER("Je te remercie. J'accomplirai mon devoir avec l'aide de Crahn.",1)
	NODE(1)
		SAY("Cela signifie que tu vas �tre charg� de missions qui rel�vent des affaires internes de l'Ordre. Tu dois ex�cuter ces missions secr�tement.")

		ANSWER("Je suis honor�, p�re. Comment puis-je servir l'ordre cette fois?",2)
		ANSWER("Je ne me sens pas encore assez �clair�, p�re.",6)
	NODE(2)
		SAY("Notre ami, Mark Cole, a contact� le conseil. Il aurait eu vent d'une rencontre secr�te entre les Anges D�chus et les repr�sentants des Fils de l'Anarchie.")

		ANSWER("Une rencontre secr�te? Sait-on ce qu'ils pr�parent?",3)
	NODE(3)
		SAY("Il existe des rumeurs d'alliance entre ces deux factions depuis longtemps, mais jusqu'� maintenant, nous n'avons pas pu conna�tre l'�tat de leurs n�gociations. Va voir Cole et �coute ce qu'il a � dire.")

		ANSWER("O� vais-je le rencontrer?",4)
	NODE(4)
		SAY("O� devrait �tre ce bon � rien? Il est encore aux alentours du march� des armes, dans le secteur 06, � essayer de vendre ses tuyaux perc�s au plus offrant.")

		ANSWER("Tr�s bien.",5)
	NODE(5)
		SAY("Mais sois prudent... tu sais, c'est un individu d�testable. Que Crahn b�nisse ta mission.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	NODE(6)
		SAY("Maintenant, va et travaille en gardant cet objectif � l'esprit. Si tu te sens pr�t nous t'offrirons le m�me une fois de plus.")

		ENDDIALOG()

-----------------------------------------------------------------
--Cole
	NODE(50)

		ACTIVATEDIALOGTRIGGER(0)
			SAY("Ah, voil� mon moine Psi pr�f�r�. Comment va fr�re Gabriel? J'ai entendu dire qu'il a surv�cu � une embuscade")

			ANSWER("Comment savez-vous au sujet de cette attaque? Ni moi ni personne n'en a parl�.",51)

	NODE(51)
		SAY("Je gagne ma vie en sachant des choses que d'autres veulent savoir. Mais une petite bataille au couteau dans le m�tro n'est pas une info pour laquelle on paierait. Quoique...")

		ANSWER("Salaud... c'�tait toi. Et ensuite tu as essay� de vendre l'holodisque � BioTech? Mais cette fois tu es all� trop loin. Tu vas �tre pourchass� et tortur� par l'Ordre pour cette agression. Jusqu'� ce que tu t'�touffes avec ton propre sang.",52)
	NODE(52)
		SAY("Bah... toujours aussi impulsif, mon jeune moine? Je ne crois vraiment pas que fr�re Gabriel puisse identifier le Runner qui l'a attaqu�.")

		ANSWER("La Fraternit� a des m�thodes particuli�res pour cela.",53)
	NODE(53)
		SAY("Et devine quelles empreintes on retrouve sur le stiletto utilis�? Merci infiniment pour l'arme. C'est toujours bon de pouvoir se d�fendre dans cette cit� sombre, hahaha.")

		ANSWER("Esp�ce de b�tard...",54)
	NODE(54)
		SAY("Mais c'est qu'il est m�chant! Le plus important est que fr�re Gabriel se porte bien de nouveau, n'est-ce pas? L'ordre ne serait s�rement pas content de savoir que derri�re un jeune moine talentueux se cache en r�alit� un assassin. ")

		ANSWER("Je te pr�viens que si tu tentes de...",55)
	NODE(55)
		SAY("Je sugg�re que cet incident reste notre petit secret... Mais ce n'est pas la raison de ta visite, n'est-ce pas?")

		ANSWER("Je n'arrive pas � comprendre comment l'Ordre peut avoir affaire avec un homme comme toi. Mais cette d�cision n'est pas de mon ressort... On m'a dit que tu avais des renseignements au sujet d'une rencontre entre des Fils de l'Anarchie et des Anges D�chus?",56)
	NODE(56)
		SAY("J'en ai, oui.....")

		ANSWER("Et? ... Allons Cole, ne me force pas � te d�lier la langue, le jeune moine talentueux pourrait bien devenir l'assassin que tu aimerais tant qu'il soit. Pour �tre franc, �a serait un plaisir pour moi de voir tes tripes �parpill�es sur le mur qui se trouve derri�re toi.",57)
	NODE(57)
		SAY("Parfait... dans l'int�r�t de notre nouvelle amiti� qui vient de na�tre, je vais faire une exception et te donner des informations sans rien te demander en retour.")

		ANSWER("J'attends! D�balle ton sac.",58)
	NODE(58)
		SAY("Calvin Grimwood des Anarchistes et Drakkhan Helios des Anges vont se rencontrer � la prison dans l'Outzone secteur 04.")

		ANSWER("Pourquoi? Quelle est la raison de cette rencontre?",59)
	NODE(59)
		SAY("Drakkhan va donner � Calvin une petite fiole de m�tal liquide appel� Corytium. La substance intensifierait le PSI lorsqu'on l'avale. Les Anges D�chus veulent de cette fa�on aider les Anarchistes � devenir plus autonomes et offensifs.")

		ANSWER("Et est-ce que par hasard cela aurait un rapport avec l'alliance dont on parle ici et l�?",60)
	NODE(60)
		SAY("La remise du Corytium serait la base d'une alliance entre les deux factions. Les factions ne se font pas encore confiance... et si la remise du Corytium �tait interrompue, �a retarderait leurs n�gociations de plusieurs mois.")

		ANSWER("Ce plan porte bien ta marque. Je peux presque entendre le sifflement d'un serpent sortir ta bouche.",61)
	NODE(61)
		SAY("Un simple merci aurait suffi... mais je n'ai pas encore termin�. Le plus important reste � venir. Si tu r�ussis � t'emparer du Corytium, tu dois l'apporter � Maxime, dans le secteur 10 du D�me. Elle s'assurera que la livraison parvienne � Tangent.")

		ANSWER("Tangent? Pourquoi Tangent?",62)
	NODE(62)
		SAY("Tu ne lis jamais les Neochroniques? Tangent n'a pas de Corytium et ils commencent juste � d�couvrir le principe ds armes contr�l�es par PSI.")

		ANSWER("Je comprends bien pourquoi ils recherchent cette substance. Mais en quoi cela peut-il nous aider?",63)
	NODE(63)
		SAY("Je vais t'expliquer les choses plus clairement. Si les Fils de l'Anarchie apprennent que leur Corytium a �t� donn� � Tangent, leurs ennemis jur�s, ils vont s'en prendre aux Anges.")

		ANSWER("En effet, c'est limpide",64)
	NODE(64)
		SAY("Ceci nuirait beaucoup � l'alliance entre les Anarchistes et les Anges, et la Fraternit� de Crahn appr�cierait beaucoup cette rupture. Et toi, jeune moine, tu seras encore une fois le h�ros du jour.")

		ANSWER("Je ne sais pas quoi dire... c'est incroyable que tant de m�chancet� et de perfidie soient cach�es dans ton esprit malade. Mais je dois le reconna�tre, j'aime bien ton plan. Bien, dis-moi ce que toi tu comptes en tirer, maintenant.",65)
	NODE(65)
		SAY("Ne te tracasse pas pour moi, je ne repartirai pas les mains vides. Mais tu devrais plut�t penser � ton avenir. Ca ne sera pas facile. Drakkhan et Calvin seront s�rement escort�s. Tu devras tous les tuer avant de pouvoir prendre le Corytium de l'un d'eux.")

		ANSWER("Ca ne devrait pas poser probl�me",66)
	NODE(66)
		SAY("Je te connais, tu as le profil de l'emploi. Amuse-toi, et � la prochaine.")
		SETNEXTDIALOGSTATE(67)	
		ENDDIALOG()
	NODE(67)
		SAY("Je regrette de ne pas avoir plus d'informations pour toi, moine! Drakkhan et les autres sont dans l'Outzone 04. Et assure-toi de livrer le Corytium � Maxime dans le secteur 10, sinon tu auras fait tout �a pour rien.")
		ENDDIALOG()

--Spieler killt Drakkhan Trigger 6
-----------------------------------------------------------------
--Tangent Torbin

		
	NODE(100)
		SAY("Tiens, tiens... un moine du cercle bleu. Ta r�putation t'a devanc�e. Que puis-je faire pour toi?")

		ANSWER("J'ai besoin d'une personne fiable pour me faire une livraison. Une livraison pour Tangent.",101)
	NODE(101)
		TAKEITEM(9006)
		if(result==0)then
			SAY("Tu n'as rien qui m'int�resse. Arr�te de me faire perdre mon temps.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(102)
			SAY("Je t'attendais. Pas de souci, avec moi ton paquet arrivera � bon port. Tu peux me faire confiance, j'ai du kilom�trage au compteur.")

			ANSWER("Rappelle-toi, Tangent doit croire que �a vient des Anges D�chus.",102)
		end
	NODE(102)
		SAY("Tr�s bien. Qu'est-ce que c'est que ce truc?")

		ANSWER("Du Corytium. Tu n'as pas besoin d'un savoir plus.",103)
	NODE(103)
		SAY("Cole touchera sa part par le circuit habituel?")

		ANSWER("Quel fourbe, ce Cole, je savais qu'il allait tirer profit de la situation. Il a s�rement tout pr�par� depuis le d�but.",104)
	NODE(104)
		SAY("Tu devrais r�gler �a avec lui, �a ne me regarde pas. Moi, je m'occupe de livrer ton colis en express.")
		
		SETNEXTDIALOGSTATE(105)
		ACTIVATEDIALOGTRIGGER(2)	
		ENDDIALOG()
	NODE(105)	
		SAY("Je crois que tout a d�j� �t� dit. Ne dois-tu pas retourner � ton QG?")
		ENDDIALOG()


-----------------------------------------------------------------
--resource officer
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("N'avais-tu pas une mission � terminer? Mark Cole t'attend dans le secteur 06.")
			ENDDIALOG()
		else
			SAY("Par Crahn! Comment as-tu fait si vite? Fr�re Gabriel vient juste de m'expliquer les probl�mes qui viennent de surgir entre les Anarchistes et les Anges D�chus.")
		
			ANSWER("Ca n'a pas �t� une mince affaire.",151)
		end
	NODE(151)
		SAY("L'alliance dangereuse entre ces deux factions devrait �tre mise � mal pour le moment. Comment notre ordre peut-il te remercier pour ton geste?")
		
		ANSWER("Ne me remercie pas... remercie Cole. C'est lui qui a eu l'id�e de ce plan diabolique. J'en ai seulement �t� l'ex�cutant, au nom de Crahn.",152)
	NODE(152)
		SAY("Ne sois pas si modeste... comment une vieille vip�re comme Cole pourrait inventer quoi que ce soit d'utile?")
		
		ANSWER("On a parfois besoin d'un serpent pour r�gler rapidement une situation.",153)
	NODE(153)
		SAY("Tu parles en paraboles... Ah, avant que j'oublie : P�re Magnus a d�couvert un autre fragment pr�s de la mine de Gaya Gaya dans les Terres Br�l�es.")
		
		ANSWER("Il en sait davantage sur le r�le de ces objets?",154)
	NODE(154)
		SAY("Je dois t'informer qu'il semble sur le point de r�soudre cette �nigme. Il te contactera d�s qu'il saura exactement ce que sont ces fragments.")
		
		ANSWER("Nous avons d�j� trois fragments... Il serait temps que je comprenne leur signification.",155)
	NODE(155)
		SAY("Je te sugg�re de te pr�parer pour l'initiation au cercle rouge de l'Ordre. Pour cela, tu dois am�liorer tes aptitudes avant que je te confie la prochaine mission sp�ciale.")
		
		ANSWER("Je me pr�pare imm�diatement.",156)
	NODE(156)
		GIVEMONEY(6000)
		SAY("Voici 6.000 cr�dits, tu devrais les investir dans ton �quipement. Reviens ici quand tu auras suffisamment progress�. Que Crahn te b�nisse. Au revoir, jeune moine.")
		EPICRUNFINISHED(10,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
--Drakkhan
	NODE(200)
		SAY("C'est une r�union priv�e, d�gage!")
		ENDDIALOG()
	

end