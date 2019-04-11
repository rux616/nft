---  A guy in the bar who talks about the Tsunami and Black Dragon

--- Note from Democritus:
--- I don't want him to leech all info out of that dude
--- by paying him a beer after a beer. a maximum of 3
--- infos or so would be cool. I don't know how to do
--- this as I am already using a lot of checks there. 
--- Any ideas?




function DIALOG()

NODE(0)	

	GENDERCHECK()

	if (result==0) then

		SAY("Salut m'zelle. Ca va?")
		SAY("Hé, vous! Vous avez envie de parler à quelqu'un, ça se sent!")
		SAY("Hé, ma belle, vous voudriez pas déposer vos jolies fesses ici et discuter un peu avec moi?")
		SAY("Salut ma belle, tiens, prends une chaise, faut qu'on parle.")
		SAY("Salut beauté.")

	else

		SAY("Salut mon pote. T'as eu une dure journée?")
		SAY("Toi, mon gars, tu cherches quelqu'un à qui parler, ça se voit dans tes yeux.")
		SAY("Hé, l'ami, tu cherches quelque chose?")
		SAY("Hé, l'ami, tu cherches quelqu'un?")
		SAY("Hé mon pote, viens, prends une chaise.")
	end

		ANSWER("Excuse-moi?",2)
		ANSWER("C'est à moi que tu parles?",2)
		ANSWER("Moi?",2)
		ANSWER("Pardon?",2)
		ANSWER("Quoi?",2)
		ANSWER("Mais de quoi est-ce que tu parles?",2)

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("Dégage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arrête de dire des conneries, espèce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est ça?",3)
		ANSWER("Reviens quand t'auras les idées claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-être une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon métro.",4)

	end



NODE(1)
		SAY("There is no NODE1. If you read this, DROP DEAD ASSHOLE!")
		SAY("Error: can not compute!")
		SAY("Must destroy all humans!")
		SAY("Maim! Kill! Destroy!")
		SAY("Exterminate!")
		SAY("For King and Country!")
		SAY("Oh wait - the devil just told me I have to kill you.")

	ATTACK()
		

NODE(2)
		SAY("Si tu t'assois et que tu me commandes une bière, je pourrais t'apprendre des trucs très intéressants.")
		SAY("Toi, t'as l'air d'aimer les rumeurs. Et une bière pourrait m'aider à me dérouiller la langue.")
		SAY("T'as déjà entendu causer de Tsunami? Alors j'ai de chouettes rumeurs pour toi. Assieds-toi, et commande-moi une bière, tu vas voir, ça vaut le coup.")
		SAY("Si tu vas me chercher une bière, je vais te raconter des trucs que les gangs des rues ils connaissent même pas!")
		SAY("Si tu cherches des nouvelles rumeurs, alors t'as trouvé le bon bonhomme. En fait, tout ce qu'il me faut, c'est une bière pour m'humidifier le gosier, sinon ça passera pas.")
		SAY("Assieds-toi et paye-moi une bière, j'ai quelques secrets à te raconter.")
		SAY("J'ai des infos toutes fraîches sur les gangs de Pepper Park pour toi. Si ça t'intéresse, t'as qu'à m'acheter une bière et on en discute.")
		SAY("T'as du fric à dépenser? Alors va me prendre une bière, tu regretteras pas ton investissement.")
		SAY("Toi, t'as l'air du genre à offrir une bière à un pauvre type mort de soif. Et moi, j'ai l'air d'un pauvre type mort de soif, et qui en plus connaît pas mal de choses sur le Dragon Noir. Avoue que ça tombe bien!")
		SAY("Je connais des rumeurs que t'as jamais entendues nulle part. Amène-moi un truc à boire, et je vais tout te raconter.") 	

		ANSWER("Ca m'intéresse. Je vais te chercher ta bière.",2)
		ANSWER("OK, pourquoi pas?",2)
		ANSWER("Attends une seconde, que j'aille te chercher ta bière.",2)
		ANSWER("Ca me semble correct.",2)
		ANSWER("OK, si tu garantis que c'est de première fraîcheur...",2)
		ANSWER("J'apprécie toujours les nouvelles rumeurs.",2)
		ANSWER("Ca marche, je vais te chercher ta bière.",2)

		ANSWER("Je vais te chercher ta bière, mais je veux savoir d'où viennent ces rumeurs.",5)
		ANSWER("Intéressant... Et d'où est-ce que tu les tiens, ces rumeurs?",5)
		ANSWER("J'ai des doutes sur le fait que ce soit vraiment nouveau. Mais si tu me donnes le nom de ton contact, ça pourrait me convaincre.",5)
		ANSWER("J'ai encore des doutes. Tu sais quoi? Donne-moi le nom de ton informateur, et je marche.",5)
		ANSWER("Si tu me dis le nom de ton informateur, ça pourrait achever de me convaincre.",5)
		ANSWER("En fait, je ne pense pas que ça m'intéresse. Mais si tu me donnes le nom de ton informateur, ça pourrait peut-être me faire changer d'avis.",5)

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("Dégage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arrête de dire des conneries, espèce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est ça?",3)
		ANSWER("Reviens quand t'auras les idées claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-être une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon métro.",4)

	end

