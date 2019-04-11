--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Hontoka
--1,D,Kev Critter
--2,D,Human Resource MANN --- ARGHHH diese Scripterei bringt mich noch zum Wahnsinn
--Items

--Startnode, Person
--0,Human Resource
--50,Hontoka
--100,Kev Critter


-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("On a un problème, et j'ai bien peur que ce soit lié directement à vous. On a trouvé un datacube. Un datacube contenant de la propagande émanant des Gardiens du Crépuscule.")
	
	ANSWER("CONTINUER",1)
NODE(1)
	SAY("Le fait n'est pas en soi exceptionnel. Mais le problème, c'est que la piste de ce datacube remonte jusqu'à vous. Vous savez ce que ça veut dire...")
	
	ANSWER("Mais c'est impossible! Jamais je ne...",2)
NODE(2)
	SAY("Calmez-vous. Je n'ai pas encore prévenu les CopBots, il me semble. Mais vous comprendrez certainement que ce délit entraîne l'exécution du possesseur du datacube?")
	
	ANSWER("CONTINUER",3)
NODE(3)
	SAY("La propagande de ce type est interdite dans Neocron.")
	
	ANSWER("C'est quelqu'un d'autre qui a arrangé le coup! J'ai donné un datacube à une seule personne récemment. C'est certainement lui le coupable!!",4)
NODE(4)
	SAY("CityAdmin est pleinement consciente du fait que quelqu'un cherche à nous faire inculper un de nos employés à tort. La procédure est de donner à l'accusé un temps limité pour prouver son innocence.")
	
	ANSWER("CONTINUER",5)
NODE(5)
	SAY("Je sais que vous nous avez rendu de grands services récemment, c'est pourquoi j'ai décidé d'augmenter le temps qui vous était imparti. Vous devriez commencer à réunir des preuves le plus rapidement possible, vous n'avez pas toute la vie devant vous. C'est le cas de le dire...")
	
	ANSWER("Mais comment? Je ne sais même pas par où commencer!",6)
NODE(6)
	SAY("Vous devriez commencer là où vous avez perdu ce datacube, où bien là où vous l'avez donné à quelqu'un. Tenez, voilà le datacube de propagande.")
	
	ANSWER("C'est probablement Hontoka, dans le secteur industriel 02. C'est à lui que j'ai donné un datacube.",7)
NODE(7)
	SAY("Maintenant, la balle est dans votre camp. CityAdmin ne peut pas avoir le nez partout. Si vous ne pouvez pas prouver votre innocence, alors vous êtes coupable.")
	
	ANSWER("CONTINUER",8)

