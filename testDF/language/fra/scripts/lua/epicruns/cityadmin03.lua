--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Elias
--1,D, Cole
--2,D,Jenna

--Startnode, Person
--0,Human Resource
--50,Elias
--100,Ethan Cole
--150,Jenna


--Items
-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Le NCPD est encore occup� � enqu�ter sur ces meurtres. Mais on ne peut pas en m�me temps n�gliger la s�curit� de Neocron.")
	
	ANSWER("CONTINUER",1)
NODE(1)
	SAY("On a d�cid� de donner � un runner ambitieux une mission � sa mesure. Je pense que vous avez d�j� eu la possibilit� d'observer les CopBots dans la rue?")
	
	ANSWER("Oui, ils sont tr�s impressionnants.",2)
NODE(2)
	SAY("Oui, mais il y a aussi quelque chose que beaucoup de gens ignorent. On sait que certains CopBots disparaissent des rues de Neocron chaque ann�e. On parle m�me de CopBots qui erreraient dans les Terres Br�l�es. De CopBots qui deviennent fous.")
	
	ANSWER("C'est impensable! Et si jamais un CopBot devenait fou en pleine rue dans Neocron?",3)
NODE(3)
	SAY("Pas d'inqui�tudes � avoir. Le syst�me de CopBots est tr�s efficace pour r�soudre ces probl�mes. Mais nous avons parfois une situation diff�rente. Certains CopBots sont vol�s avant leur mise en service. Heureusement, cela se produit tr�s rarement, et habituellement ces crimes sont r�solus en quelques heures.")
	
	ANSWER("CONTINUER",4)
NODE(4)
	SAY("Mais... Dans ce cas, on a d�couvert qu'un CopBot �tait manquant alors qu'on le pensait activ�. Ca s'est produit il y a deux mois environ, et nous ne savons pas du tout o� il peut se trouver.")
	
	ANSWER("Comment est-ce que vous traitez ces probl�mes en temps normal?",5)
NODE(5)
	SAY("On a implant� dans chaque CopBot une sonde radio qui envoie un signal au QG lorsque le CopBot est activ�. Mais cette fois, il n'a pas �t� activ�. Ou bien la sonde a �t� retir�e.")
	
	ANSWER("CONTINUER",6)
NODE(6)
	SAY("Si c'est r�ellement le cas, alors c'est l'oeuvre d'un g�nie du piratage. M�me nos hackers ne peuvent le faire qu'avec un �quipement sp�cial.")
	
	ANSWER("Mais o� peut-on trouver un tel hacker? Peut-�tre... Les Anges D�chus!!",7)
NODE(7)
	SAY("Oui, exactement. Vous avez l'esprit vif. C'est ce dont nous aurons besoin. Votre mission est d'aller voir un certain Elias � Tech Haven et de l'interroger sur des liens possibles entre les Anges D�chus et le CopBot vol�.")
	
	ANSWER("Dites m'en plus.",8)
	ANSWER("Je ne me sens pas pr�t pour cette mission.",9)
NODE(8)
	SAY("Lorsque vous avez termin� votre mission, allez faire votre rapport � l'agent Jenna. CityAdmin vous remercie d'avance. Les Anges D�chus sont neutres envers nous, ils ne devraient pas poser de probl�mes � coop�rer.")
	ACCEPTMISSION()	
	SETNEXTDIALOGSTATE(10)
	ENDDIALOG()	


NODE(9)
	SAY("Revenez quand vous vous sentez � la hauteur.")
	ENDDIALOG()
	
NODE(10)
	SAY("Je pensais que vous vouliez cette enqu�te sur le CopBot disparu? Vous devriez aller voir Elias � Tech Haven et faire votre rapport au NCPD.")
	ENDDIALOG()


-----------------------------------------------------
--Elias

NODE(50)
	SAY("Je n'ai pas le temps de vous parler, j'ai beaucoup de travail.")
	
	ANSWER("Ca ne prendra pas longtemps. C'est CityAdmin qui m'envoie.",51)
NODE(51)
	SAY("Alors c'est vous l'agent que je dois rencontrer? Ca doit pas �tre si important s'ils ne m'envoient qu'un simple runner.")
	
	ANSWER("On vous a d�j� inform� du vol d'un CopBot, je suppose?",52)
