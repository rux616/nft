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
	SAY("On a un probl�me, et j'ai bien peur que ce soit li� directement � vous. On a trouv� un datacube. Un datacube contenant de la propagande �manant des Gardiens du Cr�puscule.")
	
	ANSWER("CONTINUER",1)
NODE(1)
	SAY("Le fait n'est pas en soi exceptionnel. Mais le probl�me, c'est que la piste de ce datacube remonte jusqu'� vous. Vous savez ce que �a veut dire...")
	
	ANSWER("Mais c'est impossible! Jamais je ne...",2)
NODE(2)
	SAY("Calmez-vous. Je n'ai pas encore pr�venu les CopBots, il me semble. Mais vous comprendrez certainement que ce d�lit entra�ne l'ex�cution du possesseur du datacube?")
	
	ANSWER("CONTINUER",3)
NODE(3)
	SAY("La propagande de ce type est interdite dans Neocron.")
	
	ANSWER("C'est quelqu'un d'autre qui a arrang� le coup! J'ai donn� un datacube � une seule personne r�cemment. C'est certainement lui le coupable!!",4)
NODE(4)
	SAY("CityAdmin est pleinement consciente du fait que quelqu'un cherche � nous faire inculper un de nos employ�s � tort. La proc�dure est de donner � l'accus� un temps limit� pour prouver son innocence.")
	
	ANSWER("CONTINUER",5)
NODE(5)
	SAY("Je sais que vous nous avez rendu de grands services r�cemment, c'est pourquoi j'ai d�cid� d'augmenter le temps qui vous �tait imparti. Vous devriez commencer � r�unir des preuves le plus rapidement possible, vous n'avez pas toute la vie devant vous. C'est le cas de le dire...")
	
	ANSWER("Mais comment? Je ne sais m�me pas par o� commencer!",6)
NODE(6)
	SAY("Vous devriez commencer l� o� vous avez perdu ce datacube, o� bien l� o� vous l'avez donn� � quelqu'un. Tenez, voil� le datacube de propagande.")
	
	ANSWER("C'est probablement Hontoka, dans le secteur industriel 02. C'est � lui que j'ai donn� un datacube.",7)
NODE(7)
	SAY("Maintenant, la balle est dans votre camp. CityAdmin ne peut pas avoir le nez partout. Si vous ne pouvez pas prouver votre innocence, alors vous �tes coupable.")
	
	ANSWER("CONTINUER",8)

