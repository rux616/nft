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
	SAY("Le NCPD est encore occupé à enquêter sur ces meurtres. Mais on ne peut pas en même temps négliger la sécurité de Neocron.")
	
	ANSWER("CONTINUER",1)
NODE(1)
	SAY("On a décidé de donner à un runner ambitieux une mission à sa mesure. Je pense que vous avez déjà eu la possibilité d'observer les CopBots dans la rue?")
	
	ANSWER("Oui, ils sont très impressionnants.",2)
NODE(2)
	SAY("Oui, mais il y a aussi quelque chose que beaucoup de gens ignorent. On sait que certains CopBots disparaissent des rues de Neocron chaque année. On parle même de CopBots qui erreraient dans les Terres Brûlées. De CopBots qui deviennent fous.")
	
	ANSWER("C'est impensable! Et si jamais un CopBot devenait fou en pleine rue dans Neocron?",3)
NODE(3)
	SAY("Pas d'inquiétudes à avoir. Le système de CopBots est très efficace pour résoudre ces problèmes. Mais nous avons parfois une situation différente. Certains CopBots sont volés avant leur mise en service. Heureusement, cela se produit très rarement, et habituellement ces crimes sont résolus en quelques heures.")
	
	ANSWER("CONTINUER",4)
NODE(4)
	SAY("Mais... Dans ce cas, on a découvert qu'un CopBot était manquant alors qu'on le pensait activé. Ca s'est produit il y a deux mois environ, et nous ne savons pas du tout où il peut se trouver.")
	
	ANSWER("Comment est-ce que vous traitez ces problèmes en temps normal?",5)
NODE(5)
	SAY("On a implanté dans chaque CopBot une sonde radio qui envoie un signal au QG lorsque le CopBot est activé. Mais cette fois, il n'a pas été activé. Ou bien la sonde a été retirée.")
	
	ANSWER("CONTINUER",6)
NODE(6)
	SAY("Si c'est réellement le cas, alors c'est l'oeuvre d'un génie du piratage. Même nos hackers ne peuvent le faire qu'avec un équipement spécial.")
	
	ANSWER("Mais où peut-on trouver un tel hacker? Peut-être... Les Anges Déchus!!",7)
NODE(7)
	SAY("Oui, exactement. Vous avez l'esprit vif. C'est ce dont nous aurons besoin. Votre mission est d'aller voir un certain Elias à Tech Haven et de l'interroger sur des liens possibles entre les Anges Déchus et le CopBot volé.")
	
	ANSWER("Dites m'en plus.",8)
	ANSWER("Je ne me sens pas prêt pour cette mission.",9)
NODE(8)
	SAY("Lorsque vous avez terminé votre mission, allez faire votre rapport à l'agent Jenna. CityAdmin vous remercie d'avance. Les Anges Déchus sont neutres envers nous, ils ne devraient pas poser de problèmes à coopérer.")
	ACCEPTMISSION()	
	SETNEXTDIALOGSTATE(10)
	ENDDIALOG()	


NODE(9)
	SAY("Revenez quand vous vous sentez à la hauteur.")
	ENDDIALOG()
	
NODE(10)
	SAY("Je pensais que vous vouliez cette enquête sur le CopBot disparu? Vous devriez aller voir Elias à Tech Haven et faire votre rapport au NCPD.")
	ENDDIALOG()


-----------------------------------------------------
--Elias

NODE(50)
	SAY("Je n'ai pas le temps de vous parler, j'ai beaucoup de travail.")
	
	ANSWER("Ca ne prendra pas longtemps. C'est CityAdmin qui m'envoie.",51)
NODE(51)
	SAY("Alors c'est vous l'agent que je dois rencontrer? Ca doit pas être si important s'ils ne m'envoient qu'un simple runner.")
	
	ANSWER("On vous a déjà informé du vol d'un CopBot, je suppose?",52)
NODE(52)
	SAY("Oui, en effet. Et on m'a dit que c'était important pour CityAdmin. Même si je ne comprends pas trop pourquoi. Un CopBot de plus ou de moins, ça ne fait pas grande différence.")
	
	ANSWER("C'est votre opinion. Est-ce que les Anges Déchus ont un CopBot de CityAdmin en leur possession?",53)
NODE(53)
	SAY("Très amusant. Mais je vais vous décevoir : nos robots de sécurité sont bien plus efficaces et coûtent beaucoup moins cher à produire que vos précieux CopBots. Les CopBots ne peuvent pas rivaliser avec nos robots de sécurité. Pourquoi aurions-nous besoin d'un CopBot, expliquez-moi?")
	
	ANSWER("CONTINUER",54)
NODE(54)
	SAY("J'ai aussi regardé nos données, et je peux vous assurer qu'aucun de nos membres n'est impliqué dans une opération qui pourrait avoir un quelconque lien avec votre problème.")
	
	ANSWER("Il semble que cette piste se termine en cul de sac, alors.",55)
NODE(55)
	SAY("Attendez. Je n'ai pas dit que personne ici ne ferait une chose pareille. Mais il y a très peu d'anciens membres qui seraient capables d'une telle action.")
	
	ANSWER("Voilà qui est mieux! Alors dites-moi où je pourrais trouver ces anciens membres...",56)
NODE(56)
	SAY("Ca ne sera pas facile. Nous ne conservons pas les dossiers des anciens membres, nous n'avons aucune idée d'où ils peuvent se trouver. Mais je vous conseille de regarder dans les secteurs les plus louches. Ils pourraient avoir de bons contacts avec les organisations illégales.")
	
	ANSWER("Plus facile à dire qu'à faire. Il va me falloir des années pour tomber sur la bonne personne et pour trouver l'information que je recherche.",57)
