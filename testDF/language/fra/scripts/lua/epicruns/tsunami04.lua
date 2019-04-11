--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--0,D,Taylor
--1,D,Gruber
--2,D,Black Lily
--200

--Startnode, Person
--0 Human Resource
--50 Taylor
--100 Gruber Zakashi
--150 Black Lily
--200
--250

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("On entend de plus en plus de rumeurs au sujet d'un espion dans nos rangs. ces rumeur se répandent, et personne ne semble en mesure de les enrayer efficacement. Les gens ne se font plus confiance, ça n'est plus comme avant. Véronique a été mise au courant, et sa réponse a été une liste de tous les membres les plus loyaux de Tsunami.")
		
		ANSWER("En clair?",1)
	NODE(1)
		SAY("Cette liste contient les noms des personnes a qui on peut réellement faire confiance. Ca veut dire que de nombreux membres de seconde zone doivent être tenus a distance, et tu en fais partie. Je sais bien que tu fais partie de ceux qui ont beaucoup fait pour Tsunami récemment. Je pourrais essayer de te faire inscrire sur cette liste, mais pour ça il faudra tester ta loyauté une nouvelle fois. Il faut vraiment que tu saches ce que tu veux.")
		
		ANSWER("C'est des conneries, tout ça. J'ai prouvé ma loyauté de nombreuses fois. Je n'entre pas dans ces combines de merde.",4)
		ANSWER("J'ai déjà prouvé ma valeur, et s'il le faut a nouveau, je le referai.",2)
	NODE(2)
		SAY("Officiellement c'est vrai, mais il y a des fuites au sein de Tsunami. Ta mission n'a pas été la seule preuve qu'il y a une taupe parmi nous. Je sais que tu mets ta vie en danger, mais avec tous ces GenRep qu'on voit un peu partout, risquer sa vie, ça ne veut malheureusement plus dire grand-chose. Ce que tu as la possibilité de faire, c'est un contrat pour un de nos membres les plus importants, et ça te donnerait accès a cette liste.")
		
		ANSWER("Excellent. Je t'écoute.",3)
	NODE(3)
		SAY("Si tu es loyal, alors tu n'hésiteras pas. Sinon, on n'a pas besoin de toi. Va parler à Taylor Gomez au QG. Il m'a dit qu'il avait une mission pour toi. Apparemment, il pense que tu es loyal envers nous.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(4)
		SAY("Mauvais choix. Tsunami n'est pas un club dont on peut entrer et sortir comme on veut. Mets-toi ça dans ta petite tête.")
		ENDDIALOG()
		
	NODE(5)
		SAY("Je ne pense pas que Gomez va t'attendre jusqu'a la fin des temps...")
		ENDDIALOG()
		


-----------------------------------------------------
--Taylor


	NODE(50)
		SAY("Je voulais te parler de quelque chose d'important. Tu te souviens, quand tu as tué ce type de ProtoPharm? Tu nous as dit qu'il avait été prévenu par quelqu'un. Et ça veut dire qu'il y a un espion dans Tsunami, qui a accès à des informations importantes. Qui est-ce qui pourrait faire ça, d'après toi? Ne me cache rien, je te demande parce que tu pourrais avoir une bonne vision de la situation. Apres tout, c'est toi qu'il a trahi.")
		
		ANSWER("J'en sais rien. Ca pourrait être n'importe qui, mais je pense que c'est quelqu'un d'important, parce que personne d'autre n'aurait pu avoir accès a cette information.",51)
	NODE(51)
		SAY("Oui. Et l'autre possibilité, c'est que ce soit quelqu'un de l'ombre, quelqu'un dans ton genre. Apres tout, tu savais tout ça avant tout le monde. L'embuscade, par exemple. Tu as signalé qu'ils étaient prêts, et tu n'as pas réussi à terminer ton job. Ton contact n'a pas voulu mettre le meurtre sur le dus du Dragon Noir. Et si par hasard tu avais monté tout ça? Apres tout, peut-être que tu travailles pour eux en vérité...")
		
		ANSWER("Mais tu sais très bien que ça ne peut pas être moi. J'ai risqué mon cul dans cette affaire! C'est moi qui l'ai refroidi, ce type!",52)
	NODE(52)
		SAY("Tu te laisses emporter par tes émotions, je n'aime pas ça. Je sais que tu en sais bien plus que ce que tu veux montrer. Mais je m'en fiche, je ne suis pas du genre qu'on trompe facilement. Je sais reconnaître quelqu'un de bien lorsque je le vois. Et tu as beaucoup fait pour Tsunami récemment. Alors j'ai voulu te donner une mission importante, même si tu n'es pas sur la liste de Véronique. Ca te flatte l'ego, n'est-ce pas? Et puis, ça pourrait te permettre d'avoir plus de reconnaissance dans nos rangs.")
		
		ANSWER("Très bien. Enfin quelqu'un qui reconnaît mon dévouement au Syndicat.",53)
	NODE(53)
		SAY("Oui, oui... La personne que tu dois rencontrer, tu la trouveras à Catlock Bay, dans les Terres Brûlées. Il te donnera plus d'informations sur la suite des événements.")
		
		ANSWER("Pas très précis, comme informations. Je pourrais en savoir plus?",54)
	NODE(54)
		SAY("Ma patience commence à être a bout. Va voir Gruber à Catlock Bay. Si tu traînes encore, je te promets que ton statut dans le syndicat va en prendre un sacré coup.")
		SETNEXTDIALOGSTATE(55)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(55)
		SAY("C'est une faveur que je te fais avec cette missions! Alors n'aie pas la stupidité de risquer tout ce que tu as déjà fait. Va à Catlock Bay.")
		ENDDIALOG()
		


-----------------------------------------------------
--Zakashi

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Hors de ma vue, j'ai rien a te dire.")
			ENDDIALOG()
		else
			SAY("Tu viens de la part de Gomez, c'est exact?")
		
			ANSWER("Oui, il m'a dit que tu avais des instructions pour moi.",101)
		end
	NODE(101)
		SAY("Quelle ironie... Il n'en dit jamais assez. Donc, il ne t'a pas dit pourquoi il t'avait envoyé dans ce trou perdu des terres Brûlées, c'est ça?")
		
		ANSWER("Non, mais j'imagine...",102)
	NODE(102)
		SAY("C'est triste, mais va savoir pourquoi, ça me fait plutôt rigoler. Oui, c'est moi qui vais te donner tes instructions. C'est tout a fait vrai. Tu as certainement remarqué que Gomez était au courant pour la taupe au sein du Syndicat, pas vrai?")
		
		ANSWER("Je ne vois vraiment pas le rapport avec...",103)
	NODE(103)
		SAY("Ha, ha, ha. Bon, alors je vais te donner un indice. Je pense que si je te dis quelque chose, tu ne vas pas le répéter, pas vrai? Alors voila : Taylor pense que tu as découvert quelque chose qu'il voulait cacher.")
		
		ANSWER("Tu veux dire que c'est lui, l'espion?",104)
	NODE(104)
		SAY("Possible. Possible. Peut-être même très possible. Mais qui est-ce qui te croira? Hah! Personne! Ils te tueraient sans hésiter si tu avais l'audace de dire une chose pareille. Mon job, c'est de t'éliminer. Je te conseille pas de te défendre, parce que si tu me tuais, ça serait encore pire. Tsunami te donnerait la chasse pour avoir tué un de leurs membres. Et souviens-toi que tu n'as pas d'amis, personne ne va t'aider.")
		
		ANSWER("C'est faux! Mais... peut-être que Leila accepterait de m'aider? Elle est peut-être la seule en qui je peux avoir confiance... Est-ce que je peux vraiment lui faire confiance?",105)
	NODE(105)
		SAY("Assez discuté, tu vas mourir! Ha, ha, ha. ")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(106)
		ATTACK()
		ENDDIALOG()
	NODE(106)
		SAY("Je vais m'assurer que tu sois bien mort!")
		ATTACK()
		ENDDIALOG()

-----------------------------------------------------
--Leila


	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Non, je ne veux pas te parler. La dernière fois, ça s'est très mal passé.")
			ENDDIALOG()
		else
			SAY("Encore toi? Tu sais ce que Gecko m'a fait après ton départ? Il sait! Il sait que je suis une espionne pour Tsunami! Il si tu savais ce qu'il m'a fait ensuite... *sanglots*")
		
			ANSWER("Allez, du calme, arrête de pleurer, j'ai besoin de ton aide.",151)
		end
	NODE(151)
		SAY("Ah oui? Mais c'est vrai, tu as été tellement agréable avec moi... Tu rêves, oui! Pas après ce que j'ai vécu!")
		
		ANSWER("D'accord, je suis désolé pour ce qui t'est arrivé. Mais je suis tout de même pas responsable de ce qu'un taré te fait subir, si?",152)
	NODE(152)
		SAY("Toi, tu as le choix! Mais moi, je dépends des autres, je peux pas me révolter, même s'ils me battent et m'humilient! Je ne peux pas m'enfuir, je ne peux pas me battre, je suis leur esclave!!")
		
		ANSWER("Je sais pas comment je peux t'aider, mais j'ai peut-être une solution. Mais pour ça, il faut que tu m'aides tout de suite!",153)
	NODE(153)
		SAY("Qu'est-ce que tu comptes faire? Bon, après tout, ça ne peut pas empirer pour moi. Dis-moi comment je peux t'aider.")
		
		ANSWER("J'ai trouvé qui est l'espion dans le Syndicat. Mais il est trop puissant pour que je m'en charge tout seul.",154)
	NODE(154)
		SAY("Tu as trouvé qui est l'espion dont tout le monde parle? Alors qui c'est?")
		
		ANSWER("C'est Taylor Gomez. C'est certain. Il a essayé de me tuer parce que j'en savais trop.",155)
	NODE(155)
		SAY("Taylor? Oublie! Il est trop puissant. Et moi, comment est-ce que je peux t'aider contre in démon pareil? Il est presque aussi cruel que Gecko.")
		
		ANSWER("J'en sais rien! Il n'y a vraiment aucune solution?",156)
	NODE(156)
		SAY("Attends! J'ai peut-être trouvé quelque chose. Mais il faut d'abord que je contacte quelqu'un. Patiente un peu, garde profil bas, et reviens quand tu sens que ça s'est calmé pour toi. (prochaine mission au niveau 40)")
		EPICRUNFINISHED(8,3)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		


end