--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Simmons
--1,D,Jenna

--Startnode, Person
--0,Human Resource
--50,Simmons
--100,Jenna


--Items
-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Ces enqu�tes semblent prendre plus longtemps que pr�vu, il me semble. Au moins, on ne signale plus de meurtres, c'est toujours �a. Mais gardez l'oeil ouvert!")
	
	ANSWER("Ne vous inqui�tez pas, je d�terminerai la position de ce CopBot vol�.",1)
NODE(1)
	SAY("Vous avez donc une piste?")
	
	ANSWER("Je pense que oui. Il faut encore que j'aille voir un... Euh... un contact qui me donnera sa localisation exacte.",2)
NODE(2)
	SAY("Bonne chance.")
	ACCEPTMISSION()
	SETNEXTDIALOGSTATE(3)	
	ENDDIALOG()
NODE(3)
	SAY("Je pensais que vous aviez une piste. Allez faire votre rapport � Jenna lorsque vous aurez plus d'�l�ments.")
	ENDDIALOG()

-----------------------------------------------------
--Simmons

NODE(50)
	SAY("B... Bonjour, j'ai localis� le CopBot comme promis.")
	
	ANSWER("Qu'est-ce que vous attendez? Allez, dites-moi.",51)
NODE(51)
	SAY("Vous le trouverez dans les Terres Br�l�es, en F 03. C'est une terre mar�cageuse. Le programme l'a probablement choisi pour qu'on ne puisse pas rep�rer le CopBot. C'est ainsi que son comportement a �t� pens�.")
	
	ANSWER("Bien, je vais m'en occuper.",52)
NODE(52)
	SAY("Bonne chance... Je vais vous attendre ici... Je vais pr�parer le Law Enforcer en attendant votre retour.")
	SETNEXTDIALOGSTATE(53)
	ENDDIALOG()
	
--Spieler t�tet CopBot, Kann man einen Roboter t�ten?

NODE(53)
	TAKEITEM(9050)
	if(result==0)then
		SAY("Mais vous avez laiss� la puce Law Enforcer sur le CopBot?")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(54)
		SAY("Vous avez fait vite! Vous avez le Law Enforcer?")
	
		ANSWER("Oui, tenez.",54)
	end
NODE(54)
	SAY("Encore quelques modifications � apporter. C'est l'affaire de quelques secondes...")
	
	ANSWER("Vite, il faut encore que j'aille au NCPD!",55)
NODE(55)
	SAY("Au NCPD? Alors vous allez me d�noncer?")
	
	ANSWER("Non, je vais leur dire qui a commis les meurtres.",56)
NODE(56)
	SAY("Ca me rassure. Je transmettrai la LE modifi�e au NCPD, vous pourrez la r�cup�rer l�-bas. Au revoir.")
	
	ANSWER("Au revoir, et merci.",57)

--advanced law enforcer

NODE(57)

	SAY("Allez, bonne chance.")
	SETNEXTDIALOGSTATE(58)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
NODE(58)
	SAY("Vous voulez encore autre chose? Je vous ai d�j� dit tout ce que je savais...")
	ENDDIALOG()


-----------------------------------------------------
--Jenna

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Navr�, mais je n'au pas le temps. Le travail en retard s'accumule.")
		ENDDIALOG()
	else
		SAY("Vous avez du nouveau?")
	
		ANSWER("Disons que j'ai r�solu les meurtres et l'affaire du CopBot vol�. Les meurtres s'arr�teront.",101)
	end
NODE(101)
	SAY("Vous avez r�solu les meurtres? Non, je ne vous crois pas, soyez s�rieux...")
	
	ANSWER("Si, je vous assure. Le CopBot vol� avait �t� reprogramm� pour tuer tous ces gens.",102)
NODE(102)
	SAY("Vraiment? Ca expliquerait pourquoi nous ne trouvions pas d'�l�ments suspects.")
	
	ANSWER("Oui, et tout �a s'est produit apr�s les plans des Gardiens du Cr�puscule, vous l'avez devin�.",103)
NODE(103)
	SAY("Mais qu'est-ce qu'ils esp�raient avec ces meurtres? Et o� se trouve le CopBot � pr�sent?")
	
	ANSWER("Les Gardiens du Cr�puscule voulaient progressivement affaiblir CityAdmin avec ces meurtres, et ils ont presque touch� au but. Vous trouverez le CopBot dans le secteur F 03.",104)
NODE(104)
	SAY("Stup�fiant... Attendez, j'ai une image satellite du secteur F 03. Vous avez raison, le CopBot est bien l�. Vous l'avez mis hors de fonction? Il a l'air plut�t mal en point.")
	
	ANSWER("Oui, je  voulais m'assurer que c'�tait bien le bon CopBot. Je ne voulais pas faire un rapport comprenant des erreurs.",105)
NODE(105)
	SAY("Alors vous avez bien m�rit� la r�compense promise pour ce CopBot. Le MCPD et CityAdmin avaient promis 50.000 cr�dits pour la r�solution de ce crime. Maintenant, cette somme vous appartient.")
	
	ANSWER("Merci, tout le plaisir a �t� pour moi.",106)
NODE(106)
	SAY("Maintenant, vous pouvez prendre un peu de repos. Peut-�tre allez-vous fonder un clan pour soutenir CityAdmin dans son effort?")
	
	ANSWER("J'y penserai... Oh, avant que j'oublie : le hacker qui a fait ce travail se rend souvent au Rocco's Seafood de Pepper Park, il s'appelle Simmons. C'est � vous de d�cider ce que vous allez faire de lui. Apr�s tout, il est � l'origine de toute cette histoire.",107)
	ANSWER("Alors je vous dis au revoir.",108)
NODE(107)
	GIVEMONEY(50000)
	GIVEMONEY(30000)
	GIVEITEM(9051,255)
	SETNEXTDIALOGSTATE(109)
	SAY("Bonne chance pour la suite, runner. Pour l'arrestation de ce hacker, vous avec gagn� la r�compense suppl�mentaire de 30.000 cr�dits. On nous a donn� cette puce LE r�cemment, elle vous revient. Je ne sais pas ce qu'elle a de sp�cial.")
	EPICRUNFINISHED(1,5)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
NODE(108)
	GIVEMONEY(50000)
	GIVEITEM(9051,255)
	SETNEXTDIALOGSTATE(109)
	SAY("Bonne chance pour l'avenir, runner. Tenez, on nous a demand� de vous donner cette puce LE. Je ne sais pas ce qu'elle a de sp�cial, mais en tout cas elle est � vous.")
	EPICRUNFINISHED(1,5)
	ACTIVATEDIALOGTRIGGER(1)	
	ENDDIALOG()
	
NODE(109)
	SAY("Go away")
	ENDDIALOG()

end