NODE(57)
	SAY("C'est exact. Mais c'est parce que vos méthodes sont vraiment dépassées. Mais peut-être que vous parviendrez à trouver un certain Cole. On dit qu'il habite dans le marché noir près de l'Outzone 01. Je ne sais pas si c'est vrai, mais au cas où vous tombez sur lui, je vous conseille fortement de ne pas trop lui faire confiance.")
	
	ANSWER("CONTINUER",58)
NODE(58)
	SAY("Ce traître a travaillé pour nous à une époque. Avant de partir, il nous a volé beaucoup de données. Nous sommes encore en train de réparer les dégâts.")
	
	ANSWER("Merci, je vais aller fouiller dans ce secteur.",59)
NODE(59)
	SAY("Faites attention, et rappelez-vous que nous n'avons rien à vous dans cette affaire.")
	SETNEXTDIALOGSTATE(60)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
	
NODE(60)
	SAY("Demandez à quelqu'un d'autre. Les Anges Déchus n'ont rien à voir avec cette affaire. Mais vous devriez trouver Ethan Cole dans l'Outzone 01.")
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
	SAY("Ca dépend qui le demande. Je suis allergique à certaines... catégories socioprofessionnelles, on va dire.")
	
	ANSWER("Je comprends. Je pense que c'est l'époque qui veut ça.",102)
NODE(102)
	SAY("Allez, raconte. Qu'est-ce que tu me veux?")
	
	ANSWER("On m'a dit que vous connaissiez bien les milieux louches de Neocron.",103)
NODE(103)
	SAY("Avez un peu de patience et un cerveau de génie comme le mien, c'est facile. Alors ouais, on peut dire que je connais.")
	
	ANSWER("Il me faut une liste des hackers qui opèrent dans la rue. Je recherche un ancien Ange Déchu.",104)

NODE(104)
	SAY("Ah oui, les Anges Déchus, ça me dit quelque chose...")
	
	ANSWER("Epargnez-moi votre baratin, Cole. Je sais exactement les liens que vous avez avec eux.",105)
NODE(105)
	SAY("Ah oui? Alors je peux arrêter mon cinéma. Ca va être plus rapide si je te sors la liste tout de suite, non?")
	
	ANSWER("En effet, ça nous ferait gagner du temps.",106)

NODE(106)
	SAY("Mais ça serait trop facile. Alors on va corser un peu l'affaire. Si tu m'apportes vingt bouteilles de Synthetic Wine, alors peut-être que je pourrais être plus bavard. Mais c'est pas facile à trouver dans l'Outzone. Alors dépêche-toi.")
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
		SAY("Il était temps. Allez, donne-moi ça!")
	
		ANSWER("Tenez. Mais n'oubliez pas notre accord...",108)
	end
NODE(108)


	SAY("Oui, oui, ne vous inquiétez pas. Ah, ça fait du bien, c'est exactement ce qu'il me fallait.")
	
	ANSWER("On avait un accord. J'ai fait ma part...",109)
NODE(109)
	GIVEITEM(9053)
	SAY("D'habitude j'en ai rien à foutre, mais je me sens généreux aujourd'hui. Tiens, prends ça. Et maintenant, hors de ma vue!")
	ACTIVATEDIALOGTRIGGER(1)
	SETNEXTDIALOGSTATE(110)
	ENDDIALOG()
	


NODE(110)
	SAY("Je veux pas qu'on nous voie ensemble. Alors allez-vous en, retournez d'où vous venez.")
	
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
		SAY("Mais revoilà notre runner aux dents longues! Alors, quelles sont les nouvelles?")
	
		ANSWER("J'ai fait beaucoup de chemin pour trouver des informations au sujet de hackers potentiels. C'était une belle promenade.",151)
	end
NODE(151)
	SAY("Et vous avez eu quelque chose?")
	
	ANSWER("Je ne sais pas. J'ai une liste de nombreux hackers, mais je n'ai pas eu le temps de la vérifier. Je pense que c'est votre travail. Tenez.",152)
NODE(152)
	TAKEITEM(9053)
	if(result==0)then
		SAY("Oui, une telle liste aurait été très utile. Malheureusement vous ne l'avez pas.")
		ENDDIALOG()
	else
		SAY("Laissez-moi voir. Oui, certains noms me disent quelque chose. Mais j'en vois qui n'ont rien à voir avec le piratage. Ca va nous prendre du temps pour faire le tri.")
	
		ANSWER("Vous avez trouvé une piste intéressante pendant que j'enquêtais?",153)
	end
NODE(153)
	SAY("Peut-être... On a reçu une revendication des meurtres, provenant des Gardiens du Crépuscule. Mais ça ne nous aide pas beaucoup, CityAdmin et les Gardiens du Crépuscule sont en guerre, de toutes façons. Mais ça n'est pas notre problème.")
	
	ANSWER("CONTINUER",154)
NODE(154)
	GIVEMONEY(8000)
	SETNEXTDIALOGSTATE(155)
	SAY("D'abord, voici votre paiement : 8.000 crédits. Maintenant, on va mettre un certain temps avant d'avoir de nouveaux éléments. Continuez à vous entraîner, parce qu'on ne sait pas quand on pourra avoir besoin de vous à nouveau. Pensez à demander au directeur des ressources humaines de temps en temps.")
    EPICRUNFINISHED(1,2)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(155)
	SAY("Go away")
	ENDDIALOG()

end