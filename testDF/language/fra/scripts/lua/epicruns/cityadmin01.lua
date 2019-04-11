--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Black Lily
--1,D,Jenna
--2,D,Human resource Director

--Startnode, Person
--0,Human Resource
--50,Jenna
--100,Black Lily
--Items -> none

-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Bienvenue au CityAdmin. Nous rejoindre est probablement le meilleur choix que vous ayez jamais fait. CityAdmin est le plus grand établissement officiel pour la sûreté des citoyens de Neocron. Et tout cela grâce à Lioon Reza.")
	
	ANSWER("Puisque je fais maintenant partie de CityAdmin j'ai pensé que je pourrais obtenir un poste chez vous.",1)

NODE(1)
	SAY("J'allais justement vous en parler. En tant que membre fidèle de CityAdmin, il est prévu de vous que vous acceptiez des missions rémunérées. Vous êtes libre d'accepter ces tâches, mais qui rejetterait une demande de l'établissement responsable du bien-être de chacun dans Neocron?")
	
	ANSWER("CONTINUER",2)
NODE(2)
	SAY("Après tout, CityAdmin travaille pour les citoyens, à l'inverse de la dictature précédente des Moines PSI. À cette époque, les pensées étaient commandées par ces individus et le peuple a vécu dans l'esclavage virtuel. Beaucoup de gens oublient qui les a libérés de tout cela.")
	
	ANSWER("Mais est-ce différent aujourd'hui? Je veux dire, vous pouvez être exécuté pour un mot mal placé.",3)

NODE(3)
	SAY("Arrêtez. Je vais vous donner un bon conseil puisque vous êtes nouveau ici. Il n'y a aucune rumeur au sujet de CityAdmin, vous l'acceptez, c'est tout. C'est particulièrement vrai au sujet de Reza. Si vous n'observez pas mon avertissement, vous pourriez être mourir plus tôt que prévu. Et tout ça juste parce que vous ne savez pas tenir votre langue.")
	
	ANSWER("Je comprends. Je vais suivre votre conseil. Dites-moi alors ce qui est important au sujet de CityAdmin?",4)
NODE(4)
	SAY("Bien. Comme je disais donc, Reza a libéré le peuple de la dictature cruelle des Moines PSI après plus de cent ans de dictature. Cela s'est produit en l'année 2724, si je me souviens bien. Ce fut également le début d'une nouvelle ère de liberté.")
	
	ANSWER("CONTINUER",5)
NODE(5)
	SAY("Les Moines PSI doivent à la clémence de Lioon Reza d'être encore admis dans la ville. De plus, de nombreuses améliorations ont été apportées, de sorte que les citoyens ont maintenant une vie plus facile. La loi, par exemple, a été simplifiée.")
	
	ANSWER("CONTINUER",6)
NODE(6)
	SAY("De nos jours, tout le monde sait ce qu'on peut ou peut ne pas faire. Le succès de cette attitude peut être vu dans la Plaza ou Via Rosso, là le taux de criminalité est nul. ")
	
	ANSWER("CONTINUER",7)
NODE(7)
	SAY("Et tout ceci malgré les grandes difficultés, après que tant de gens soient partis dans une expédition à destination d'Irata III. À ce moment-là, la criminalité s'est accrue considérablement. C'est seulement grâce au CopBots qu'il reste un certain ordre dans la ville.")
	
	ANSWER("Savez-vous ce qui est arrivé à ceux qui se sont joints à l'expédition? Je veux dire après que le contact avec Irata III ait été perdu?",8)
NODE(8)
	SAY("La réponse est simple. Irata III, c'est très loin d'ici. Les efforts de CityAdmin sont axés sur la sécurité et le bien-être des citoyens de Neocron.")
	
	ANSWER("CONTINUER",9)
NODE(9)
	SAY("Mais assez d'histoire ancienne. Il y a une livraison à faire au NCPD. Une fois là-bas, vous pourriez peut-être un peu aider le NCPD. Neocron est une grande ville, et il y a toujours beaucoup à faire.")
	
	ANSWER("Bien, je vais porter ce colis, qu'est-ce qu'il contient?",10)
	ANSWER("Je ne crois pas être prêt pour cela.",11)
NODE(10)
	GIVEITEM(9052)
	SAY("Il contient des preuves sur différentes drogues qui sont reliées avec un crime. Si vous voulez en savoir plus, je suis sûr que vous pourrez obtenir plus d'information au NCPD. Bonne chance dans votre première mission pour CityAdmin.")
	ACCEPTMISSION()
	SETNEXTDIALOGSTATE(200)
	ENDDIALOG()
	
