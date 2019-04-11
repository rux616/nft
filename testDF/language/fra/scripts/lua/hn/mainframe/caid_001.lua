--***************************************
--** Hacknet Broadcast Daemon v0.1.1   **
--** General Faction Information       **	
--** scriptname: cabd_001.lua	       **
--***************************************

-- faction information
DBNAME="Programme d'annonces CityAdmin v0.0.1"
FACNAME="CityAdmin"
FACSLOGAN="Pour Reza, pour Neocron, pour le Peuple"
FACGENERAL="Informations g�n�rales de faction\n'Pour Reza, pour Neocron, pour le Peuple.' La libert�... Un concept inconnu jusqu'au d�but du r�gne prosp�re de Pr�sident Reza. CityAdmin et le NCPD furent cr��s pour prot�ger et servir le pruple de Neocron. Le NCPD prot�ge les citoyens contre les menaces internes et externes, et CityAdmin remplit, comme son nom l'indique, un r�le administratif dans la gestion de la ville.\n\nEvidemment, le pr�sident Reza, contrairement � ce que les agitateurs tentent de nous faire croire, n'a rien d'un despote assoiff� de pouvoir qui tente de garder la ville sous contr�le par tous les moyens. En v�rit�, notre chef bienveillant est un homme sage et instruit, qui n'est que le chef du conseil de la ville. C'est ce conseil qui d�tient le v�ritable pouvoir. Les rumeurs disant que le conseil n'est compos� que de marionnettes � la solde d'un dictateur sont �videmment totalement infond�es et ne contiennent pas la moindre trace de v�rit�.\n\nTous les citoyens peuvent vaquer � leurs occupations librement sous l'oeil bienveillant et protecteur de s CopBots et S.T.O.R.M.-Bots. Ces �nigmatiques justiciers montent la garde � toute heure du jour et de la nuit, prot�geant Neocron contre ses ennemis de toujours. Le crime est maintenu � un faible niveau gr�ce � ce syst�me efficace impos� par les CopBots. Chaque CopBot est juge, jury et bourreau tout � la fois. Leur parole est acte l�gal, et leur action est irr�vocable."
FACHQ="Quartiers g�n�raux\nLes quartiers g�n�raux de CityAdmin se trouvent dans le secteur Plaza, au coeur de Neocron. Il s'agit d'une �norme b�tisse d'acier, de b�ton et de verre. Le NCPD et les diverses branches de CityAdmin exercent depuis cet endroit un contr�le total sur le centre de Neocron, et la s�curit� y est � son maximum. Traditionnellement, ce b�tiement et ses versions plus anciennes ont toujours �t� le si�ge du gouvernement. Selon la l�gende, les quartiers g�n�raux de Thor auraient �t� �difi�s � cet endroit m�me, � l'�poque o� la ville n'existait pas, et o� cet endroit �tait encore appel� le campement de Jeriko."
FACPERS="Personnalit�s importantes\nLe Pr�sident Lioon Reza, 64 ans, bienveillant dirigeant de Neocron, �tait autrefois tr�s ami au chef actuel des Gardiens du Cr�puscule, Hagen Yager. Ensemble, ils fond�rent leur organisation rebelle pour combattre le gouvernement des moines PSI.\n\nOn ne sait passi les deux hommes �taient v�ritablement amis, ou s'il s'agissait l� d'une alliance de circonstance. N�anmoins, il est clair que Hagen Yager a trahi Reza en tentant de s'emparer du pouvoir pour lui seul. Le pr�sident Reza et plusieurs de ses fid�les alli�s r�ussirent � arr�ter l'insurrection, et Yager prit la fuite. Les Gardiens du Cr�puscule et les anciens combattants de la libert� furent corrompus par Yager, et sont aujourd'hui devenus les ennemis principaux de Neocron, en raison de leurs actions terroristes incessantes � l'encontre du peuple et de CityAdmin.\n\nLe pr�sident Reza dirige Neocron avec d�termination et discernement. Ses unit�s CopBots et S.T.O.R.M.-Bots prot�gent le peuple des terroristes et des mutants, et CityAdmin assure aux citoyens une vie heureuse et rentable. On conna�t peu de choses du pr�sident Reza lui-m�me, car il se montre rarement en public, et il assiste rarement aux r�unions."
FACHISTORY="Histoire de la faction\nCityAdmin et le NCPD furent cr��s peu de temps apr�s la chute du gouvernement des moines PSI, en 2724. L'influence gouvernemtale s'est progressivement install�e depuis ce temps, et le contr�le sur Plaza et Via Rosso est d�sormais total. Le NCPD payrouille dans les autres quartiers de la ville, mais son influence n'est pas assez �lev�e pour y endiguer le crime. Certains agitateurs osent sugg�rer qu'il s'agit l� d'une tentative d�lib�r� de CityAdmin, car il ne serait pas dans son int�r�t de stopper toute forme de craminalit�.T"
FACRUMORS="Rumeurs\nLes rumeurs concernant CityAdmin et le pr�sident Reza sont interdites par la directive CityAdmin NCCA-162-O-114. Lancer ou diffuser de telles rumeurs est un d�lit passible de la peine capitale."
FACREL="Relations diplomatiques\nLa Fraternit� de Crahn est l'ennemi le plus ancien de CityAdmin. Entre ces deux factions se sont d�roul�s des conflits violents depuis l'accession du pr�sident Reza au pouvoir.Les Gardiens du Cr�puscule lancent de fr�quentes attaques terroristes contre la ville.\n\nLa plupart des compagnies de Neocron, comme Tangent et ProtoPharm, sont des alli�s de confiance de CityAdmin. Ces compagnies fournissent l'�quipement, les armes et la technologie au NCPD, et en �change b�n�ficient d'avantages administratifs particuliers.\n\nCityAdmin est neutre envers les Anges D�chus et les Gardiens du Cr�puscule. Mais les Anges D�chus sont h�sitants � coop�rer avec Neocron, probablement en raison de l'influence id�ologique des Gardiens du Cr�puscule."

