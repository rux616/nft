
-- definitionen aus der missionheader die in der dialogheader fehlen:

function CANDOEPICRUN( factionid, missionid)

	if (node==state) then
		SendScriptMsg("candoepicrun", dialogclass, factionid, missionid)
	end
end

-- ende der Definitionen aus der missionheader
-- Definitionen der eigenen Funktionen

function CHECKFACTION(facid)
	CANDOEPICRUN(facid,0)
	if (result==-1) then
		result = 0 
	else
		result = 1
	end
end

function DIALOG()
	-- ******************************************************
	-- ******************************************************
	-- Reserved
	NODE(0)		
		-- Verweist NODE 0 auf die Node 50 oder Node 100.
		CHECKFACTION(14) ;
		if (node==state) then
			if (result==1) then		-- ist Fallen Angel
				state = 100		-- springe ohne Umwege nach node 100
			else				-- ansonsten
				state = 50		-- springe zur node 50
			end
		end
	-- ******************************************************
	-- ******************************************************
	-- Not FA
	NODE(50)
		SAY("Bonjour, je peux vous aider?") ;
		SAY("Bonjour, je peux vous être utile?") ;
		ANSWER("Bonjour, qu'est-ce que c'est ici?",51);
		ANSWER("Non merci, je connais le chemin.",80);
	NODE(51)
		SAY("Tech Haven est un centre de commerce indépendant. Les commerçants du monde entier y travaillent et s'y réunissent.");
		ANSWER("Je vois. Mais qu'est-ce que ça a de si spécial ici pour qu'ils viennent tous?",52);
	NODE(52)
		SAY("Notre systèm de sécurité perfectionné assure à nos visiteurs une sûreté optimale, et il est impossible d'y utiliser une arme. Avec la violence de notre époque, c'est un service que nos visiteurs apprécient plus que tout.");
		ANSWER("En effet, ça a le mérite d'être utile. Qu'est-ce qu'on trouve ici?",53);
	NODE(53)
		SAY("Qu'est-ce que vous cherchez?");
		ANSWER("Je veux m'installer ici, vous vendez des appartements?",60);
		ANSWER("Je cherche d'autres gens pour discuter affaires.",65);
		ANSWER("Je viens faire quelques achats. Où est-ce que je peux trouver le meilleur?",70);
		ANSWER("Où se trouve le GenReplicator le plus proche?",75);
	NODE(60)
		SAY("Nous vendons divers types d'appartements à Tech Haven. Adressez-vous à un de nos employés, que vous trouverez dans le secteur 02.");
		ANSWER("Merci pour le conseil, au revoir.",90);
		ANSWER("Merci. J'ai une autre question.",53);
	NODE(65)
		SAY("Allez voir notre centre commercial dans le secteur 3, c'est là que se rencontrent les commerçants du monde entier. Nous avons des secteurs spécialement étudiés pour les activités commerciales, ce sont d'importants points de rencontres.");
		ANSWER("Merci pour le conseil, au revoir.",90);
		ANSWER("Merci. J'ai une autre question.",53);
	NODE(70)
		SAY("Dans le centre commercial de Tech Haven se réunissent tous les meilleurs constructeursu du monde. Allez voir là-bas. Nous proposons aussi des éléments de base à prix courants dans tous les secteurs.");  
		ANSWER("Merci pour le conseil, au revoir.",90);
		ANSWER("Merci. J'ai une autre question.",53);
	NODE(75)
		SAY("Le GenReplicator le plus proche se trouve dans le secteur 2, sous le grand escalier.");
		ANSWER("Merci pour le conseil, au revoir.",90);
		ANSWER("Merci. J'ai une autre question.",53);
	NODE(80)
		SAY("Bonne journée à vous.");
		ENDDIALOG()
	NODE(90)
		SAY("Tout le plaisir est pour moi. Bonne journée à vous.");
		ENDDIALOG()	
	-- ******************************************************
	-- ******************************************************
	-- Is FA
	NODE(100)
		SAY("Bonjour l'ami! Comment puis-je vous aider?") ;
		SAY("Bonjour mon ami, en quoi puis-je vous être utile?");
		ANSWER("Vive les Anges Déchus! Dites, je suis nouveau, je voudrais savoir ce qui se passe ici.",110);
		ANSWER("Vive les Anges Déchus! J'ai entendu parler d'un QG secret ici, vous savez où il est?",120);
		ANSWER("Vive les Anges Déchus! Je connais mon chemin, merci pour tout..",130);
	NODE(110)
		SAY("Tech Haven est une station d'échanges commerciaux indépendante. Les commerçants du monde entier viennent y travailler et se rencontrer. C'est également l'ancien QG de faction des Anges Déchus, mais depuis la dernière guerre, les Anges Déchus ont emménagé au Dôme d'York.");
		ANSWER("Et tout ça c'est Reza qui l'a entraîné... Mais le nouveau QG de faction n'est pas mal, je trouve. Et les hommes de Reza vous laissent faire vos affaires tranquillement, ici?",111);
	NODE(111)
		SAY("Oui, nos systèmes de sécurité empêchent toute utilisation d'armes dans les secteurs 1, 2 et 3. Nous ne voulons pas de violence, seulement des affaires.");
		ANSWER("Même Reza ne pourrait pas utiliser une arme ici?",112);
		ANSWER("Ca fait plaisir à entendre. Je vais devoir m'en aller, merci pour votre aide.",130);
	NODE(112)
		SAY("Exact. Ce système protège nos visiteurs en permanence. Même Reza ne peut rien faire.");
		ANSWER("Un paradis pour le commerce! Les affaires marchent bien?",113);
		ANSWER("On se sent vraiment en sécurité ici... Je vais devoir m'en aller, merci pour votre aide!",130);
	NODE(113)
		SAY("Oui, dans la zone commerciale du secteur 3, beaucoup de gens se rencontrent, ainsi que dans certains endroits stratégiques un peu partout. Les affaires marchent vraiment bien.");
		ANSWER("Excellent. Une autre chose... j'ai entendu parler d'un QG secret ici, vous savez quelque chose?",114);
	NODE(114)
		SAY("*tousse* En effet, dans l'Energy Core-2, mais c'est très confidentiel, ne le dites à personne, et faites attention quand vous descendez. Le système de sécurité n'est pas opérationnel dans ce secteur en raison des radiations, mais les bureaux sont très protégés par des tourelles en cas d'intrusion. La porte se trouve derrière un tas de caisses et de tonneaux. Si vous voulez aller visiter, assurez-vous de ne pas être suivi.");
		ANSWER("Ok je n'en parlerai à personne. Une dernière chose : où est-ce que je peux trouver un GenReplicator?",115);
	NODE(115)
		SAY("Il en existe un dans le secteur 2, sous le grand escalier.");
		ANSWER("Merci beaucoup. Je vais m'en aller, à bientôt!",130);
	NODE(120)
		SAY("Notre bureau secret se trouve dans l'Energy Core-2, mais c'est très confidentiel, ne le dites à personne, et faites attention quand vous descendez. Le système de sécurité n'est pas opérationnel dans ce secteur en raison des radiations, mais les bureaux sont très protégés par des tourelles en cas d'intrusion. La porte se trouve derrière un tas de caisses et de tonneaux. Si vous voulez aller visiter, assurez-vous de ne pas être suivi.");
		ANSWER("Merci beaucoup. Je vais m'en aller, à bientôt!",130);
	NODE(130)
		SAY("Bonne journée à vous.");
		ENDDIALOG()
end