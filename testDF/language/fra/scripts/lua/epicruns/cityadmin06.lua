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
	SAY("Ces enquêtes semblent prendre plus longtemps que prévu, il me semble. Au moins, on ne signale plus de meurtres, c'est toujours ça. Mais gardez l'oeil ouvert!")
	
	ANSWER("Ne vous inquiétez pas, je déterminerai la position de ce CopBot volé.",1)
NODE(1)
	SAY("Vous avez donc une piste?")
	
	ANSWER("Je pense que oui. Il faut encore que j'aille voir un... Euh... un contact qui me donnera sa localisation exacte.",2)
NODE(2)
	SAY("Bonne chance.")
	ACCEPTMISSION()
	SETNEXTDIALOGSTATE(3)	
	ENDDIALOG()
NODE(3)
	SAY("Je pensais que vous aviez une piste. Allez faire votre rapport à Jenna lorsque vous aurez plus d'éléments.")
	ENDDIALOG()

-----------------------------------------------------
--Simmons

NODE(50)
	SAY("B... Bonjour, j'ai localisé le CopBot comme promis.")
	
	ANSWER("Qu'est-ce que vous attendez? Allez, dites-moi.",51)
NODE(51)
	SAY("Vous le trouverez dans les Terres Brûlées, en F 03. C'est une terre marécageuse. Le programme l'a probablement choisi pour qu'on ne puisse pas repérer le CopBot. C'est ainsi que son comportement a été pensé.")
	
	ANSWER("Bien, je vais m'en occuper.",52)
NODE(52)
	SAY("Bonne chance... Je vais vous attendre ici... Je vais préparer le Law Enforcer en attendant votre retour.")
	SETNEXTDIALOGSTATE(53)
	ENDDIALOG()
	
--Spieler tötet CopBot, Kann man einen Roboter töten?

NODE(53)
	TAKEITEM(9050)
	if(result==0)then
		SAY("Mais vous avez laissé la puce Law Enforcer sur le CopBot?")
		ENDDIALOG()
	else
		SETNEXTDIALOGSTATE(54)
		SAY("Vous avez fait vite! Vous avez le Law Enforcer?")
	
		ANSWER("Oui, tenez.",54)
	end
NODE(54)
	SAY("Encore quelques modifications à apporter. C'est l'affaire de quelques secondes...")
	
	ANSWER("Vite, il faut encore que j'aille au NCPD!",55)
NODE(55)
	SAY("Au NCPD? Alors vous allez me dénoncer?")
	
	ANSWER("Non, je vais leur dire qui a commis les meurtres.",56)
NODE(56)
	SAY("Ca me rassure. Je transmettrai la LE modifiée au NCPD, vous pourrez la récupérer là-bas. Au revoir.")
	
	ANSWER("Au revoir, et merci.",57)

--advanced law enforcer

NODE(57)

	SAY("Allez, bonne chance.")
	SETNEXTDIALOGSTATE(58)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
NODE(58)
	SAY("Vous voulez encore autre chose? Je vous ai déjà dit tout ce que je savais...")
	ENDDIALOG()


-----------------------------------------------------
--Jenna

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Navré, mais je n'au pas le temps. Le travail en retard s'accumule.")
		ENDDIALOG()
	else
		SAY("Vous avez du nouveau?")
	
		ANSWER("Disons que j'ai résolu les meurtres et l'affaire du CopBot volé. Les meurtres s'arrêteront.",101)
	end
NODE(101)
	SAY("Vous avez résolu les meurtres? Non, je ne vous crois pas, soyez sérieux...")
	
	ANSWER("Si, je vous assure. Le CopBot volé avait été reprogrammé pour tuer tous ces gens.",102)
NODE(102)
	SAY("Vraiment? Ca expliquerait pourquoi nous ne trouvions pas d'éléments suspects.")
	
	ANSWER("Oui, et tout ça s'est produit après les plans des Gardiens du Crépuscule, vous l'avez deviné.",103)
NODE(103)
	SAY("Mais qu'est-ce qu'ils espéraient avec ces meurtres? Et où se trouve le CopBot à présent?")
	
	ANSWER("Les Gardiens du Crépuscule voulaient progressivement affaiblir CityAdmin avec ces meurtres, et ils ont presque touché au but. Vous trouverez le CopBot dans le secteur F 03.",104)
NODE(104)
	SAY("Stupéfiant... Attendez, j'ai une image satellite du secteur F 03. Vous avez raison, le CopBot est bien là. Vous l'avez mis hors de fonction? Il a l'air plutôt mal en point.")
	
	ANSWER("Oui, je  voulais m'assurer que c'était bien le bon CopBot. Je ne voulais pas faire un rapport comprenant des erreurs.",105)
NODE(105)
	SAY("Alors vous avez bien mérité la récompense promise pour ce CopBot. Le MCPD et CityAdmin avaient promis 50.000 crédits pour la résolution de ce crime. Maintenant, cette somme vous appartient.")
	
	ANSWER("Merci, tout le plaisir a été pour moi.",106)
NODE(106)
	SAY("Maintenant, vous pouvez prendre un peu de repos. Peut-être allez-vous fonder un clan pour soutenir CityAdmin dans son effort?")
	
	ANSWER("J'y penserai... Oh, avant que j'oublie : le hacker qui a fait ce travail se rend souvent au Rocco's Seafood de Pepper Park, il s'appelle Simmons. C'est à vous de décider ce que vous allez faire de lui. Après tout, il est à l'origine de toute cette histoire.",107)
	ANSWER("Alors je vous dis au revoir.",108)
NODE(107)
	GIVEMONEY(50000)
	GIVEMONEY(30000)
	GIVEITEM(9051,255)
	SETNEXTDIALOGSTATE(109)
	SAY("Bonne chance pour la suite, runner. Pour l'arrestation de ce hacker, vous avec gagné la récompense supplémentaire de 30.000 crédits. On nous a donné cette puce LE récemment, elle vous revient. Je ne sais pas ce qu'elle a de spécial.")
	EPICRUNFINISHED(1,5)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
NODE(108)
	GIVEMONEY(50000)
	GIVEITEM(9051,255)
	SETNEXTDIALOGSTATE(109)
	SAY("Bonne chance pour l'avenir, runner. Tenez, on nous a demandé de vous donner cette puce LE. Je ne sais pas ce qu'elle a de spécial, mais en tout cas elle est à vous.")
	EPICRUNFINISHED(1,5)
	ACTIVATEDIALOGTRIGGER(1)	
	ENDDIALOG()
	
NODE(109)
	SAY("Go away")
	ENDDIALOG()

end