function CREATEFACTABLE() 
	factionsymp = {}	
	-- Angaben in 0, CA, DRE, NXT, TT, BT, PP, 0, TS, BD, CS, CM, DoY, AB, FA, TG
	-- 1 = allied, 2= neutral, 3= Hostile
	factionsymp[1] = { 0,1,1,1,1,1,1,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[2] = { 0,1,1,1,1,2,2,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[3] = { 0,1,1,1,1,2,2,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[4] = { 0,1,1,1,1,2,2,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[5] = { 0,1,2,2,2,1,1,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[6] = { 0,1,2,2,2,1,1,0,3,3,3,2,0,0,3,3 } ;
	factionsymp[7] = { 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 } ;
	factionsymp[8] = { 0,3,3,3,3,3,3,0,1,2,2,2,0,0,1,1 } ;
	factionsymp[9] = { 0,3,3,3,3,3,3,0,2,1,1,2,0,0,2,1 } ;
	factionsymp[10] = { 0,3,3,3,3,3,3,0,2,1,1,2,0,0,2,1 } ;
	factionsymp[11] = { 0,2,2,2,2,2,2,0,2,2,2,1,0,0,2,2 } ;
	factionsymp[12] = { 0,3,3,3,3,3,3,0,1,1,1,2,0,0,2,2 } ;
	factionsymp[13] = { 0,3,3,3,3,3,3,0,2,2,3,3,0,0,2,2 } ;
	factionsymp[14] = { 0,3,3,3,3,3,3,0,1,2,2,2,0,0,1,1 } ;
	factionsymp[15] = { 0,3,3,3,3,3,3,0,1,1,1,3,0,0,1,1 } ;
	factionsymp[16] = {} ;
end

function GETFACTION() 
	for i = 1,16,1 do
		INFACTION(i)
		if (result==1) then 
			return i
		end
	end
end 

-- output: 0 = unknown, 1=allied to own fac, 2= neutral to own, 3= hostile
function GETRELATION()
	if (state==node) then
		CREATEFACTABLE() ;
		targetfac = GETFACTION() ;
		result = factionsymp[factionid][targetfac+1] ;
	end
end

-- main dialog
function DIALOG()

NODE(0)
	SAY("Etablissement de la connexion ...... Connexion �tablie ...... Syst�me op�rationnel :"..DBNAME)
	ANSWER("       - Continuer",10)
	ANSWER("       - Annuler",25)
NODE(10)
	SAY("Cat�gories")
	ANSWER("       - Informations de factions",15)
	ANSWER("       - Quartiers g�n�raux",16)
	ANSWER("       - Personnalit�s importantes",17)
	ANSWER("       - Historiques",18)
	ANSWER("       - Rumeurs",19)
	ANSWER("       - Diplomatie",20)
	ANSWER("       - Annuler",25)
NODE(15)
	SAY(""..FACGENERAL)
	ANSWER("Retour",10)
NODE(16)
	SAY(""..FACHQ)
	ANSWER("Retour",10)
NODE(17)
	SAY(""..FACPERS)
	ANSWER("Retour",10)
NODE(18)
	SAY(""..FACHISTORY)
	ANSWER("Retour",10)
NODE(19)
	SAY(""..FACPERS)
	ANSWER("Retour",10)
NODE(20)
	SAY(""..FACRUMORS)
	ANSWER("Retour",10)
NODE(25)
	SAY("Fermeture de la connexion ...... D�connexion ......"..FACNAME.." - "..FACSLOGAN)
	ANSWER("       - D�connecter",26)
	ANSWER("       - Annuler",0)
end