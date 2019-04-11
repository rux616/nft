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
	SAY("Bienvenue au CityAdmin. Nous rejoindre est probablement le meilleur choix que vous ayez jamais fait. CityAdmin est le plus grand �tablissement officiel pour la s�ret� des citoyens de Neocron. Et tout cela gr�ce � Lioon Reza.")
	
	ANSWER("Puisque je fais maintenant partie de CityAdmin j'ai pens� que je pourrais obtenir un poste chez vous.",1)

NODE(1)
	SAY("J'allais justement vous en parler. En tant que membre fid�le de CityAdmin, il est pr�vu de vous que vous acceptiez des missions r�mun�r�es. Vous �tes libre d'accepter ces t�ches, mais qui rejetterait une demande de l'�tablissement responsable du bien-�tre de chacun dans Neocron?")
	
	ANSWER("CONTINUER",2)
NODE(2)
	SAY("Apr�s tout, CityAdmin travaille pour les citoyens, � l'inverse de la dictature pr�c�dente des Moines PSI. � cette �poque, les pens�es �taient command�es par ces individus et le peuple a v�cu dans l'esclavage virtuel. Beaucoup de gens oublient qui les a lib�r�s de tout cela.")
	
	ANSWER("Mais est-ce diff�rent aujourd'hui? Je veux dire, vous pouvez �tre ex�cut� pour un mot mal plac�.",3)

NODE(3)
	SAY("Arr�tez. Je vais vous donner un bon conseil puisque vous �tes nouveau ici. Il n'y a aucune rumeur au sujet de CityAdmin, vous l'acceptez, c'est tout. C'est particuli�rement vrai au sujet de Reza. Si vous n'observez pas mon avertissement, vous pourriez �tre mourir plus t�t que pr�vu. Et tout �a juste parce que vous ne savez pas tenir votre langue.")
	
	ANSWER("Je comprends. Je vais suivre votre conseil. Dites-moi alors ce qui est important au sujet de CityAdmin?",4)
NODE(4)
	SAY("Bien. Comme je disais donc, Reza a lib�r� le peuple de la dictature cruelle des Moines PSI apr�s plus de cent ans de dictature. Cela s'est produit en l'ann�e 2724, si je me souviens bien. Ce fut �galement le d�but d'une nouvelle �re de libert�.")
	
	ANSWER("CONTINUER",5)
NODE(5)
	SAY("Les Moines PSI doivent � la cl�mence de Lioon Reza d'�tre encore admis dans la ville. De plus, de nombreuses am�liorations ont �t� apport�es, de sorte que les citoyens ont maintenant une vie plus facile. La loi, par exemple, a �t� simplifi�e.")
	
	ANSWER("CONTINUER",6)
NODE(6)
	SAY("De nos jours, tout le monde sait ce qu'on peut ou peut ne pas faire. Le succ�s de cette attitude peut �tre vu dans la Plaza ou Via Rosso, l� le taux de criminalit� est nul. ")
	
	ANSWER("CONTINUER",7)
NODE(7)
	SAY("Et tout ceci malgr� les grandes difficult�s, apr�s que tant de gens soient partis dans une exp�dition � destination d'Irata III. � ce moment-l�, la criminalit� s'est accrue consid�rablement. C'est seulement gr�ce au CopBots qu'il reste un certain ordre dans la ville.")
	
	ANSWER("Savez-vous ce qui est arriv� � ceux qui se sont joints � l'exp�dition? Je veux dire apr�s que le contact avec Irata III ait �t� perdu?",8)
NODE(8)
	SAY("La r�ponse est simple. Irata III, c'est tr�s loin d'ici. Les efforts de CityAdmin sont ax�s sur la s�curit� et le bien-�tre des citoyens de Neocron.")
	
	ANSWER("CONTINUER",9)
NODE(9)
	SAY("Mais assez d'histoire ancienne. Il y a une livraison � faire au NCPD. Une fois l�-bas, vous pourriez peut-�tre un peu aider le NCPD. Neocron est une grande ville, et il y a toujours beaucoup � faire.")
	
	ANSWER("Bien, je vais porter ce colis, qu'est-ce qu'il contient?",10)
	ANSWER("Je ne crois pas �tre pr�t pour cela.",11)
NODE(10)
	GIVEITEM(9052)
	SAY("Il contient des preuves sur diff�rentes drogues qui sont reli�es avec un crime. Si vous voulez en savoir plus, je suis s�r que vous pourrez obtenir plus d'information au NCPD. Bonne chance dans votre premi�re mission pour CityAdmin.")
	ACCEPTMISSION()
	SETNEXTDIALOGSTATE(200)
	ENDDIALOG()
	