NODE(52)
	SAY("Oui, en effet. Et on m'a dit que c'�tait important pour CityAdmin. M�me si je ne comprends pas trop pourquoi. Un CopBot de plus ou de moins, �a ne fait pas grande diff�rence.")
	
	ANSWER("C'est votre opinion. Est-ce que les Anges D�chus ont un CopBot de CityAdmin en leur possession?",53)
NODE(53)
	SAY("Tr�s amusant. Mais je vais vous d�cevoir : nos robots de s�curit� sont bien plus efficaces et co�tent beaucoup moins cher � produire que vos pr�cieux CopBots. Les CopBots ne peuvent pas rivaliser avec nos robots de s�curit�. Pourquoi aurions-nous besoin d'un CopBot, expliquez-moi?")
	
	ANSWER("CONTINUER",54)
NODE(54)
	SAY("J'ai aussi regard� nos donn�es, et je peux vous assurer qu'aucun de nos membres n'est impliqu� dans une op�ration qui pourrait avoir un quelconque lien avec votre probl�me.")
	
	ANSWER("Il semble que cette piste se termine en cul de sac, alors.",55)
NODE(55)
	SAY("Attendez. Je n'ai pas dit que personne ici ne ferait une chose pareille. Mais il y a tr�s peu d'anciens membres qui seraient capables d'une telle action.")
	
	ANSWER("Voil� qui est mieux! Alors dites-moi o� je pourrais trouver ces anciens membres...",56)
NODE(56)
	SAY("Ca ne sera pas facile. Nous ne conservons pas les dossiers des anciens membres, nous n'avons aucune id�e d'o� ils peuvent se trouver. Mais je vous conseille de regarder dans les secteurs les plus louches. Ils pourraient avoir de bons contacts avec les organisations ill�gales.")
	
	ANSWER("Plus facile � dire qu'� faire. Il va me falloir des ann�es pour tomber sur la bonne personne et pour trouver l'information que je recherche.",57)
NODE(57)
	SAY("C'est exact. Mais c'est parce que vos m�thodes sont vraiment d�pass�es. Mais peut-�tre que vous parviendrez � trouver un certain Cole. On dit qu'il habite dans le march� noir pr�s de l'Outzone 01. Je ne sais pas si c'est vrai, mais au cas o� vous tombez sur lui, je vous conseille fortement de ne pas trop lui faire confiance.")
	
	ANSWER("CONTINUER",58)
NODE(58)
	SAY("Ce tra�tre a travaill� pour nous � une �poque. Avant de partir, il nous a vol� beaucoup de donn�es. Nous sommes encore en train de r�parer les d�g�ts.")
	
	ANSWER("Merci, je vais aller fouiller dans ce secteur.",59)
NODE(59)
	SAY("Faites attention, et rappelez-vous que nous n'avons rien � vous dans cette affaire.")
	SETNEXTDIALOGSTATE(60)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
	
NODE(60)
	SAY("Demandez � quelqu'un d'autre. Les Anges D�chus n'ont rien � voir avec cette affaire. Mais vous devriez trouver Ethan Cole dans l'Outzone 01.")
	ENDDIALOG()

-----------------------------------------------------
--Ethan Cole

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Hors de ma vue, runner!")
		ENDDIALOG()		
	else
		SAY("Salut, qui t'es? Encore un fouille-merde?")
	
		ANSWER("Ethan Cole? C'est vous, n'est-ce pas?",101)
	end
NODE(101)
	SAY("Ca d�pend qui le demande. Je suis allergique � certaines... cat�gories socioprofessionnelles, on va dire.")
	
	ANSWER("Je comprends. Je pense que c'est l'�poque qui veut �a.",102)
NODE(102)
	SAY("Allez, raconte. Qu'est-ce que tu me veux?")
	
	ANSWER("On m'a dit que vous connaissiez bien les milieux louches de Neocron.",103)
NODE(103)
	SAY("Avez un peu de patience et un cerveau de g�nie comme le mien, c'est facile. Alors ouais, on peut dire que je connais.")
	
	ANSWER("Il me faut une liste des hackers qui op�rent dans la rue. Je recherche un ancien Ange D�chu.",104)