--Spieler bekommt Datacube 9054
NODE(8)
	GIVEITEM(9054)
	SAY("Allez me trouver des preuves tangibles, ou bien vous en subirez les conséquences.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	
NODE(9)
	SAY("J'ai bien peur que vous n'ayez pas vraiment le temps de faire une pause. Mais c'est vous qui voyez.")
	ENDDIALOG()
	


-----------------------------------------------------
--Hontoka

NODE(50)
	SAY("Hé! Je vous reconnais! Je me demandais quand j'allais vous revoir dans le coin.")
	
	ANSWER("J'ai une ou deux questions au sujet du datacube que je vous ai donné.",51)
NODE(51)
	SAY("L'oeuvre d'un génie, vous ne trouvez pas? Vous allez bientôt avoir les CopBots au train, et je pense que cette fois ils feront bien leur travail. Et moi, je m'en lave les mains.")
	
	ANSWER("Ca veut dire que vous êtes responsable! Pourquoi est-ce que vous faites ça? Qu'est-ce que vous voulez? Je parie que vous êtes même impliqué dans ces meurtres.",52)
NODE(52)
	SAY("Je n'irais pas jusque là. Vous avez simplement posé les mauvaises questions au mauvais moment, c'est tout.")
	
	ANSWER("CONTINUER",53)
NODE(53)
	SAY("J'ai fait ça parce que des amis m'avaient demandé une faveur. C'est simple. Vous n'êtes pas d'accord?")
	
	ANSWER("Vous paierez pour ça! Je me vengerai!",54)
NODE(54)
	SAY("Hahahaa. J'aimerais bien voir ça. Vous avez les CopBots à vos trousses, et vous voulez vous attaquer à Tsunami? Vous avez du courage. Votre seul espoir, c'est un vieux runner de la décharge de Blakkmist.")
	
	ANSWER("CONTINUER",55)
NODE(55)
	SAY("C'est amusant, non? Mais vous n'irez même pas jusque là, parce que j'ai décidé de faire une autre faveur à mes amis. Je vais vous descendre, et comme ça on n'aura plus de problèmes.")
	
	ANSWER("Qu'est-ce que vous voulez dire? Qu'est-ce qu'un vieux runner de la décharge de Blakkmist vient faire là-dedans?",56)
NODE(56)
	SAY("Dans deux minutes vous n'y penserez même plus. En garde!")
	SETNEXTDIALOGSTATE(57)	
	ATTACK()
	ENDDIALOG()
NODE(57)
	SAY("Vous êtes encore là?!")
	ATTACK()
	ENDDIALOG()
--Spieler wird angegriffen

-----------------------------------------------------
--Kev Critter

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Oh non, pas encore un de ces clochards... Fichez-moi la paix.")
		ENDDIALOG()
	else
		SAY("C'est rare de voir un runner passer par ici, ces derniers temps...")
	
		ANSWER("Je vous en supplie, c'est important, j'ai besoin de votre aide.",101)
	end
NODE(101)
	SAY("Hé, t'as vu ça? Cet enfoiré de fils de pute de moustique? Ben figure-toi qu'il y en a des encore plus gros dehors. Surtout dans les marécages de l'ouest, il y en a même des géants.")
	
	ANSWER("Vous allez m'écouter?",102)
NODE(102)
	SAY("J'écoute! Mais c'est toujours la même chose! Si quelqu'un me rend visite, c'est toujours parce qu'il veut que je lui rende un service. Pitié, pitié, il me faut ci, il me faut ça... J'en ai ma claque.")
	
	ANSWER("CONTINUER",103)
NODE(103)
	SAY("La vie ici, c'est pas le paradis. Certains s'imaginent que mon seul but dans l'existence, c'est de leur refiler un coup de main.")
	
	ANSWER("Non, je n'ai pas envie de paraître comme ça... Mais vous êtes vraiment mon dernier espoir, je pense.",104)
NODE(104)
	SAY("Faut que je répète? J'en ai marre!! Dégagez!!")
	
	ANSWER("Ah non, vous n'allez pas me renvoyer si facilement. Je vais attendre ici. Je vais attendre jursqu'à ce que vous m'aidiez.",105)
NODE(105)
	SAY("Hrmph")
	
	ANSWER("J'attends...",106)
NODE(106)
	SAY("D'accord, espèce d'imbécile! Mais si je dois t'aider, alors tu vas faire quelque chose pour moi aussi.")
	
	ANSWER("D'accord, mais quoi?",107)
NODE(107)
	SAY("Ben... Je fais des expériences avec divers types de drogues, parce qu'ici en pleine nuit, on se sent plutôt seul. Alors il va me falloir quelques trucs pour que je puisse continuer mes expériences.")
	
	ANSWER("CONTINUER",108)
NODE(108)
	SAY("...Voyons, oui, des Snake Minion Teeth, ça me paraît bien. Ca se trouve dans les ruines du désert. Au village Yucida, je pense. Et puis ensuite...")
	
	ANSWER("Une minute! Vous ne pensez pas que c'est déjà assez comme ça?",109)
NODE(109)
	SAY("Non mais de quel droit... Bon, d'accord. Alors rapportez-moi deux Minion Teeth. Ni plus, ni moins! Et ensuite je verrai ce que je peux faire pour vous. Si vous n'arrivez pas à les avoir sans aide, alors appelez des amis à vous. Ou bien achetez-les. Volez-les. Je m'en fiche.")
	SETNEXTDIALOGSTATE(110)
	ENDDIALOG()

--sPIELER ORGANISIERT SNAKE MINION TEETH X2 8152
-- NOCH NACHSCHAUEN


NODE(110)
	TAKEITEMCNT(8152,2)
	if(result==0)then
		SAY("Alors, et mes Snake Minion Teeth? On en trouve dans les ruines du village Yucida. Si vous n'arrivez pas à les avoir sans aide, alors appelez des amis à vous. Ou bien achetez-les. Volez-les. Je m'en fiche.")
		ENDDIALOG()	
	else
		SETNEXTDIALOGSTATE(111)
		SAY("Déjà de retour? Quelle surprise...")
	
		ANSWER("Qu'est-ce que vous croyez? Vous pensiez m'envoyer dans une fosse à serpents et ne plus jamais me revoir?",111)
	end
NODE(111)
	SAY("Je reconnais que la pensée m'a traversée l'esprit.")
	
	ANSWER("C'est bien gentil, mais maintenant il va falloir m'aider.",112)
NODE(112)
	SAY("En effet, c'était notre accord. C'est quoi le problème?")
	
	ANSWER("Pour faire simple, j'ai un problème au sujet d'un datacube que j'ai possédé auparavant, et qui maintenant contient des données illégales. Le problème, c'est qu'on me menace d'exécution même si les données ne sont pas les miennes...",113)
NODE(113)
	SAY("Ouais, j'ai remarqué que ce genre de délit n'était plus très à la mode ces derniers temps. Si je comprends bien, c'est ton nom sur le cube, mais ce qu'il y a dedans n'est pas à toi, c'est ça?")
	
	ANSWER("CONTINUER",114)
NODE(114)
	SAY("Ca va pas être simple de prouver ton innocence rien qu'avec un datacube.")
	
	ANSWER("J'ai besoin de prouver que ça n'est pas moi qui ai copié les données dans le cube.",115)
NODE(115)
	SAY("C'est difficile, mais pas impossible. Je pourrais tenter d'extraire l'identifiant de la personne qui a copié les infos dans le cube. Mais faut me promettre que tu y as pas touché.")
	
	ANSWER("Je vous le promets! Je veux juste que tout redevienne comme avant. Quel intérêt est-ce que je ferais avec de la propagande des gardiens du Crépuscule, dites-moi? ",116)
NODE(116)
	SAY("Tu me mens pas? Il y a tellement de cubes de propagande qui circulent...")
	
	ANSWER("Je vous dis la vérité.",117)
NODE(117)
	TAKEITEM(9054)
	if(result==0)then
		SAY("Malheureusement, il me faut le cube. Sinon, je peux pas t'aider.")
		ENDDIALOG()	
	else
		SETNEXTDIALOGSTATE(118)
		SAY("D'accord, je pense que je peux extraire les données pour afficher le moment auquel elles ont été rentrées dans le cube. Donne-moi ça, et attends ici.")
	
		ANSWER("Tenez, allez-y.",118)
	end
NODE(118)
	SAY("Attendez. Je viens de trouver des données cachées là-dedans... Je viens de faire une copie de toutes les données présentes dans le cube. Je vais envoyer ça aux autorités. C'est toujours CityAdmin, ça a pas changé?")
	
	ANSWER("Evidemment...",119)
NODE(119)
	SAY("Bien sûr. J'envoie ça à CityAdmin, alors. Ca leur prouvera que c'est pas toi qui as mis ces données là-dedans, ça devrait prouver ton innocence. Mais attends que les fichiers soient envoyés avant de retourner à CityAdmin. Ils ont la gâchette facile. Bonne chance, runner.")
	
	SETNEXTDIALOGSTATE(120)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()


NODE(120)
	SAY("J'ai déjà fait ce que tu m'as demandé. Allez, va-t-en. Retourne à CityAdmin.")
	ENDDIALOG()	


-----------------------------------------------------
--Human Resource Director

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Vous osez revenir ici? Vous avez oublié votre statut? Dépêchez-vous d'aller voir ce type dans le secteur industriel 02, avant que quelqu'un vous reconnaisse!")
		ENDDIALOG()
	else

		SAY("Ravi de vous revoir. Il y a environ une demi-heure, nous avons reçu la preuve de votre innocence.")
	
		ANSWER("CONTINUER",151)
	end
NODE(151)
	SAY("Et vous voilà redevenu libre. Les CopBots ne vous attaqueront pas.")
	
	ANSWER("Tout est bien qui finit bien.",152)
NODE(152)
	SAY("Je suis navré, mais il fallait suivre la procédure. Mais nous avons encore besoin de votre travail d'investigation pour les meurtres. L'enquête se poursuit, après tout.")
	
	ANSWER("CONTINUER",153)
NODE(153)
	SAY("On n'a pas de mission spéciale pour vous actuellement. Vous devriez faire une pause, et apprécier votre nouvelle liberté.")
	
	ANSWER("CONTINUER",154)
NODE(154)
	GIVEMONEY(10000)
	SETNEXTDIALOGSTATE(155)
	SAY("Comme compensation pour tous ces problèmes, je vous ai fait transférer 10.000 crédits. Vous pouvez les dépenser comme vous l'entendez. Pourquoi ne prendriez-vous pas quelques vacances?")
	EPICRUNFINISHED(1,3)	
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(155)
	SAY("Go away")
	ENDDIALOG()

end