function DIALOG()

	NODE(0)
		SAY("H�, c'est vous le livreur ?")
		SAY("Vous �tes l� pour la livraison ?")
		SAY("Ce colis me br�le les mains, dites-moi que c'est vous le livreur...")
		SAY("Si vous n'�tes pas le livreur, alors je n'ai rien � vous dire.")
		SAY("La seule chose que je veux vous entendre me demander, c'est � qui vous devez donner ce colis. Piti�, dites-moi que vous �tes le livreur.")
		SAY("J'ai eu un message il y a quelques minutes au sujet d'une livraison. C'est vous, le livreur ?")
		
		ANSWER("Exact ! Je suis ici pour la livraison. Expliquez-moi ce que je dois faire.",1)
		ANSWER("Bingo. Si vous voulez une livraison, je m'en charge.",1)
		ANSWER("Vous voulez un livreur ? Passez-moi votre colis et donnez-moi l'endroit.",1)
		ANSWER("Pas de chance, je suis pas celui que vous attendez.",4)
ANSWER("D�sol�, mais ces missions c'est l'arnaque.",4)
		ANSWER("D�sol� l'ami, je fais que dans le haut de gamme.",4)
	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Vous ne pouvez pas savoir comme je suis content de vous voir. Il faut livrer ce colis en vitesse lumi�re, compris ? Le destinataire s'appelle %NPC_NAME(1), il devrait tra�ner dans %NPC_WORLD(1) � l'heure qu'il est. Allez lui donner le paquet, puis revenez ici pour toucher votre paye.")
		SAY("%NPC_NAME(1), souvenez-vous de ce nom. Ce paquet devrait d�j� �tre entre ses mains. Allez le lui donner, revenez ici, et sur votre compte en banque vous aurez de quoi vous acheter un truc tout neuf. Oh, j'ai failli oublier, %NPC_NAME(1) tra�ne souvent du c�t� de %NPC_WORLD(1). Maintenant, filez.")
		SAY("Vous voyez ces mutants couverts de cicatrices qui vivent dans les �gouts ? Si vous n'en avez jamais vu, vous pouvez au moins les imaginer. Vous savez qu'avant �a ils �taient de vrais humains ? Ca vous fait des choses �tranges, ces radiations, quand vous y �tes expos� pendant trop longtemps. Eh ben je vous garantis que vous allez bient�t vous retrouver sans rien dans les �gouts si ce colis n'est pas livr� dans les cinq minutes. Le destinataire, c'est %NPC_NAME(1), il vous attend � %NPC_WORLD(1). Et si j'�tais vous je serais d�j� en train de courir.")
		SAY("Les Gardiens ont besoin de transf�rer un colis. C'est pas un probl�me en soi, mais tous ceux qui pourraient s'en occuper sont pris ailleurs. On doit donc demander � quelqu'un d'ext�rieur. Et vous voil�. Prenez �a et amenez-le � %NPC_NAME(1), � %NPC_WORLD(1). Rien � savoir de plus. Si vous faites �a comme il faut, � votre retour ici vous aurez une bonne paye.")
		SAY("Bien, j'ai d�j� pass� trop de temps � attendre. Ce paquet doit arriver chez %NPC_NAME(1). Sur ma liste, je vois marqu� %NPC_WORLD(1), vous devriez commencer par l�. Une fois que c'est livr�, revenez ici, les Gardiens vous paieront avec joie pour le service rendu.")
		SAY("Ah, enfin ! J'�tais sur le point d'appeler mes hackers pour me trouver quelqu'un ayant une horloge S.A.R. activ�e en permanence. Salut, moi c'est %NPC_NAME(0). Le colis est � livrer � %NPC_NAME(1), � %NPC_WORLD(1). Allez-y, et t�chez de faire vite. Si vous livrez �a � temps, vous aurez gagn� quelque chose en revenant ici.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Je vous ai d�j� donn� le nom et le lieu, alors allez-y ! Si vous avez la m�moire courte, c'est %NPC_NAME(1), %NPC_WORLD(1).")
				SAY("%NPC_NAME(1) ne m'a pas appel� pour me dire 'Merci pour la livraison', j'en d�duis que c'est pas fait. Allez, du vent !")
				SAY("Mais qu'est-ce que vous fichez ici ? Allez � %NPC_WORLD(1) en vitesse !")
				ENDDIALOG()
			else
				SAY("A mesure que je les raye de la liste, il y en a d'autres qui apparaissent. Parfois j'ai l'impression que je suis une IA de pointe qui bloque sur le probl�me de maths d'un gamin de cinq ans. Mais bon, je pense que ce qui l'int�resse, c'est surtout ton fric. Tiens, %REWARD_MONEY() cr�dits. Pensez � revenir nous voir si vous avez besoin d'un autre job.")
				SAY("Et voil�, un de plus. Voil� %REWARD_MONEY() cr�dits pour votre travail. Merci de nous avoir donn� un coup de main, l'ami !")
				SAY("Peu importe les progr�s qu'on fait en informatique, apparemment �a va jamais assez vite. C'est pas que je m'en plains, parce que tout compte fait, avec tous ces hackers qui tra�nent, je fais pas plus confiance � un syst�me d'emploi enti�rement informatis� qu'aux coupures de presse officielles de CityAdmin. Mais vous avez certainement autre chose � faire, j'imagine. Voil� vos %REWARD_MONEY() cr�dits. Pensez � revenir nous voir si vous avez besoin d'un autre job !")
				SAY("Moouii ?! Oh, pardon, je commen�ais � m'endormir. Travailler ici, �a me ramollit. Si je travaillais dans un quartier chaud, je serais probablement en train de ramener mes tripes chez moi dans un sac � dos, s'il m'en reste, �a me ferait du sport. Avec un gros flingue pour... Enfin bref, voil� vos %REWARD_MONEY() cr�dits, et gardez les yeux ouverts. La r�volution approche !")
				SAY("Bien, je viens d'avoir le message de confirmation de %NPC_NAME(1). Et pour votre paye... voil�. Je viens de transf�rer %REWARD_MONEY() cr�dits sur votre compte. Merci d'avoir aid� les Gardiens du Cr�puscule, l'ami, on a besoin de gens dans votre genre, avec un bon sens moral.")
				SAY("C'�tait qui, vous ? %NPC_NAME(1) de %NPC_WORLD(1)? OK, c'est bon. J'ai re�u la confirmation de l'autre il y a quelques minutes. Voil� votre paye, %REWARD_MONEY() cr�dits, le compte y est. Maintenant, si vous voulez bien m'excuser, j'ai encore beaucoup de travail.")
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Ne me dites pas que vous avez oubli� mon colis !")
				SAY("Si je n'ai pas ce colis tr�s vite, on verra le jour � travers vos tripes !")
				SAY("Si vous avez laiss� tomber mon colis, qu'est-ce que vous fichez ici ? Allez le chercher, et vite !")
				ENDDIALOG()
			else	
				SAY("C'est le colis des Gardiens ! Parfait ! Ils m'avaient dit qu'ils n'avaient personne, mais apparemment ils ont fini par trouver quelqu'un. Merci encore, je suis d�sol� de ne pas avoir de pourboire � vous donner. Mais merci encore ! Je pense que votre contact doit avoir quelque chose pour vous, allez le voir pour toucher votre paye.")
				SAY("Pfiou... lorsqu'ils m'ont dit qu'ils n'avaient pas de livreur, je me suis dit que j'en avais pour des semaines. Merci d'avoir acc�l�r� les choses, je suis certain que votre contact aura quelque chose � vous donner en �change.")
				SAY("Ah, mon colis. C'est toujours %NPC_NAME(0) qui s'occupe des livraisons pour les Gardiens ? Ha ! On se conna�t depuis pas mal de temps... bon, j'imagine que vous voulez toucher votre paye, je vais pas vous retarder plus longtemps avec mes histoires.")
				SAY("Merci. J'aimerais bien discuter un peu avec vous, mais en ce moment je suis vraiment tr�s occup�. Et si je me souviens bien, du temps o� je faisais la m�me chose que vous, ce que vous voulez faire de toute fa�on, c'est retourner voir votre contact pour qu'il vous paye, c'est bien �a ? J'avais envoy� un message � %NPC_NAME(0) lorsque je vous ai vu prendre l'ascenseur, pour lui dire que c'�tait bon. Votre paye doit vous attendre chez lui maintenant.")
				SAY("Juste � temps ! Excusez-moi, je serai bref, mais je suis en plein travail, et j'ai besoin de toute ma concentration. Mais ne vous inqui�tez pas pour votre paye. Je vous promets que j'enverrai un message � %NPC_NAME(0) pour confirmer que �a s'est bien pass�. Vos cr�dits vous attendront le temps que vous retourniez le voir.")
				SAY("Ah, un runner en freelance ! J'en d�duis que les Gardiens ont beaucoup de travail en ce moment. Je viens d'envoyer le num�ro de confirmation � %NPC_NAME(0), votre paye devrait vous attendre l�-bas.")
				ACTIVATEDIALOGTRIGGER(1)
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Navr� d'entendre �a. Revenez si vous changez d'avis, d'accord ?")
		SAY("Nos hackers m'ont signal� qu'ils avaient trouv� quelqu'un. J'esp�re qu'il va passer ici bient�t. Pardon de vous avoir pris pour un autre.")
		SAY("Si vous n'�tes pas le coursier que j'attends, alors au revoir. Il faut que j'ouvre l'oeil si je ne veux pas manquer le vrai.")
		ENDDIALOG()
	NODE(5)
		SAY("Mais qu'est-ce que vous voulez encore ? C'est bon, j'ai eu ce que je voulais, maintenant retournez chez %NPC_NAME(0) pour toucher votre paye.")
		SAY("Merci pour la livraison, mais pour votre paye c'est pas � moi qu'il faut vous adresser, c'est � %NPC_NAME(0).") 
		ENDIALOG()
end