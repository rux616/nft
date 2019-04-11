
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
		SAY("Bonjour, je peux vous �tre utile?") ;
		ANSWER("Bonjour, qu'est-ce que c'est ici?",51);
		ANSWER("Non merci, je connais le chemin.",80);
	NODE(51)
		SAY("Tech Haven est un centre de commerce ind�pendant. Les commer�ants du monde entier y travaillent et s'y r�unissent.");
		ANSWER("Je vois. Mais qu'est-ce que �a a de si sp�cial ici pour qu'ils viennent tous?",52);
	NODE(52)
		SAY("Notre syst�m de s�curit� perfectionn� assure � nos visiteurs une s�ret� optimale, et il est impossible d'y utiliser une arme. Avec la violence de notre �poque, c'est un service que nos visiteurs appr�cient plus que tout.");
		ANSWER("En effet, �a a le m�rite d'�tre utile. Qu'est-ce qu'on trouve ici?",53);
	NODE(53)
		SAY("Qu'est-ce que vous cherchez?");
		ANSWER("Je veux m'installer ici, vous vendez des appartements?",60);
		ANSWER("Je cherche d'autres gens pour discuter affaires.",65);
		ANSWER("Je viens faire quelques achats. O� est-ce que je peux trouver le meilleur?",70);
		ANSWER("O� se trouve le GenReplicator le plus proche?",75);
	NODE(60)
		SAY("Nous vendons divers types d'appartements � Tech Haven. Adressez-vous � un de nos employ�s, que vous trouverez dans le secteur 02.");
		ANSWER("Merci pour le conseil, au revoir.",90);
		ANSWER("Merci. J'ai une autre question.",53);
	NODE(65)
		SAY("Allez voir notre centre commercial dans le secteur 3, c'est l� que se rencontrent les commer�ants du monde entier. Nous avons des secteurs sp�cialement �tudi�s pour les activit�s commerciales, ce sont d'importants points de rencontres.");
		ANSWER("Merci pour le conseil, au revoir.",90);
		ANSWER("Merci. J'ai une autre question.",53);
	NODE(70)
		SAY("Dans le centre commercial de Tech Haven se r�unissent tous les meilleurs constructeursu du monde. Allez voir l�-bas. Nous proposons aussi des �l�ments de base � prix courants dans tous les secteurs.");  
		ANSWER("Merci pour le conseil, au revoir.",90);
		ANSWER("Merci. J'ai une autre question.",53);
	NODE(75)
		SAY("Le GenReplicator le plus proche se trouve dans le secteur 2, sous le grand escalier.");
		ANSWER("Merci pour le conseil, au revoir.",90);
		ANSWER("Merci. J'ai une autre question.",53);
	NODE(80)
		SAY("Bonne journ�e � vous.");
		ENDDIALOG()
	NODE(90)
		SAY("Tout le plaisir est pour moi. Bonne journ�e � vous.");
		ENDDIALOG()	
	-- ******************************************************
	-- ******************************************************
	-- Is FA
	NODE(100)
		SAY("Bonjour l'ami! Comment puis-je vous aider?") ;
		SAY("Bonjour mon ami, en quoi puis-je vous �tre utile?");
		ANSWER("Vive les Anges D�chus! Dites, je suis nouveau, je voudrais savoir ce qui se passe ici.",110);
		ANSWER("Vive les Anges D�chus! J'ai entendu parler d'un QG secret ici, vous savez o� il est?",120);
		ANSWER("Vive les Anges D�chus! Je connais mon chemin, merci pour tout..",130);
	NODE(110)
		SAY("Tech Haven est une station d'�changes commerciaux ind�pendante. Les commer�ants du monde entier viennent y travailler et se rencontrer. C'est �galement l'ancien QG de faction des Anges D�chus, mais depuis la derni�re guerre, les Anges D�chus ont emm�nag� au D�me d'York.");
		ANSWER("Et tout �a c'est Reza qui l'a entra�n�... Mais le nouveau QG de faction n'est pas mal, je trouve. Et les hommes de Reza vous laissent faire vos affaires tranquillement, ici?",111);
	NODE(111)
		SAY("Oui, nos syst�mes de s�curit� emp�chent toute utilisation d'armes dans les secteurs 1, 2 et 3. Nous ne voulons pas de violence, seulement des affaires.");
		ANSWER("M�me Reza ne pourrait pas utiliser une arme ici?",112);
		ANSWER("Ca fait plaisir � entendre. Je vais devoir m'en aller, merci pour votre aide.",130);
	NODE(112)
		SAY("Exact. Ce syst�me prot�ge nos visiteurs en permanence. M�me Reza ne peut rien faire.");
		ANSWER("Un paradis pour le commerce! Les affaires marchent bien?",113);
		ANSWER("On se sent vraiment en s�curit� ici... Je vais devoir m'en aller, merci pour votre aide!",130);
	NODE(113)
		SAY("Oui, dans la zone commerciale du secteur 3, beaucoup de gens se rencontrent, ainsi que dans certains endroits strat�giques un peu partout. Les affaires marchent vraiment bien.");
		ANSWER("Excellent. Une autre chose... j'ai entendu parler d'un QG secret ici, vous savez quelque chose?",114);
	NODE(114)
		SAY("*tousse* En effet, dans l'Energy Core-2, mais c'est tr�s confidentiel, ne le dites � personne, et faites attention quand vous descendez. Le syst�me de s�curit� n'est pas op�rationnel dans ce secteur en raison des radiations, mais les bureaux sont tr�s prot�g�s par des tourelles en cas d'intrusion. La porte se trouve derri�re un tas de caisses et de tonneaux. Si vous voulez aller visiter, assurez-vous de ne pas �tre suivi.");
		ANSWER("Ok je n'en parlerai � personne. Une derni�re chose : o� est-ce que je peux trouver un GenReplicator?",115);
	NODE(115)
		SAY("Il en existe un dans le secteur 2, sous le grand escalier.");
		ANSWER("Merci beaucoup. Je vais m'en aller, � bient�t!",130);
	NODE(120)
		SAY("Notre bureau secret se trouve dans l'Energy Core-2, mais c'est tr�s confidentiel, ne le dites � personne, et faites attention quand vous descendez. Le syst�me de s�curit� n'est pas op�rationnel dans ce secteur en raison des radiations, mais les bureaux sont tr�s prot�g�s par des tourelles en cas d'intrusion. La porte se trouve derri�re un tas de caisses et de tonneaux. Si vous voulez aller visiter, assurez-vous de ne pas �tre suivi.");
		ANSWER("Merci beaucoup. Je vais m'en aller, � bient�t!",130);
	NODE(130)
		SAY("Bonne journ�e � vous.");
		ENDDIALOG()
end