NODE(104)
	SAY("Ah oui, les Anges D�chus, �a me dit quelque chose...")
	
	ANSWER("Epargnez-moi votre baratin, Cole. Je sais exactement les liens que vous avez avec eux.",105)
NODE(105)
	SAY("Ah oui? Alors je peux arr�ter mon cin�ma. Ca va �tre plus rapide si je te sors la liste tout de suite, non?")
	
	ANSWER("En effet, �a nous ferait gagner du temps.",106)

NODE(106)
	SAY("Mais �a serait trop facile. Alors on va corser un peu l'affaire. Si tu m'apportes vingt bouteilles de Synthetic Wine, alors peut-�tre que je pourrais �tre plus bavard. Mais c'est pas facile � trouver dans l'Outzone. Alors d�p�che-toi.")
	SETNEXTDIALOGSTATE(107)
	ENDDIALOG()

--Spieler organisiert 24 Synthetic Whine 807
	
NODE(107)
	TAKEITEMCNT(807,20)
	if(result==0)then
		SAY("Tant que j'ai pas mon vin, je dirai rien.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(108)
		SAY("Il �tait temps. Allez, donne-moi �a!")
	
		ANSWER("Tenez. Mais n'oubliez pas notre accord...",108)
	end
NODE(108)


	SAY("Oui, oui, ne vous inqui�tez pas. Ah, �a fait du bien, c'est exactement ce qu'il me fallait.")
	
	ANSWER("On avait un accord. J'ai fait ma part...",109)
NODE(109)
	GIVEITEM(9053)
	SAY("D'habitude j'en ai rien � foutre, mais je me sens g�n�reux aujourd'hui. Tiens, prends �a. Et maintenant, hors de ma vue!")
	ACTIVATEDIALOGTRIGGER(1)
	SETNEXTDIALOGSTATE(110)
	ENDDIALOG()
	


NODE(110)
	SAY("Je veux pas qu'on nous voie ensemble. Alors allez-vous en, retournez d'o� vous venez.")
	
	ENDDIALOG()


-----------------------------------------------------
--Jenna

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Pas de nouvelles? Quel dommage.")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(153)
		SAY("Mais revoil� notre runner aux dents longues! Alors, quelles sont les nouvelles?")
	
		ANSWER("J'ai fait beaucoup de chemin pour trouver des informations au sujet de hackers potentiels. C'�tait une belle promenade.",151)
	end
NODE(151)
	SAY("Et vous avez eu quelque chose?")
	
	ANSWER("Je ne sais pas. J'ai une liste de nombreux hackers, mais je n'ai pas eu le temps de la v�rifier. Je pense que c'est votre travail. Tenez.",152)
NODE(152)
	TAKEITEM(9053)
	if(result==0)then
		SAY("Oui, une telle liste aurait �t� tr�s utile. Malheureusement vous ne l'avez pas.")
		ENDDIALOG()
	else
		SAY("Laissez-moi voir. Oui, certains noms me disent quelque chose. Mais j'en vois qui n'ont rien � voir avec le piratage. Ca va nous prendre du temps pour faire le tri.")
	
		ANSWER("Vous avez trouv� une piste int�ressante pendant que j'enqu�tais?",153)
	end
NODE(153)
	SAY("Peut-�tre... On a re�u une revendication des meurtres, provenant des Gardiens du Cr�puscule. Mais �a ne nous aide pas beaucoup, CityAdmin et les Gardiens du Cr�puscule sont en guerre, de toutes fa�ons. Mais �a n'est pas notre probl�me.")
	
	ANSWER("CONTINUER",154)
NODE(154)
	GIVEMONEY(8000)
	SETNEXTDIALOGSTATE(155)
	SAY("D'abord, voici votre paiement : 8.000 cr�dits. Maintenant, on va mettre un certain temps avant d'avoir de nouveaux �l�ments. Continuez � vous entra�ner, parce qu'on ne sait pas quand on pourra avoir besoin de vous � nouveau. Pensez � demander au directeur des ressources humaines de temps en temps.")
    EPICRUNFINISHED(1,2)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(155)
	SAY("Go away")
	ENDDIALOG()

end