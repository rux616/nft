--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--0
--50
--0,D,Leila
--1,D,Taylor
--200

--Startnode, Person
--0 Human Resource
--50 Jester
--100 Leila
--150 Taylor Gomez
--200
--250

-----------------------------------------------------
--Recruiter

	NODE(0)
		SAY("On a justement besoin de quelqu'un pour un boulot, on peut dire que tu tombes bien! On a eu quelques problèmes avec le Dragon Noir dernièrement. Il y a eu une fusillade devant un de nos clubs, ils ont sorti l'artillerie lourde. On les a fait dégager rapidement, mais ils étaient là pour nous faire passer un message. Il faut qu'on fasse quelque chose. T'as envie de continuer à nous aider?")
		
		ANSWER("Ils ont vraiment pas froid aux yeux... Si tu veux, je vais en tuer quelques uns tout de suite.",1)
		ANSWER("Pas en ce moment, j'ai déjà quelque chose de prévu.",6)
	NODE(1)
		SAY("Non, pas tout de suite encore. Comme tu nous as prouvé que tu étais quelqu'un de sérieux, on va te confier quelque chose à faire. Notre priorité actuellement, c'est de rassembler des infos sur le Dragon Noir, sur ce qu'ils préparent contre nous. Et on veut aussi se venger de ce qu'ils nous ont fait.")
		
		ANSWER("L'importance de la menace?",2)
	NODE(2)
		SAY("Actuellement, il y a des affrontements presque quotidiens entre nos deux factions. Ils essaient de nous prendre des parts de marché en menaçant nos clients et nos danseuses. On peut pas les laisser continuer comme ça. On va leur apprendre qu'on cèdera pas, et qu'il en est pas question.")
		
		ANSWER("A part en tuer quelques uns, je vois rien d'efficace...",3)
	NODE(3)
		SAY("On a réussi à infiltrer un des nôtres dans leur hiérarchie. Elle s'appelle Leila. Tu lui porteras un petit paquet, ça l'aidera à foutre le bronx dans leur organisation.")
		
		ANSWER("Où est-ce que je le trouve, ce paquet?",4)
	NODE(4)
		SAY("C'est Jester qui l'a. Va lui prendre, et donne-le à Leila. Ils devraient pas apprécier la surprise, je pense. Pense à préciser à Leila que la cible doit être soit Gecko, soit Trond directement, c'est le big boss de cette bande de merdeux.")
		
		ANSWER("Où est-ce que je peux trouver Leila?",5)
	NODE(5)
		SAY("Pas loin du QG Dragon Noir, c'est l'endroit convenu. Une fois qu'elle a le tout, va confirmer la réussite à Taylor Gomez, dans notre QG secret à Neocron.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		
	NODE(6)
		SAY("Tsunami ne te donne pas ses missions pour te faire plaisir. Le fait que tu refuses en dit pas mal sur ton manque d'implication chez nous.")
		ENDDIALOG()
		
	NODE(7)
		SAY("Ta mission est claire : va chercher le colis auprès de Jester, transmets-le à Leila et va faire ton rapport à Taylor Gomez.")
		ENDDIALOG()

-----------------------------------------------------
--Jester



	NODE(50)
		SAY("Ah, te revoilà? Je te croyais mort! Tu viens pour ma petite invention? Ca m'a pris pas mal de temps pour réussir le dosage d'hormones, mais maintenant c'est au point. Mais j'ai pas envie de le tester sur moi, faut pas déconner. Par le passé, j'ai bossé pour ProtoPharm, entre autres choses, et j'ai appris comment certains produits chimiques pouvaient modifier les fonctions du corps. Aujourd'hui, je dois dire que je suis plutôt content de mettre tout ça en pratique.")
		
		ANSWER("Tu m'intrigues... Qu'est-ce que ça fait, ton truc?",51)
	NODE(51)
		SAY("C'est un appareil très sophistiqué qui injecte du poison. On diraît un implant normal, mais celui qui le porte se fait bouffer le cerveau à petit feu. J'aimerais pas être à la place de ce type... Mais pour que ça fonctionne bien, il me faut du Tiberal et de l'Adiclovin. Tu peux me trouver ça?")
		SETNEXTDIALOGSTATE(52)
		ENDDIALOG()

--Player gets Tiberal and Adiclovin
		
	NODE(52)
		TAKEITEM(269)
		if(result==0)then
			SAY("Il me faut du Tiberal et de l'Adiclovin pour que ça fonctionne, sinon ça fera aucun effet.")
			ENDDIALOG()
		else
			TAKEITEM(273)
			if(result==0)then
				GIVEITEM(269)
				SAY("Il me faut encore de l'Adiclovin.")
				ENDDIALOG()
			else
				GIVEITEM(9252)
				SAY("Excellent. Deux petites secondes... Et voilà. Tiens, tu sais quoi en faire.")
				SETNEXTDIALOGSTATE(53)
				ENDDIALOG()
		
			end
		end
	NODE(53)
		SAY("Tu as déjà tout ce qu'il faut. J'espère pour toi que tu as pas perdu l'implant? Allez, va donner ça à ton contact.")
		ENDDIALOG()
		

-----------------------------------------------------
--Leila

	NODE(100)
		SAY("Regardez un peu ces grands yeux plein de rêves... Tu veux que j'en réalise quelques uns?")
		
		ANSWER("Je voudrais parler à Leila.",101)
	NODE(101)
		SAY("... Et voilà, je savais que ça finirait par arriver. Pars d'ici tout de suite, Gecko est très cruel, tu n'as pas idée.")
		
		ANSWER("C'est qui, Gecko?",102)
	NODE(102)
		SAY("Gecko c'est le numéro deux du Dragon Noir. Tu ne sais pas ce qu'il pourrait me faire s'il savait que j'ai parlé avec un Tsunami... et même moins que ça.")
		
		ANSWER("On m'a dit que tu avais des infos au sujet des projets du Dragon Noir, alors arrête de chialer comme ça.",103)
	NODE(103)
		SAY("Si je te dis tout, est-ce que tu me laisseras tranquille?")
		
		ANSWER("J'ai toujours l'implant pour toi. On m'a dit de te le donner. Tu sais quoi faire avec, j'espère? C'est soit pour Gecko, soit pour Trond, comme tu veux.",104)
	NODE(104)
		SAY("Je ne peux pas faire ça, il me tuerait. Je t'en prie, ma vie est déjà un enfer.")
		
		ANSWER("Tu ferais mieux de faire ce que je te dis, sinon ça va être pire encore. Tsunami n'aime pas les traîtres.",105)
	NODE(105)
		TAKEITEM(9252)
		if(result==0)then
			SAY("Mais comment est-ce que je peux faire si tu n'as même pas l'implant sur toi?")
			ENDDIALOG()
		else
			SAY("D'accord, mais je t'en supplie ne me fait pas de mal. Gecko me fait surveiller de très près. Il pense que je travaille pour Tsunami, et chaque jour j'ai l'impression que c'est le dernier que je vis... La seule chose que je sais, c'est que le Dragon Noir est en train de conclure un contrat important avec ProtoPharm. J'en sais plus. Va-t-en avant qu'ils se doutent de quelque chose.")
		
			ANSWER("D'accord, voilà l'implant. Assure-toi qu'il remplisse son rôle comme prévu.",106)
		end
	NODE(106)
		SAY("Je... Je vais faire comme tu m'as dit...")
		SETNEXTDIALOGSTATE(107)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(107)
		SAY("Je dois attendre encore un peu! Pas question que j'y aille tout de suite et que je lui implante ça dans la tête. Laisse-moi un peu de temps.")
		ENDDIALOG()
		


-----------------------------------------------------
--Taylor Gomez

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("J'ai pas de temps à perdre avec toi. Où en est ta mission?")
			ENDDIALOG()
		else
			SAY("Tu as les infos? Tu as livré l'implant?")
		
			ANSWER("Je lui ai donné l'implant, mais les infos sont maigres. La seule chose que j'ai pu apprendre, c'est qu'ils préparaient quelque chose avec ProtoPharm.",151)
		end
	NODE(151)
		GIVEMONEY(5000)
		SETNEXTDIALOGSTATE(152)
		SAY("Excellent. Je vais voir si je peux en apprendre plus. Tiens, voilà 5.000 crédits en récompense.")
		
		ANSWER("Merci. A propos de Leila... J'ai l'impression qu'elle a des problèmes, et qu'ils se doutent de quelque chose à son sujet.",152)
	NODE(152)
		SAY("Tu penses? Elle doit encore se faire une crise de parano. Et puis, même si elle était réellement en danger, une de plus ou de moins, hein... On peut s'en passer.")
		
		ANSWER("Mais elle avait vraiment l'air effrayée. Ca n'est pas un peu dur de la traiter comme ça? Elle est quand même des nôtres.",153)
	NODE(153)
		SAY("T'en fais pas pour elle. La prochaine fois qu'on fera une opération contre le Dragon Noir, on aura certainement besoin de ton aide. D'ici là, entraîne-toi un peu? (prochaine mission au niveau 30)")
		EPICRUNFINISHED(8,1)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	

end
