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
		SAY("H�, vous! Vous avez envie de parler � quelqu'un, �a se sent!")
		SAY("H�, ma belle, vous voudriez pas d�poser vos jolies fesses ici et discuter un peu avec moi?")
		SAY("Salut ma belle, tiens, prends une chaise, faut qu'on parle.")
		SAY("Salut beaut�.")

	else

		SAY("Salut mon pote. T'as eu une dure journ�e?")
		SAY("Toi, mon gars, tu cherches quelqu'un � qui parler, �a se voit dans tes yeux.")
		SAY("H�, l'ami, tu cherches quelque chose?")
		SAY("H�, l'ami, tu cherches quelqu'un?")
		SAY("H� mon pote, viens, prends une chaise.")
	end

		ANSWER("Excuse-moi?",2)
		ANSWER("C'est � moi que tu parles?",2)
		ANSWER("Moi?",2)
		ANSWER("Pardon?",2)
		ANSWER("Quoi?",2)
		ANSWER("Mais de quoi est-ce que tu parles?",2)

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("D�gage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arr�te de dire des conneries, esp�ce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est �a?",3)
		ANSWER("Reviens quand t'auras les id�es claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-�tre une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon m�tro.",4)

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
		SAY("Si tu t'assois et que tu me commandes une bi�re, je pourrais t'apprendre des trucs tr�s int�ressants.")
		SAY("Toi, t'as l'air d'aimer les rumeurs. Et une bi�re pourrait m'aider � me d�rouiller la langue.")
		SAY("T'as d�j� entendu causer de Tsunami? Alors j'ai de chouettes rumeurs pour toi. Assieds-toi, et commande-moi une bi�re, tu vas voir, �a vaut le coup.")
		SAY("Si tu vas me chercher une bi�re, je vais te raconter des trucs que les gangs des rues ils connaissent m�me pas!")
		SAY("Si tu cherches des nouvelles rumeurs, alors t'as trouv� le bon bonhomme. En fait, tout ce qu'il me faut, c'est une bi�re pour m'humidifier le gosier, sinon �a passera pas.")
		SAY("Assieds-toi et paye-moi une bi�re, j'ai quelques secrets � te raconter.")
		SAY("J'ai des infos toutes fra�ches sur les gangs de Pepper Park pour toi. Si �a t'int�resse, t'as qu'� m'acheter une bi�re et on en discute.")
		SAY("T'as du fric � d�penser? Alors va me prendre une bi�re, tu regretteras pas ton investissement.")
		SAY("Toi, t'as l'air du genre � offrir une bi�re � un pauvre type mort de soif. Et moi, j'ai l'air d'un pauvre type mort de soif, et qui en plus conna�t pas mal de choses sur le Dragon Noir. Avoue que �a tombe bien!")
		SAY("Je connais des rumeurs que t'as jamais entendues nulle part. Am�ne-moi un truc � boire, et je vais tout te raconter.") 	

		ANSWER("Ca m'int�resse. Je vais te chercher ta bi�re.",2)
		ANSWER("OK, pourquoi pas?",2)
		ANSWER("Attends une seconde, que j'aille te chercher ta bi�re.",2)
		ANSWER("Ca me semble correct.",2)
		ANSWER("OK, si tu garantis que c'est de premi�re fra�cheur...",2)
		ANSWER("J'appr�cie toujours les nouvelles rumeurs.",2)
		ANSWER("Ca marche, je vais te chercher ta bi�re.",2)

		ANSWER("Je vais te chercher ta bi�re, mais je veux savoir d'o� viennent ces rumeurs.",5)
		ANSWER("Int�ressant... Et d'o� est-ce que tu les tiens, ces rumeurs?",5)
		ANSWER("J'ai des doutes sur le fait que ce soit vraiment nouveau. Mais si tu me donnes le nom de ton contact, �a pourrait me convaincre.",5)
		ANSWER("J'ai encore des doutes. Tu sais quoi? Donne-moi le nom de ton informateur, et je marche.",5)
		ANSWER("Si tu me dis le nom de ton informateur, �a pourrait achever de me convaincre.",5)
		ANSWER("En fait, je ne pense pas que �a m'int�resse. Mais si tu me donnes le nom de ton informateur, �a pourrait peut-�tre me faire changer d'avis.",5)

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("D�gage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arr�te de dire des conneries, esp�ce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est �a?",3)
		ANSWER("Reviens quand t'auras les id�es claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-�tre une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon m�tro.",4)

	end