NODE(11)
	SAY("Comme vous voulez. Revenez quand vous serez prêt.")
	ENDDIALOG()
	

-----------------------------------------------------
--Officer Jenna, NCPD

NODE(50)
	TAKEITEM(9052)
	if(result==0)then
		SAY("Vous avez oublié le colis. Faites vite.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(51)
		SAY("Bonjour, Runner. J'espère que vous avez le colis? Bien, vous devez comprendre que c'est le chaos ici présentement. En temps normal, on a l'habitude. Mais c'est encore plus chaotique qu'à l'habitude.")
	
		ANSWER("Vous voilà. Pourquoi tant d'agitation?",51)
	end
NODE(51)
	SAY("Vous ne savez pas encore? Hier matin, un haut gradé de CityAdmin a été tué. Imaginez, tuer un membre de CityAdmin. Vous comprenez sûrement maintenant pourquoi tout est quelque peu chaotique ici.")
	
	ANSWER("Un meurtre parmi les haut gradés? On a un suspect?",52)
NODE(52)
	SAY("Ca n'est pas si évident. Il n'y a aucun témoin. Les seuls qui étaient proches étaient des CopBots. Mais quelques drogues ont été trouvées sur les lieux. D'ailleurs, vous venez tout juste de nous les livrer.")
	
	ANSWER("CONTINUER",53)
NODE(53)
	SAY("Il y a trop de possibilités à l'heure actuelle. Ces drogues pourraient indiquer qu'il s'agit de membres du Dragon Noir. Mais ça pourrait également être Tsunami, peut-être une danseuse, ou même une ordure des Gardiens du Crépuscule.")
	
	ANSWER("CONTINUER",54)
NODE(54)
	SAY("Ca signifie que nous avons trop de pistes à suivre et un trop petit nombre à étudier sérieusement. C'est ce qui cause tout le chaos ici. D'ailleurs, vous venez tout juste de commencer pour CityAdmin, vrai?")
	
	ANSWER("Oui, c'est vrai.",55)
NODE(55)
	SAY("Je crois que vous avez fait un bon choix. CityAdmin est un bon employeur, qui paie bien. Naturellement vous devez être au courant de toutes les règles et règlements. Si vous n'avez rien d'autre faire à vous pourriez faire en sorte que le NCPD nous fasse une faveur.")
	
	ANSWER("Si je peux aider, demandez. Je suis prêt.",56)
	ANSWER("Désolé, mais je dois faire quelque chose d'urgent.",58)
NODE(56)
	SAY("J'admire cette attitude. Il y a une danseuse qui voyait occasionnellement Defries. Defries, c'est la victime du meurtre. Il est peu probable que cette danseuse soit reliée au meurtre, mais nous devons vérifier chaque piste. Il y en a tellement que nous aurons besoin de toute aide disponible.")
	
	ANSWER("Pas de problème. Je peux vous aider avec celle-ci. Je la contacte comment?",57)
NODE(57)
	SAY("Elle devrait être quelque part dans Pepper Park. Son nom est Black Lily. Après vous revenez et me présentez un bref rapport sur elle.")
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	

NODE(58)
	SAY("Si vous changez d'idée, revenez me voir.")
	ENDDIALOG()



-----------------------------------------------------
--Black Lily, Pepper Park

NODE(100)
	SAY("Hé, et si je réalisais tes fantasmes les plus secrets... qu'en dis-tu?")
	
	ANSWER("Peut-être plus tard. Je viens pour une autre raison. Hier, il y a eu un meurtre et vous connaissez la victime.",101)
NODE(101)
	SAY("Un meurtre? Quelle bonne blague! La moitié des personnes que j'ai connues sont mortes. Tu ne pourrais pas être plus précis?")
	
	ANSWER("Son nom était Defries et il travaillait au CityAdmin. C'était quelqu'un d'assez important.",102)
NODE(102)
	SAY("Oh oui, je le connais. Mais pourquoi je parlerais de ma vie privée?")
	
	ANSWER("Le NCPD m'envoie. N'est-ce pas suffisant?",103)
NODE(103)
	SAY("Ca aussi c'est une bonne blague. Quand le NCPD me questionne, habituellement il y a un officier et un CopBot présents. Des fois même avec un de ces effrayants Moines PSI. J'ai entendu dire qu'ils peuvent lire votre esprit. Mais vous, vous n'avez même pas un insigne ou une carte d'identification.")
	
	ANSWER("J'admets que ça peut paraître étrange. Mais ils doivent avoir oublié de m'en donner, avec toute cette agitation... Je viens vraiment du NCPD.",104)
NODE(104)
	SAY("Pourquoi ne me donnez-vous pas une certaine motivation? Je crois que 300 crédits m'aideraient bien. Peut-être qu'ensuite je pourrais vous dire davantage ...")
	
	ANSWER("Vous avec gagné, voici l'argent. Mais l'information bien d'être à la hauteur.",105)
NODE(105)
	TAKEMONEY(300)
	if(result==0)then
		SAY("Bien essayé, mais vous ne les avez même pas, ces 300 crédits.")
		ENDDIALOG()
	else
		SETNEXTDIALOG(106)
		SAY("Vous devrez juger par vous-même. Merci. Oui, j'ai connu ce type, ce Defries. Putain de pervers! Je suis bien contente, il a eu ce qu'il méritait. Mais je suis sûre que c'est pas le genre d'information que vous vouliez.")
	
		ANSWER("CONTINUER",106)
	end
NODE(106)
	SAY("Je vous dis que même le CityAdmin a des brebis galeuses dans son troupeau. Et Defries n'était certainement pas une exception. Je sais qu'il a acheté des drogues du Dragon Noir, et sans ces pilules il aurait été totalement impuissant. ")
	
	ANSWER("CONTINUER",107)
NODE(107)
	SAY("Si vous me questionnez sur ses ennemis potentiels, dites-vous qu'il avait trop d'argent pour avoir de vrais ennemis personnels. Je veux dire, je ne l'ai pas vu depuis un bon moment.")
	
	ANSWER("CONTINUER",108)
NODE(108)
	SAY("Si vous voulez mon avis, quelqu'un a voulu attaquer CityAdmin directement et Defries était seulement une cible de choix.")
	
	ANSWER("Ca ne me sera pas très utile, mais merci quand même.",109)
NODE(109)
	SAY("C'était un plaisir. Et si vous changez d'avis au sujet de mon offre... Je vous attends.")
	SETNEXTDIALOGSTATE(110)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()	

NODE(110)
	SAY("Pas pour le moment, laissez-moi tranquille. Retournez à votre NCPD que vous aimez tant.")
	ENDDIALOG()
	


-----------------------------------------------------
--Officer Jenna


NODE(150)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Avez-vous été voir Black Lily dans Pepper Park 02?")
		ENDDIALOG()
	else
		SAY("Vous voilà. Qu'a t'elle dit à propos du meurtre?")
	
		ANSWER("Je ne pense pas qu'elle aimait particulièrement Defries. Elle pense que le meurtrier ne visait pas Defries, mais CityAdmin. Ca n'est pas beaucoup, mais ça pourrait aider...",151)
	end
NODE(151)
	SAY("Bien. Nous pourrions lui assigner un drone de surveillance. Mais sa théorie concorde avec ce que nous avons déjà. Merci de m'avoir soulagé d'un peu de travail. Je dois encore taper quelques rapports maintenant... *soupir* ")
	
	ANSWER("Très bien, je dois retourner au CityAdmin pour la livraison, de toute façon.",152)
NODE(152)
	SAY("Bonne journée, Runner.")
	SETNEXTDIALOGSTATE(153)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
	
NODE(153)
	SAY("Je suis désolé, mais ces rapports prennent toute mon attention. Pourquoi ne retournez-vous pas au CityAdmin comme vous le vouliez? ")
	
	ENDDIALOG()

-----------------------------------------------------
--Human Resource Director

NODE(200)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Avez-vous été au NCPD?")
		ENDDIALOG()	
	else
		SAY("Ca a été plus long que prévu, eh? Que faisiez-vous pendant tout ce temps?")
	
		ANSWER("Ne vous inquiétez pas, le paquet a été livré à temps. Comme vous l'avez suggéré plus tôt, j'ai offert au NCPD un coup de main. Bien que je doute que mon aide ait changé de quoi.",201)
	end
NODE(201)
	GIVEMONEY(1000)
	SETNEXTDIALOGSTATE(202)
	SAY("Vraiment? Je veux dire, naturellement que c'est une bonne raison d'être en retard. Les 1000 crédits pour cette livraison ont été déjà transférés à votre compte. Revenez quand vous aurez prouvé que vous êtes fidèle au CityAdmin. À ce moment-là, je crois que nous pourrons avoir une nouvelle tâche pour vous.")
	EPICRUNFINISHED(1,0)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()
	
NODE(202)
	SAY("Go away")
	ENDDIALOG()

end