--Spieler bekommt Datacube 9054
NODE(8)
	GIVEITEM(9054)
	SAY("Allez me trouver des preuves tangibles, ou bien vous en subirez les cons�quences.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	
NODE(9)
	SAY("J'ai bien peur que vous n'ayez pas vraiment le temps de faire une pause. Mais c'est vous qui voyez.")
	ENDDIALOG()
	


-----------------------------------------------------
--Hontoka

NODE(50)
	SAY("H�! Je vous reconnais! Je me demandais quand j'allais vous revoir dans le coin.")
	
	ANSWER("J'ai une ou deux questions au sujet du datacube que je vous ai donn�.",51)
NODE(51)
	SAY("L'oeuvre d'un g�nie, vous ne trouvez pas? Vous allez bient�t avoir les CopBots au train, et je pense que cette fois ils feront bien leur travail. Et moi, je m'en lave les mains.")
	
	ANSWER("Ca veut dire que vous �tes responsable! Pourquoi est-ce que vous faites �a? Qu'est-ce que vous voulez? Je parie que vous �tes m�me impliqu� dans ces meurtres.",52)
NODE(52)
	SAY("Je n'irais pas jusque l�. Vous avez simplement pos� les mauvaises questions au mauvais moment, c'est tout.")
	
	ANSWER("CONTINUER",53)
NODE(53)
	SAY("J'ai fait �a parce que des amis m'avaient demand� une faveur. C'est simple. Vous n'�tes pas d'accord?")
	
	ANSWER("Vous paierez pour �a! Je me vengerai!",54)
NODE(54)
	SAY("Hahahaa. J'aimerais bien voir �a. Vous avez les CopBots � vos trousses, et vous voulez vous attaquer � Tsunami? Vous avez du courage. Votre seul espoir, c'est un vieux runner de la d�charge de Blakkmist.")
	
	ANSWER("CONTINUER",55)
NODE(55)
	SAY("C'est amusant, non? Mais vous n'irez m�me pas jusque l�, parce que j'ai d�cid� de faire une autre faveur � mes amis. Je vais vous descendre, et comme �a on n'aura plus de probl�mes.")
	
	ANSWER("Qu'est-ce que vous voulez dire? Qu'est-ce qu'un vieux runner de la d�charge de Blakkmist vient faire l�-dedans?",56)
NODE(56)
	SAY("Dans deux minutes vous n'y penserez m�me plus. En garde!")
	SETNEXTDIALOGSTATE(57)	
	ATTACK()
	ENDDIALOG()
NODE(57)
	SAY("Vous �tes encore l�?!")
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
	SAY("H�, t'as vu �a? Cet enfoir� de fils de pute de moustique? Ben figure-toi qu'il y en a des encore plus gros dehors. Surtout dans les mar�cages de l'ouest, il y en a m�me des g�ants.")
	
	ANSWER("Vous allez m'�couter?",102)
NODE(102)
	SAY("J'�coute! Mais c'est toujours la m�me chose! Si quelqu'un me rend visite, c'est toujours parce qu'il veut que je lui rende un service. Piti�, piti�, il me faut ci, il me faut �a... J'en ai ma claque.")
	
	ANSWER("CONTINUER",103)
NODE(103)
	SAY("La vie ici, c'est pas le paradis. Certains s'imaginent que mon seul but dans l'existence, c'est de leur refiler un coup de main.")
	
	ANSWER("Non, je n'ai pas envie de para�tre comme �a... Mais vous �tes vraiment mon dernier espoir, je pense.",104)
NODE(104)
	SAY("Faut que je r�p�te? J'en ai marre!! D�gagez!!")
	
	ANSWER("Ah non, vous n'allez pas me renvoyer si facilement. Je vais attendre ici. Je vais attendre jursqu'� ce que vous m'aidiez.",105)
NODE(105)
	SAY("Hrmph")
	
	ANSWER("J'attends...",106)
NODE(106)
	SAY("D'accord, esp�ce d'imb�cile! Mais si je dois t'aider, alors tu vas faire quelque chose pour moi aussi.")
	
	ANSWER("D'accord, mais quoi?",107)
NODE(107)
	SAY("Ben... Je fais des exp�riences avec divers types de drogues, parce qu'ici en pleine nuit, on se sent plut�t seul. Alors il va me falloir quelques trucs pour que je puisse continuer mes exp�riences.")
	
	ANSWER("CONTINUER",108)
NODE(108)
	SAY("...Voyons, oui, des Snake Minion Teeth, �a me para�t bien. Ca se trouve dans les ruines du d�sert. Au village Yucida, je pense. Et puis ensuite...")
	
	ANSWER("Une minute! Vous ne pensez pas que c'est d�j� assez comme �a?",109)
NODE(109)
	SAY("Non mais de quel droit... Bon, d'accord. Alors rapportez-moi deux Minion Teeth. Ni plus, ni moins! Et ensuite je verrai ce que je peux faire pour vous. Si vous n'arrivez pas � les avoir sans aide, alors appelez des amis � vous. Ou bien achetez-les. Volez-les. Je m'en fiche.")
	SETNEXTDIALOGSTATE(110)
	ENDDIALOG()

--sPIELER ORGANISIERT SNAKE MINION TEETH X2 8152
-- NOCH NACHSCHAUEN


NODE(110)
	TAKEITEMCNT(8152,2)
	if(result==0)then
		SAY("Alors, et mes Snake Minion Teeth? On en trouve dans les ruines du village Yucida. Si vous n'arrivez pas � les avoir sans aide, alors appelez des amis � vous. Ou bien achetez-les. Volez-les. Je m'en fiche.")
		ENDDIALOG()	
	else
		SETNEXTDIALOGSTATE(111)
		SAY("D�j� de retour? Quelle surprise...")
	
		ANSWER("Qu'est-ce que vous croyez? Vous pensiez m'envoyer dans une fosse � serpents et ne plus jamais me revoir?",111)
	end
NODE(111)
	SAY("Je reconnais que la pens�e m'a travers�e l'esprit.")
	
	ANSWER("C'est bien gentil, mais maintenant il va falloir m'aider.",112)
NODE(112)
	SAY("En effet, c'�tait notre accord. C'est quoi le probl�me?")
	
	ANSWER("Pour faire simple, j'ai un probl�me au sujet d'un datacube que j'ai poss�d� auparavant, et qui maintenant contient des donn�es ill�gales. Le probl�me, c'est qu'on me menace d'ex�cution m�me si les donn�es ne sont pas les miennes...",113)
NODE(113)
	SAY("Ouais, j'ai remarqu� que ce genre de d�lit n'�tait plus tr�s � la mode ces derniers temps. Si je comprends bien, c'est ton nom sur le cube, mais ce qu'il y a dedans n'est pas � toi, c'est �a?")
	
	ANSWER("CONTINUER",114)
NODE(114)
	SAY("Ca va pas �tre simple de prouver ton innocence rien qu'avec un datacube.")
	
	ANSWER("J'ai besoin de prouver que �a n'est pas moi qui ai copi� les donn�es dans le cube.",115)
NODE(115)
	SAY("C'est difficile, mais pas impossible. Je pourrais tenter d'extraire l'identifiant de la personne qui a copi� les infos dans le cube. Mais faut me promettre que tu y as pas touch�.")
	
	ANSWER("Je vous le promets! Je veux juste que tout redevienne comme avant. Quel int�r�t est-ce que je ferais avec de la propagande des gardiens du Cr�puscule, dites-moi? ",116)
NODE(116)
	SAY("Tu me mens pas? Il y a tellement de cubes de propagande qui circulent...")
	
	ANSWER("Je vous dis la v�rit�.",117)
NODE(117)
	TAKEITEM(9054)
	if(result==0)then
		SAY("Malheureusement, il me faut le cube. Sinon, je peux pas t'aider.")
		ENDDIALOG()	
	else
		SETNEXTDIALOGSTATE(118)
		SAY("D'accord, je pense que je peux extraire les donn�es pour afficher le moment auquel elles ont �t� rentr�es dans le cube. Donne-moi �a, et attends ici.")
	
		ANSWER("Tenez, allez-y.",118)
	end
NODE(118)
	SAY("Attendez. Je viens de trouver des donn�es cach�es l�-dedans... Je viens de faire une copie de toutes les donn�es pr�sentes dans le cube. Je vais envoyer �a aux autorit�s. C'est toujours CityAdmin, �a a pas chang�?")
	
	ANSWER("Evidemment...",119)
NODE(119)
	SAY("Bien s�r. J'envoie �a � CityAdmin, alors. Ca leur prouvera que c'est pas toi qui as mis ces donn�es l�-dedans, �a devrait prouver ton innocence. Mais attends que les fichiers soient envoy�s avant de retourner � CityAdmin. Ils ont la g�chette facile. Bonne chance, runner.")
	
	SETNEXTDIALOGSTATE(120)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()


NODE(120)
	SAY("J'ai d�j� fait ce que tu m'as demand�. Allez, va-t-en. Retourne � CityAdmin.")
	ENDDIALOG()	


-----------------------------------------------------
--Human Resource Director

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Vous osez revenir ici? Vous avez oubli� votre statut? D�p�chez-vous d'aller voir ce type dans le secteur industriel 02, avant que quelqu'un vous reconnaisse!")
		ENDDIALOG()
	else

		SAY("Ravi de vous revoir. Il y a environ une demi-heure, nous avons re�u la preuve de votre innocence.")
	
		ANSWER("CONTINUER",151)
	end
NODE(151)
	SAY("Et vous voil� redevenu libre. Les CopBots ne vous attaqueront pas.")
	
	ANSWER("Tout est bien qui finit bien.",152)
NODE(152)
	SAY("Je suis navr�, mais il fallait suivre la proc�dure. Mais nous avons encore besoin de votre travail d'investigation pour les meurtres. L'enqu�te se poursuit, apr�s tout.")
	
	ANSWER("CONTINUER",153)
NODE(153)
	SAY("On n'a pas de mission sp�ciale pour vous actuellement. Vous devriez faire une pause, et appr�cier votre nouvelle libert�.")
	
	ANSWER("CONTINUER",154)
NODE(154)
	GIVEMONEY(10000)
	SETNEXTDIALOGSTATE(155)
	SAY("Comme compensation pour tous ces probl�mes, je vous ai fait transf�rer 10.000 cr�dits. Vous pouvez les d�penser comme vous l'entendez. Pourquoi ne prendriez-vous pas quelques vacances?")
	EPICRUNFINISHED(1,3)	
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(155)
	SAY("Go away")
	ENDDIALOG()

end