NODE(11)
	SAY("Comme vous voulez. Revenez quand vous serez pr�t.")
	ENDDIALOG()
	

-----------------------------------------------------
--Officer Jenna, NCPD

NODE(50)
	TAKEITEM(9052)
	if(result==0)then
		SAY("Vous avez oubli� le colis. Faites vite.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(51)
		SAY("Bonjour, Runner. J'esp�re que vous avez le colis? Bien, vous devez comprendre que c'est le chaos ici pr�sentement. En temps normal, on a l'habitude. Mais c'est encore plus chaotique qu'� l'habitude.")
	
		ANSWER("Vous voil�. Pourquoi tant d'agitation?",51)
	end
NODE(51)
	SAY("Vous ne savez pas encore? Hier matin, un haut grad� de CityAdmin a �t� tu�. Imaginez, tuer un membre de CityAdmin. Vous comprenez s�rement maintenant pourquoi tout est quelque peu chaotique ici.")
	
	ANSWER("Un meurtre parmi les haut grad�s? On a un suspect?",52)
NODE(52)
	SAY("Ca n'est pas si �vident. Il n'y a aucun t�moin. Les seuls qui �taient proches �taient des CopBots. Mais quelques drogues ont �t� trouv�es sur les lieux. D'ailleurs, vous venez tout juste de nous les livrer.")
	
	ANSWER("CONTINUER",53)
NODE(53)
	SAY("Il y a trop de possibilit�s � l'heure actuelle. Ces drogues pourraient indiquer qu'il s'agit de membres du Dragon Noir. Mais �a pourrait �galement �tre Tsunami, peut-�tre une danseuse, ou m�me une ordure des Gardiens du Cr�puscule.")
	
	ANSWER("CONTINUER",54)
NODE(54)
	SAY("Ca signifie que nous avons trop de pistes � suivre et un trop petit nombre � �tudier s�rieusement. C'est ce qui cause tout le chaos ici. D'ailleurs, vous venez tout juste de commencer pour CityAdmin, vrai?")
	
	ANSWER("Oui, c'est vrai.",55)
NODE(55)
	SAY("Je crois que vous avez fait un bon choix. CityAdmin est un bon employeur, qui paie bien. Naturellement vous devez �tre au courant de toutes les r�gles et r�glements. Si vous n'avez rien d'autre faire � vous pourriez faire en sorte que le NCPD nous fasse une faveur.")
	
	ANSWER("Si je peux aider, demandez. Je suis pr�t.",56)
	ANSWER("D�sol�, mais je dois faire quelque chose d'urgent.",58)
NODE(56)
	SAY("J'admire cette attitude. Il y a une danseuse qui voyait occasionnellement Defries. Defries, c'est la victime du meurtre. Il est peu probable que cette danseuse soit reli�e au meurtre, mais nous devons v�rifier chaque piste. Il y en a tellement que nous aurons besoin de toute aide disponible.")
	
	ANSWER("Pas de probl�me. Je peux vous aider avec celle-ci. Je la contacte comment?",57)
NODE(57)
	SAY("Elle devrait �tre quelque part dans Pepper Park. Son nom est Black Lily. Apr�s vous revenez et me pr�sentez un bref rapport sur elle.")
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	

NODE(58)
	SAY("Si vous changez d'id�e, revenez me voir.")
	ENDDIALOG()



-----------------------------------------------------
--Black Lily, Pepper Park

NODE(100)
	SAY("H�, et si je r�alisais tes fantasmes les plus secrets... qu'en dis-tu?")
	
	ANSWER("Peut-�tre plus tard. Je viens pour une autre raison. Hier, il y a eu un meurtre et vous connaissez la victime.",101)
NODE(101)
	SAY("Un meurtre? Quelle bonne blague! La moiti� des personnes que j'ai connues sont mortes. Tu ne pourrais pas �tre plus pr�cis?")
	
	ANSWER("Son nom �tait Defries et il travaillait au CityAdmin. C'�tait quelqu'un d'assez important.",102)
NODE(102)
	SAY("Oh oui, je le connais. Mais pourquoi je parlerais de ma vie priv�e?")
	
	ANSWER("Le NCPD m'envoie. N'est-ce pas suffisant?",103)
NODE(103)
	SAY("Ca aussi c'est une bonne blague. Quand le NCPD me questionne, habituellement il y a un officier et un CopBot pr�sents. Des fois m�me avec un de ces effrayants Moines PSI. J'ai entendu dire qu'ils peuvent lire votre esprit. Mais vous, vous n'avez m�me pas un insigne ou une carte d'identification.")
	
	ANSWER("J'admets que �a peut para�tre �trange. Mais ils doivent avoir oubli� de m'en donner, avec toute cette agitation... Je viens vraiment du NCPD.",104)
NODE(104)
	SAY("Pourquoi ne me donnez-vous pas une certaine motivation? Je crois que 300 cr�dits m'aideraient bien. Peut-�tre qu'ensuite je pourrais vous dire davantage ...")
	
	ANSWER("Vous avec gagn�, voici l'argent. Mais l'information bien d'�tre � la hauteur.",105)
NODE(105)
	TAKEMONEY(300)
	if(result==0)then
		SAY("Bien essay�, mais vous ne les avez m�me pas, ces 300 cr�dits.")
		ENDDIALOG()
	else
		SETNEXTDIALOG(106)
		SAY("Vous devrez juger par vous-m�me. Merci. Oui, j'ai connu ce type, ce Defries. Putain de pervers! Je suis bien contente, il a eu ce qu'il m�ritait. Mais je suis s�re que c'est pas le genre d'information que vous vouliez.")
	
		ANSWER("CONTINUER",106)
	end
NODE(106)
	SAY("Je vous dis que m�me le CityAdmin a des brebis galeuses dans son troupeau. Et Defries n'�tait certainement pas une exception. Je sais qu'il a achet� des drogues du Dragon Noir, et sans ces pilules il aurait �t� totalement impuissant. ")
	
	ANSWER("CONTINUER",107)
NODE(107)
	SAY("Si vous me questionnez sur ses ennemis potentiels, dites-vous qu'il avait trop d'argent pour avoir de vrais ennemis personnels. Je veux dire, je ne l'ai pas vu depuis un bon moment.")
	
	ANSWER("CONTINUER",108)
NODE(108)
	SAY("Si vous voulez mon avis, quelqu'un a voulu attaquer CityAdmin directement et Defries �tait seulement une cible de choix.")
	
	ANSWER("Ca ne me sera pas tr�s utile, mais merci quand m�me.",109)
NODE(109)
	SAY("C'�tait un plaisir. Et si vous changez d'avis au sujet de mon offre... Je vous attends.")
	SETNEXTDIALOGSTATE(110)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()	

NODE(110)
	SAY("Pas pour le moment, laissez-moi tranquille. Retournez � votre NCPD que vous aimez tant.")
	ENDDIALOG()
	


-----------------------------------------------------
--Officer Jenna


NODE(150)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Avez-vous �t� voir Black Lily dans Pepper Park 02?")
		ENDDIALOG()
	else
		SAY("Vous voil�. Qu'a t'elle dit � propos du meurtre?")
	
		ANSWER("Je ne pense pas qu'elle aimait particuli�rement Defries. Elle pense que le meurtrier ne visait pas Defries, mais CityAdmin. Ca n'est pas beaucoup, mais �a pourrait aider...",151)
	end
NODE(151)
	SAY("Bien. Nous pourrions lui assigner un drone de surveillance. Mais sa th�orie concorde avec ce que nous avons d�j�. Merci de m'avoir soulag� d'un peu de travail. Je dois encore taper quelques rapports maintenant... *soupir* ")
	
	ANSWER("Tr�s bien, je dois retourner au CityAdmin pour la livraison, de toute fa�on.",152)
NODE(152)
	SAY("Bonne journ�e, Runner.")
	SETNEXTDIALOGSTATE(153)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
	
NODE(153)
	SAY("Je suis d�sol�, mais ces rapports prennent toute mon attention. Pourquoi ne retournez-vous pas au CityAdmin comme vous le vouliez? ")
	
	ENDDIALOG()

-----------------------------------------------------
--Human Resource Director

NODE(200)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Avez-vous �t� au NCPD?")
		ENDDIALOG()	
	else
		SAY("Ca a �t� plus long que pr�vu, eh? Que faisiez-vous pendant tout ce temps?")
	
		ANSWER("Ne vous inqui�tez pas, le paquet a �t� livr� � temps. Comme vous l'avez sugg�r� plus t�t, j'ai offert au NCPD un coup de main. Bien que je doute que mon aide ait chang� de quoi.",201)
	end
NODE(201)
	GIVEMONEY(1000)
	SETNEXTDIALOGSTATE(202)
	SAY("Vraiment? Je veux dire, naturellement que c'est une bonne raison d'�tre en retard. Les 1000 cr�dits pour cette livraison ont �t� d�j� transf�r�s � votre compte. Revenez quand vous aurez prouv� que vous �tes fid�le au CityAdmin. � ce moment-l�, je crois que nous pourrons avoir une nouvelle t�che pour vous.")
	EPICRUNFINISHED(1,0)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()
	
NODE(202)
	SAY("Go away")
	ENDDIALOG()

end