NODE(3)
		SAY("Mais laisse-moi tranquille!")
		SAY("D�gage!")
		SAY("Va chier, face de pet!")
		SAY("De toute fa�on j'aime pas ta gueule!")
		SAY("C'est �a retourne voir tes amis les mutants!")
		SAY("Tu vas t'attirer des emmerdes si tu causes aux gens comme �a. Allez, hors de ma vue!")
		SAY("Les gens comme toi, �a me donne envie de vomir!")
		SAY("C'est �a, va crever ailleurs.")
		SAY("Personne t'a jamais appris les bonnes mani�res?")

	ENDDIALOG()

NODE(4)
		SAY("Bon, ben navr� pour toi, tu manque des infos passionnantes.")
		SAY("J'ai plein de trucs � te raconter, mais si tu veux m�me pas �couter...")
		SAY("H�, si tu changes d'avis je serai encore l� ce soir!")
		SAY("Si tu changes d'avis, repasse me voir, je serai dans le coin ce soir.")
		SAY("Comme tu veux. C'est pas moi qui irai te courir apr�s.")
		SAY("Tu manques plein de trucs, tu sais? Enfin bon, tu fais comme tu le sens...")
		SAY("Ca t'aurait pas tu� de me payer une bi�re, hein? Ben puisque c'est comme �a, t'entendras pas les derni�res rumeurs!")
		SAY("Si tu veux pas savoir ce qui se passe � Neocron, tant pis pour toi.")
		SAY("Au revoir. Je suis certain que tu vas changer d'avis et que tu vas revenir, de toute fa�on.")

	ENDDIALOG()

NODE(5)

	ALIGNMENT()

	if (result==2) then

		SAY("Je te trouve sympathique, mais c'est pas le genre d'information que je peux l�cher. C'est quelqu'un de tr�s haut plac�.")
		SAY("Toi, je t'aime bien, alors je vais te dire un truc : C'est l'un d'eux.")
		SAY("T'es quelqu'un de r�glo, mais faut que tu comprennes que je peux pas en dire beaucoup. C'est l'un d'eux, en tout cas.")
		SAY("Je sais que t'es digne de confiance... il travaille pour Tsunami. C'est quelqu'un d'important. Et ce que je vais te dire, c'est pas des conneries.")
		SAY("Tu veux savoir? Alors je vais te le dire. C'est une de mes connaissances qui travaille pour Dragon Noir. Et il sait de quoi il parle, le mec.")
		SAY("Bon, je vais te le dire, mais c'est uniquement parce que je t'aime bien. C'est un type de Dragon Noir qui me l'a dit.")
