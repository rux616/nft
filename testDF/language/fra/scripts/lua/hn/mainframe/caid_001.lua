--***************************************
--** Hacknet Broadcast Daemon v0.1.1   **
--** General Faction Information       **	
--** scriptname: cabd_001.lua	       **
--***************************************

-- faction information
DBNAME="Programme d'annonces CityAdmin v0.0.1"
FACNAME="CityAdmin"
FACSLOGAN="Pour Reza, pour Neocron, pour le Peuple"
FACGENERAL="Informations générales de faction\n'Pour Reza, pour Neocron, pour le Peuple.' La liberté... Un concept inconnu jusqu'au début du règne prospère de Président Reza. CityAdmin et le NCPD furent créés pour protéger et servir le pruple de Neocron. Le NCPD protège les citoyens contre les menaces internes et externes, et CityAdmin remplit, comme son nom l'indique, un rôle administratif dans la gestion de la ville.\n\nEvidemment, le président Reza, contrairement à ce que les agitateurs tentent de nous faire croire, n'a rien d'un despote assoiffé de pouvoir qui tente de garder la ville sous contrôle par tous les moyens. En vérité, notre chef bienveillant est un homme sage et instruit, qui n'est que le chef du conseil de la ville. C'est ce conseil qui détient le véritable pouvoir. Les rumeurs disant que le conseil n'est composé que de marionnettes à la solde d'un dictateur sont évidemment totalement infondées et ne contiennent pas la moindre trace de vérité.\n\nTous les citoyens peuvent vaquer à leurs occupations librement sous l'oeil bienveillant et protecteur de s CopBots et S.T.O.R.M.-Bots. Ces énigmatiques justiciers montent la garde à toute heure du jour et de la nuit, protégeant Neocron contre ses ennemis de toujours. Le crime est maintenu à un faible niveau grâce à ce système efficace imposé par les CopBots. Chaque CopBot est juge, jury et bourreau tout à la fois. Leur parole est acte légal, et leur action est irrévocable."
FACHQ="Quartiers généraux\nLes quartiers généraux de CityAdmin se trouvent dans le secteur Plaza, au coeur de Neocron. Il s'agit d'une énorme bâtisse d'acier, de béton et de verre. Le NCPD et les diverses branches de CityAdmin exercent depuis cet endroit un contrôle total sur le centre de Neocron, et la sécurité y est à son maximum. Traditionnellement, ce bâtiement et ses versions plus anciennes ont toujours été le siège du gouvernement. Selon la légende, les quartiers généraux de Thor auraient été édifiés à cet endroit même, à l'époque où la ville n'existait pas, et où cet endroit était encore appelé le campement de Jeriko."
FACPERS="Personnalités importantes\nLe Président Lioon Reza, 64 ans, bienveillant dirigeant de Neocron, était autrefois très ami au chef actuel des Gardiens du Crépuscule, Hagen Yager. Ensemble, ils fondèrent leur organisation rebelle pour combattre le gouvernement des moines PSI.\n\nOn ne sait passi les deux hommes étaient véritablement amis, ou s'il s'agissait là d'une alliance de circonstance. Néanmoins, il est clair que Hagen Yager a trahi Reza en tentant de s'emparer du pouvoir pour lui seul. Le président Reza et plusieurs de ses fidèles alliés réussirent à arrêter l'insurrection, et Yager prit la fuite. Les Gardiens du Crépuscule et les anciens combattants de la liberté furent corrompus par Yager, et sont aujourd'hui devenus les ennemis principaux de Neocron, en raison de leurs actions terroristes incessantes à l'encontre du peuple et de CityAdmin.\n\nLe président Reza dirige Neocron avec détermination et discernement. Ses unités CopBots et S.T.O.R.M.-Bots protègent le peuple des terroristes et des mutants, et CityAdmin assure aux citoyens une vie heureuse et rentable. On connaît peu de choses du président Reza lui-même, car il se montre rarement en public, et il assiste rarement aux réunions."
FACHISTORY="Histoire de la faction\nCityAdmin et le NCPD furent créés peu de temps après la chute du gouvernement des moines PSI, en 2724. L'influence gouvernemtale s'est progressivement installée depuis ce temps, et le contrôle sur Plaza et Via Rosso est désormais total. Le NCPD payrouille dans les autres quartiers de la ville, mais son influence n'est pas assez élevée pour y endiguer le crime. Certains agitateurs osent suggérer qu'il s'agit là d'une tentative délibéré de CityAdmin, car il ne serait pas dans son intérêt de stopper toute forme de craminalité.T"
FACRUMORS="Rumeurs\nLes rumeurs concernant CityAdmin et le président Reza sont interdites par la directive CityAdmin NCCA-162-O-114. Lancer ou diffuser de telles rumeurs est un délit passible de la peine capitale."
FACREL="Relations diplomatiques\nLa Fraternité de Crahn est l'ennemi le plus ancien de CityAdmin. Entre ces deux factions se sont déroulés des conflits violents depuis l'accession du président Reza au pouvoir.Les Gardiens du Crépuscule lancent de fréquentes attaques terroristes contre la ville.\n\nLa plupart des compagnies de Neocron, comme Tangent et ProtoPharm, sont des alliés de confiance de CityAdmin. Ces compagnies fournissent l'équipement, les armes et la technologie au NCPD, et en échange bénéficient d'avantages administratifs particuliers.\n\nCityAdmin est neutre envers les Anges Déchus et les Gardiens du Crépuscule. Mais les Anges Déchus sont hésitants à coopérer avec Neocron, probablement en raison de l'influence idéologique des Gardiens du Crépuscule."

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
	SAY("Etablissement de la connexion ...... Connexion établie ...... Système opérationnel :"..DBNAME)
	ANSWER("       - Continuer",10)
	ANSWER("       - Annuler",25)
NODE(10)
	SAY("Catégories")
	ANSWER("       - Informations de factions",15)
	ANSWER("       - Quartiers généraux",16)
	ANSWER("       - Personnalités importantes",17)
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
	SAY("Fermeture de la connexion ...... Déconnexion ......"..FACNAME.." - "..FACSLOGAN)
	ANSWER("       - Déconnecter",26)
	ANSWER("       - Annuler",0)
end