NODE(3)
		SAY("Mais laisse-moi tranquille!")
		SAY("Dégage!")
		SAY("Va chier, face de pet!")
		SAY("De toute façon j'aime pas ta gueule!")
		SAY("C'est ça retourne voir tes amis les mutants!")
		SAY("Tu vas t'attirer des emmerdes si tu causes aux gens comme ça. Allez, hors de ma vue!")
		SAY("Les gens comme toi, ça me donne envie de vomir!")
		SAY("C'est ça, va crever ailleurs.")
		SAY("Personne t'a jamais appris les bonnes manières?")

	ENDDIALOG()

NODE(4)
		SAY("Bon, ben navré pour toi, tu manque des infos passionnantes.")
		SAY("J'ai plein de trucs à te raconter, mais si tu veux même pas écouter...")
		SAY("Hé, si tu changes d'avis je serai encore là ce soir!")
		SAY("Si tu changes d'avis, repasse me voir, je serai dans le coin ce soir.")
		SAY("Comme tu veux. C'est pas moi qui irai te courir après.")
		SAY("Tu manques plein de trucs, tu sais? Enfin bon, tu fais comme tu le sens...")
		SAY("Ca t'aurait pas tué de me payer une bière, hein? Ben puisque c'est comme ça, t'entendras pas les dernières rumeurs!")
		SAY("Si tu veux pas savoir ce qui se passe à Neocron, tant pis pour toi.")
		SAY("Au revoir. Je suis certain que tu vas changer d'avis et que tu vas revenir, de toute façon.")

	ENDDIALOG()

NODE(5)

	ALIGNMENT()

	if (result==2) then

		SAY("Je te trouve sympathique, mais c'est pas le genre d'information que je peux lâcher. C'est quelqu'un de très haut placé.")
		SAY("Toi, je t'aime bien, alors je vais te dire un truc : C'est l'un d'eux.")
		SAY("T'es quelqu'un de réglo, mais faut que tu comprennes que je peux pas en dire beaucoup. C'est l'un d'eux, en tout cas.")
		SAY("Je sais que t'es digne de confiance... il travaille pour Tsunami. C'est quelqu'un d'important. Et ce que je vais te dire, c'est pas des conneries.")
		SAY("Tu veux savoir? Alors je vais te le dire. C'est une de mes connaissances qui travaille pour Dragon Noir. Et il sait de quoi il parle, le mec.")
		SAY("Bon, je vais te le dire, mais c'est uniquement parce que je t'aime bien. C'est un type de Dragon Noir qui me l'a dit.")
SAY("T'es cool, toi, je sais bien, mais je peux te dire que ça : si c'est quelqu'un qui connaît des trucs sur Tsunami, c'est parce qu'il en fait partie.")

		ANSWER("Merci l'ami, c'est plus que ce que j'espérais. Si on revenait à nos moutons, maintenant?",6)
		ANSWER("Bon, ça l'ira. Alors, ces infos...?",6)
		ANSWER("Ah, quelqu'un de l'intérieur? Ca commence à me plaire! De quoi est-ce qu'on parlait, déjà?",6)
		ANSWER("Cool. Bon, revenons à nos moutons...",6)
		ANSWER("OK. Maintenant que j'en sais un peu plus, retournons à nos rumeurs...",6)
		ANSWER("Bon, je vois ce que tu veux dire. Revenons à notre discussion d'origine...",6)

	else

		SAY("Désolé, mais je peux rien te dire là-dessus.")
		SAY("Désolé, mais c'est quelque chose dont je peux pas parler.")
		SAY("Si je te le disais, mon contact apprécierait pas...")
		SAY("je peux vraiment rien te dire. Les gens qui savent pas rester discrets au sujet de certaines choses, on les retrouve mort dans une poubelle de Pepper Park, tu le sais aussi bien que moi.")
		SAY("Si je fais ça, je mets mon contact dans le pétrin, et moi avec. Juste parce que tu poses des questions. Il va falloir te contenter de me faire confiance.")
		SAY("Y a des choses dans la vie qu'il vaut mieux garder pour soi. Et ça fait partie de ces choses-là.")
		SAY("Si tu commences à fourrer ton nez dans les affaires des autres, tu vas te retrouver à l'état de cadavre dans une poubelle de Pepper Park. Je pense pas que c'est ce que tu recherches, alors arrête de poser des questions.")
		SAY("Fais-moi confiance. Je sais de quoi je parle, et cette info, c'est pas du bidon!")

		ANSWER("Bon. De toute façon je veux savoir. Revenons au sujet.",6)
		ANSWER("Bon. Ca ne me satisfait pas, mais je veux quand même savoir. Dis-m'en plus.",6)
		ANSWER("Je savais que tu voudrais pas me cracher le morceau. Mais c'est pas grave, vas-y, j'écoute.",6)
		ANSWER("Bon, tant pis... Alors, ces rumeurs?",6)
		ANSWER("Et je pourrai pas te faire changer d'avis? Bon, d'accord, j'ai compris. Alors, ces rumeurs?",6)
		ANSWER("Bon, dans ce cas... Revenons à nos rumeurs.",6)

	end

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("Dégage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arrête de dire des conneries, espèce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est ça?",3)
		ANSWER("Reviens quand t'auras les idées claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-être une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon métro.",4)

	end