SAY("T'es cool, toi, je sais bien, mais je peux te dire que �a : si c'est quelqu'un qui conna�t des trucs sur Tsunami, c'est parce qu'il en fait partie.")

		ANSWER("Merci l'ami, c'est plus que ce que j'esp�rais. Si on revenait � nos moutons, maintenant?",6)
		ANSWER("Bon, �a l'ira. Alors, ces infos...?",6)
		ANSWER("Ah, quelqu'un de l'int�rieur? Ca commence � me plaire! De quoi est-ce qu'on parlait, d�j�?",6)
		ANSWER("Cool. Bon, revenons � nos moutons...",6)
		ANSWER("OK. Maintenant que j'en sais un peu plus, retournons � nos rumeurs...",6)
		ANSWER("Bon, je vois ce que tu veux dire. Revenons � notre discussion d'origine...",6)

	else

		SAY("D�sol�, mais je peux rien te dire l�-dessus.")
		SAY("D�sol�, mais c'est quelque chose dont je peux pas parler.")
		SAY("Si je te le disais, mon contact appr�cierait pas...")
		SAY("je peux vraiment rien te dire. Les gens qui savent pas rester discrets au sujet de certaines choses, on les retrouve mort dans une poubelle de Pepper Park, tu le sais aussi bien que moi.")
		SAY("Si je fais �a, je mets mon contact dans le p�trin, et moi avec. Juste parce que tu poses des questions. Il va falloir te contenter de me faire confiance.")
		SAY("Y a des choses dans la vie qu'il vaut mieux garder pour soi. Et �a fait partie de ces choses-l�.")
		SAY("Si tu commences � fourrer ton nez dans les affaires des autres, tu vas te retrouver � l'�tat de cadavre dans une poubelle de Pepper Park. Je pense pas que c'est ce que tu recherches, alors arr�te de poser des questions.")
		SAY("Fais-moi confiance. Je sais de quoi je parle, et cette info, c'est pas du bidon!")

		ANSWER("Bon. De toute fa�on je veux savoir. Revenons au sujet.",6)
		ANSWER("Bon. Ca ne me satisfait pas, mais je veux quand m�me savoir. Dis-m'en plus.",6)
		ANSWER("Je savais que tu voudrais pas me cracher le morceau. Mais c'est pas grave, vas-y, j'�coute.",6)
		ANSWER("Bon, tant pis... Alors, ces rumeurs?",6)
		ANSWER("Et je pourrai pas te faire changer d'avis? Bon, d'accord, j'ai compris. Alors, ces rumeurs?",6)
		ANSWER("Bon, dans ce cas... Revenons � nos rumeurs.",6)

	end

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("D�gage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arr�te de dire des conneries, esp�ce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est �a?",3)
		ANSWER("Reviens quand t'auras les id�es claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-�tre une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon m�tro.",4)

	end

NODE(6)
		SAY("Bien. Alors, tu vas me la chercher, cette bi�re?")
		SAY("Et cette bi�re, c'est pour aujourd'hui ou pour demain?")
		SAY("Je vais pas rester le cul sur cette chaise toute la journ�e. Elle vient, cette bi�re?")
		SAY("Avant qu'on se mette � parler d'autre chose, si on abordait le probl�me de ma bi�re?")
		SAY("Bon, o� est ma bi�re?")
		SAY("Tu sais, j'attends toujours ma bi�re...")
		SAY("H�, qu'est-ce qui est arriv� � ma bi�re? Tu l'as oubli�e?")
		SAY("Et moi je suis encore mort de soif, et c'est pas causer avec toi qui va m'arranger �a. Il me faut une bi�re, sinon je cr�ve sur place.")

		ANSWER("OK, je vais te chercher ta bi�re.",10)
		ANSWER("C'est bon, du calme, je vais te chercher ta bi�re.",10)
		ANSWER("OK, du calme. Je vais te la chercher, ta bi�re.",10)
		ANSWER("Attends une seconde, je m'en occupe.",10)
		ANSWER("Je vais te chercher ta bi�re, ne bouge pas d'ici.",10)
		ANSWER("D'accord pour une bi�re. Mais t'as int�r�t � parler apr�s �a!",10)
		ANSWER("Tu vas l'avoir, ta bi�re. Mais j'attends quelque chose en retour, souviens-toi!",10)

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("D�gage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arr�te de dire des conneries, esp�ce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est �a?",3)
		ANSWER("Reviens quand t'auras les id�es claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-�tre une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon m�tro.",4)