NODE(6)
		SAY("Bien. Alors, tu vas me la chercher, cette bière?")
		SAY("Et cette bière, c'est pour aujourd'hui ou pour demain?")
		SAY("Je vais pas rester le cul sur cette chaise toute la journée. Elle vient, cette bière?")
		SAY("Avant qu'on se mette à parler d'autre chose, si on abordait le problème de ma bière?")
		SAY("Bon, où est ma bière?")
		SAY("Tu sais, j'attends toujours ma bière...")
		SAY("Hé, qu'est-ce qui est arrivé à ma bière? Tu l'as oubliée?")
		SAY("Et moi je suis encore mort de soif, et c'est pas causer avec toi qui va m'arranger ça. Il me faut une bière, sinon je crève sur place.")

		ANSWER("OK, je vais te chercher ta bière.",10)
		ANSWER("C'est bon, du calme, je vais te chercher ta bière.",10)
		ANSWER("OK, du calme. Je vais te la chercher, ta bière.",10)
		ANSWER("Attends une seconde, je m'en occupe.",10)
		ANSWER("Je vais te chercher ta bière, ne bouge pas d'ici.",10)
		ANSWER("D'accord pour une bière. Mais t'as intérêt à parler après ça!",10)
		ANSWER("Tu vas l'avoir, ta bière. Mais j'attends quelque chose en retour, souviens-toi!",10)

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("Dégage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arrête de dire des conneries, espèce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est ça?",3)
		ANSWER("Reviens quand t'auras les idées claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-être une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon métro.",4)

NODE(10)
	TAKEMONEY(25)
	if(result == 0) then
		SAY("Et t'as même pas de quoi me payer une bière? Mais tu sais que t'es encore plus pauvre que moi? Je savais même pas que c'était possible!")
		SAY("T'as vraiment pas de chance. Tu peux même pas me payer une bière?")
		SAY("Tu devrais revenir quand t'auras quelques crédits en poche, qu'est-ce que t'en dis?")
		SAY("Sans bière, je pourrai rien te dire. Pour parler, il me faut ça.")
		SAY("Ah ouais, quand même... Bon, ben reviens quand t'auras quelques crédits, alors.")
		SAY("T'essaierais pas d'avoir des infos sans payer, toi? Allez, du vent!")
		SAY("Et comment tu vas faire pour me payer une bière si t'as pas un sou? Va falloir que tu m'expliques.")
		SAY("Pas de crédits, pas de bière, pas d'histoire.")
		SAY("Pas de crédits, pas de bière, pas d'histoire. C'est aussi simple que ça.")
		SAY("Ah, désolé, mais sans bière, je perds mon temps.")

		ENDDIALOG()
	else
		RAND(5)
		if (result==1) then
			SAY("Tu connais Dragon Noir? Ouais, je le savais. Ils contrôlent pas mal d'affaires à Neocron, et ça leur fait gagner un paquet d'argent. Mais il y a pas longtemps, ils ont commencé à devenir nerveux et à se frotter à Tsunami. Y a un orage qui approche, ça je peux te l'assurer. Je te conseille de prier pour pas te prendre une balle perdue le jour où ça va péter. Moi, je vais me faire tout petit et je vais éviter d'aller au Pussy Club pendant quelques temps, ça vaut mieux.")
		end
		if (result==2) then
			SAY("Tu connais? Trond? Maximilien Trond, le big boss de Dragon Noir? C'est lui qui contrôle le marché de la drogue dans Neocron. Un de ses hommes a commencé à fourrer son nez là où il fallait pas, et devine comment ça s'est terminé? Ben ouais, tout juste, il est mort. Enterré vivant dans les Terres Brûlées, et c'est Trond qui s'en est chargé en personne. Ce type, c'est une saloperie de tueur. Je l'ai croisé une fois, et j'espère que ça se produira plus jamais.")		
		end
		if (result==3) then
			SAY("Gecko, le SysAdmin de Dragon Noir, c'est un drôle de type. J'ai entendu dire qu'il pourrait renverser son boss à tout moment, juste en claquant des doigts. Mais il le fait pas. La faute à un serment de loyauté, un truc de ce genre. C'est le mec le plus con du monde! Si j'étais à sa place, ça ferait un bout de temps que j'aurais fait descendre l'autre abruti. Non mais tu t'imagines, big boss de Dragon Noir? Riche, célèbres, craint pas tout le monde! Ah ouais, le paradis sur terre!")	
		end
		if (result==4) then
			SAY("Si t'es du genre à acheter des drogues illégales, alors tu connais certainement Dragon Noir, j'imagine. Mais tu penses vraiment qu'ils produisent tout ça eux-mêmes? Je sais qu'ils ont pas de grands labos, ni d'armées de scientifiques, ils ont pas tout ce qu'il faut pour produire autant. Ils ont des contacts avec une corpo pour qu'elle assure leur ravitaillement, ça c'est certain. Mais laquelle, ça je sais pas...")			
		end
		if (result==5) then
			SAY("MaWong. Tu connais? Ouaip, c'est le SysAdmin de CityMercs. Un pote à moi m'a raconté qu'il était dans un des deux gros gangs de Neocron avant de passer chez les Mercs. Je sais pas si c'était Dragon Noir ou Tsunami, mais je pense pas qu'ils soient ravis de le savoir. Moi, je pense que le MaWong, il va finir en bouillie")			
		end
		if (result==6) then
			SAY("Toi, t'aimes bien t'amuser, hein? C'est Tsunami qui contrôle tout ça depuis Pepper Park. Les clubs, les bars à putes, tout. C'est eux qui te disent comment prendre ton pied. Et si tu leur cherches des emmerdes, tu vas t'en attirer. Si tu vas voir Dragon Noir, tu pourrais te faire quelques amis, je pense.")			
		end
		if (result==7) then
			SAY("T'as déjà vu madame Véronique? Je l'ai vu deux fois, moi. On dirait un ange qui descend du ciel. Tous les mecs de Neocron, ils tueraient pour vivre avec. Et c'est pas seulement parce qu'elle est belle, même si c'est vraiment le cas. Nan, c'est aussi parce qu'elle possède tout Tsunami. Et elle contrôle tout ça presque toute seule. Et pour ça, moi j'te dis, je la respecte.")			
		end
		if (result==8) then
			SAY("Ce type qui travaille pour Tsunami, ce 'Flux', c'est une saloperie de Moine PSI. Quand il te regarde, t'as l'impression qu'il fouille dans ton âme. Et on m'a raconté qu'il est aussi insensible qu'un poisson mort. Mais c'est peut-être pas vrai, j'ai entendu dire qu'il avait le béguin pour Véronique Duchamp, son boss. Ca serait à mourir de rire, tu trouves pas? Mais parle pas de ça quand il est dans le coin, sauf si tu veux un aller simple pour la morgue.")			
		end
		if (result==9) then
			SAY("Les Anarchistes, c'est des gens bizarres. Non seulement ils traitent avec les deux gangs, mais en plus ils s'allient avec l'un ou l'autre selon les périodes. C'est marrant de voir deux gangs se battre pour gagner les faveurs des anarchistes. C'est des gros clients pour les deux gangs, pas étonnant qu'ils se les arrachent.")			
		end
		if (result==10) then
			SAY("Ah là là, qu'est-ce que j'ai soif... Merci pour la bière. Bon, où est-ce que j'en étais, déjà? Ah, oui... Tu savais qu'il se passait des tonnes de trucs pas légaux dans les clubs de Tsunami? Je me suis retrouvé une fois dans une de ces orgies où il y avait des mutants, j'ai eu la trouille de ma vie! J'ai eu de la chance de m'en sortir vivant, crois-moi! Ca me donne envie de vomir... J'espère que t'aimes pas les mutants, toi?")	
		end		
	end

	ANSWER("Je te paye une autre bière si tu as autre chose à me raconter...",10)
	ANSWER("Tu prendras bien une autre bière?",10)
	ANSWER("Il me reste encore de l'argent. Je vais te chercher une autre bière, et on continue à parler?",10)
	ANSWER("C'était très intéressant. Je parie que tu as encore plein de trucs à raconter. Je vais te chercher une autre bière?",10)
	ANSWER("Bouge pas, je vais te prendre une autre bière.",10)
	ANSWER("C'était intéressant. Tu prendras bien encore une bière, hein?",10)

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("Dégage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arrête de dire des conneries, espèce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est ça?",3)
		ANSWER("Reviens quand t'auras les idées claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-être une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon métro.",4)
	end
end
end