NODE(10)
	TAKEMONEY(25)
	if(result == 0) then
		SAY("Et t'as m�me pas de quoi me payer une bi�re? Mais tu sais que t'es encore plus pauvre que moi? Je savais m�me pas que c'�tait possible!")
		SAY("T'as vraiment pas de chance. Tu peux m�me pas me payer une bi�re?")
		SAY("Tu devrais revenir quand t'auras quelques cr�dits en poche, qu'est-ce que t'en dis?")
		SAY("Sans bi�re, je pourrai rien te dire. Pour parler, il me faut �a.")
		SAY("Ah ouais, quand m�me... Bon, ben reviens quand t'auras quelques cr�dits, alors.")
		SAY("T'essaierais pas d'avoir des infos sans payer, toi? Allez, du vent!")
		SAY("Et comment tu vas faire pour me payer une bi�re si t'as pas un sou? Va falloir que tu m'expliques.")
		SAY("Pas de cr�dits, pas de bi�re, pas d'histoire.")
		SAY("Pas de cr�dits, pas de bi�re, pas d'histoire. C'est aussi simple que �a.")
		SAY("Ah, d�sol�, mais sans bi�re, je perds mon temps.")

		ENDDIALOG()
	else
		RAND(5)
		if (result==1) then
			SAY("Tu connais Dragon Noir? Ouais, je le savais. Ils contr�lent pas mal d'affaires � Neocron, et �a leur fait gagner un paquet d'argent. Mais il y a pas longtemps, ils ont commenc� � devenir nerveux et � se frotter � Tsunami. Y a un orage qui approche, �a je peux te l'assurer. Je te conseille de prier pour pas te prendre une balle perdue le jour o� �a va p�ter. Moi, je vais me faire tout petit et je vais �viter d'aller au Pussy Club pendant quelques temps, �a vaut mieux.")
		end
		if (result==2) then
			SAY("Tu connais? Trond? Maximilien Trond, le big boss de Dragon Noir? C'est lui qui contr�le le march� de la drogue dans Neocron. Un de ses hommes a commenc� � fourrer son nez l� o� il fallait pas, et devine comment �a s'est termin�? Ben ouais, tout juste, il est mort. Enterr� vivant dans les Terres Br�l�es, et c'est Trond qui s'en est charg� en personne. Ce type, c'est une saloperie de tueur. Je l'ai crois� une fois, et j'esp�re que �a se produira plus jamais.")		
		end
		if (result==3) then
			SAY("Gecko, le SysAdmin de Dragon Noir, c'est un dr�le de type. J'ai entendu dire qu'il pourrait renverser son boss � tout moment, juste en claquant des doigts. Mais il le fait pas. La faute � un serment de loyaut�, un truc de ce genre. C'est le mec le plus con du monde! Si j'�tais � sa place, �a ferait un bout de temps que j'aurais fait descendre l'autre abruti. Non mais tu t'imagines, big boss de Dragon Noir? Riche, c�l�bres, craint pas tout le monde! Ah ouais, le paradis sur terre!")	
		end
		if (result==4) then
			SAY("Si t'es du genre � acheter des drogues ill�gales, alors tu connais certainement Dragon Noir, j'imagine. Mais tu penses vraiment qu'ils produisent tout �a eux-m�mes? Je sais qu'ils ont pas de grands labos, ni d'arm�es de scientifiques, ils ont pas tout ce qu'il faut pour produire autant. Ils ont des contacts avec une corpo pour qu'elle assure leur ravitaillement, �a c'est certain. Mais laquelle, �a je sais pas...")			
		end
		if (result==5) then
			SAY("MaWong. Tu connais? Ouaip, c'est le SysAdmin de CityMercs. Un pote � moi m'a racont� qu'il �tait dans un des deux gros gangs de Neocron avant de passer chez les Mercs. Je sais pas si c'�tait Dragon Noir ou Tsunami, mais je pense pas qu'ils soient ravis de le savoir. Moi, je pense que le MaWong, il va finir en bouillie")			
		end
		if (result==6) then
			SAY("Toi, t'aimes bien t'amuser, hein? C'est Tsunami qui contr�le tout �a depuis Pepper Park. Les clubs, les bars � putes, tout. C'est eux qui te disent comment prendre ton pied. Et si tu leur cherches des emmerdes, tu vas t'en attirer. Si tu vas voir Dragon Noir, tu pourrais te faire quelques amis, je pense.")			
		end
		if (result==7) then
			SAY("T'as d�j� vu madame V�ronique? Je l'ai vu deux fois, moi. On dirait un ange qui descend du ciel. Tous les mecs de Neocron, ils tueraient pour vivre avec. Et c'est pas seulement parce qu'elle est belle, m�me si c'est vraiment le cas. Nan, c'est aussi parce qu'elle poss�de tout Tsunami. Et elle contr�le tout �a presque toute seule. Et pour �a, moi j'te dis, je la respecte.")			
		end
		if (result==8) then
			SAY("Ce type qui travaille pour Tsunami, ce 'Flux', c'est une saloperie de Moine PSI. Quand il te regarde, t'as l'impression qu'il fouille dans ton �me. Et on m'a racont� qu'il est aussi insensible qu'un poisson mort. Mais c'est peut-�tre pas vrai, j'ai entendu dire qu'il avait le b�guin pour V�ronique Duchamp, son boss. Ca serait � mourir de rire, tu trouves pas? Mais parle pas de �a quand il est dans le coin, sauf si tu veux un aller simple pour la morgue.")			
		end
		if (result==9) then
			SAY("Les Anarchistes, c'est des gens bizarres. Non seulement ils traitent avec les deux gangs, mais en plus ils s'allient avec l'un ou l'autre selon les p�riodes. C'est marrant de voir deux gangs se battre pour gagner les faveurs des anarchistes. C'est des gros clients pour les deux gangs, pas �tonnant qu'ils se les arrachent.")			
		end
		if (result==10) then
			SAY("Ah l� l�, qu'est-ce que j'ai soif... Merci pour la bi�re. Bon, o� est-ce que j'en �tais, d�j�? Ah, oui... Tu savais qu'il se passait des tonnes de trucs pas l�gaux dans les clubs de Tsunami? Je me suis retrouv� une fois dans une de ces orgies o� il y avait des mutants, j'ai eu la trouille de ma vie! J'ai eu de la chance de m'en sortir vivant, crois-moi! Ca me donne envie de vomir... J'esp�re que t'aimes pas les mutants, toi?")	
		end		
	end

	ANSWER("Je te paye une autre bi�re si tu as autre chose � me raconter...",10)
	ANSWER("Tu prendras bien une autre bi�re?",10)
	ANSWER("Il me reste encore de l'argent. Je vais te chercher une autre bi�re, et on continue � parler?",10)
	ANSWER("C'�tait tr�s int�ressant. Je parie que tu as encore plein de trucs � raconter. Je vais te chercher une autre bi�re?",10)
	ANSWER("Bouge pas, je vais te prendre une autre bi�re.",10)
	ANSWER("C'�tait int�ressant. Tu prendras bien encore une bi�re, hein?",10)

	ALIGNMENT()

	if (result==0) then

		ANSWER("Allez, va chier!",3)
		ANSWER("D�gage.",3)
		ANSWER("Ta gueule.",3)
		ANSWER("Pourquoi tu me laisses pas tranquille?",3)
		ANSWER("Arr�te de dire des conneries, esp�ce d'ivrogne.",3)
		ANSWER("T'as encore bu un coup de trop, c'est �a?",3)
		ANSWER("Reviens quand t'auras les id�es claires.",3)

	else

		ANSWER("Pardon, il faut que je m'en aille.",4)
		ANSWER("Pardon, mais j'attends quelqu'un.",4)
		ANSWER("J'aimerais bien parler, mais j'ai beaucoup de travail.",4)
		ANSWER("Peut-�tre une autre fois, l'ami. Je cherche quelqu'un.",4)
		ANSWER("Pardon, mais j'ai vraiment pas le temps de discuter.",4)
		ANSWER("Je ne pense pas qu'on devrait parler ensemble.",4)
		ANSWER("Pardon, il faut que j'aille aux toilettes.",4)
		ANSWER("Pardon l'ami, mais il faut que je m'en aille. On se parlera une autre fois.",4)
		ANSWER("Pardon, je n'ai pas le temps de parler, je vais rater mon m�tro.",4)
	end
end
end