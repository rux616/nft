--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person
--
--0,D,BioTech
--1,D,Mason



--Startnode, Person
--0 Human Resource
--50 Biotech direx of operations
--100 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Bienvenue chez NExT, c'est toujours un grand moment quand un nouvel employé nous rejoint. J'espère que votre appartement vous plaît? Comme vous le savez probablement déjà, NExT opère dans le secteur des transports. Presque tous les véhicules que vous voyez ici viennent des usines d'assemblage de NExT.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Des hoverbikes aux rames de métro en passant par les vaisseaux spatiaux, tout ça vient de chez NEXT. Mais pour rester en haut de la hiérarchie, nous devons avoir de bonnes relations avec les autres compagnies. Voulez-vous nous aider, ou bien avez-vous encore besoin de temps pour vous adapter à votre nouvelle maison?")
		
		ANSWER("Je pense qu'on va pouvoir commencer.",2)
		ANSWER("Actuellement, je dirais qu'il me faut encore un peu de temps.",9)
	NODE(2)
		SAY("Excellent. On a besoin de gens comme vous. Actuellement, vous êtes assigné à un grand projet entre nous et Biotech. Evidemment, BioTech n'est pas la seule compagnie avec laquelle nous entretenons des relations. On compte également des alliances avec Tangent et CityAdmin.")
		
		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Vous vous dites certainement que CityAdmin est bien plus qu'une compagnie. Mais quoiqu'il en soit, le projet sur lequel vous allez travailler vise à la réouverture de la porte des étoiles. Vers Irata III, pour être précis. Le directeur de NEXT, Craig Diggers, est déterminé à faire revivre ce grand projet.")
		
		ANSWER("Est-ce qu'il a une raison spéciale d'être si déterminé?",4)
	NODE(4)
		SAY("M. Diggers a subi un terrible accident il y a longtemps. Il rêvait de participer à la grande immigration vers Irata III en se rendant au vaisseau, qui lui a fait rater le départ. Depuis, il pense sans arrêt à Irata III.")
		
		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("On lui a greffé des jambes artificielles, et vous avez déjà deviné par qui : Biotech! C'est peut-être la raison pour laquelle ce nouveau programme spatial est développé en partenariat avec eux. M. Diggers doit sentir qu'il a une dette envers Biotech.")
		
		ANSWER("Un programme spatial avec BioTech? Je pensais que Biotech s'occupait d'implants et d'organes artificiels...",6)
	NODE(6)
		SAY("Oui, c'est ce que tout le monde imagine. Mais en vérité, BioTech s'occupe de nombreux autres secteurs. Le meilleur exemple, c'est Tangent. Tangent est un ancien département de BioTech qui est devenu trop important pour rester dans cet état, et qui s'est transformé en entreprise à part entière. Mais revenons à notre propos.")
		
		ANSWER("CONTINUER",7)
	NODE(7)
		GIVEITEM(9100)
		SAY("Ces documents sont des copies de contrats déjà signés avec BioTech. Ils les attendent certainement. En livrant ces contrats, vous nous prouverez que vous voulez travailler pour nous et que vous voulez mener vos projets jusqu'à leur terme. Et ce pourra être le début d'une grande carrière. Ne vous relâchez pas.")
		
		ANSWER("Bien, je prends cette mission Où est-ce que je dois aller?",8)
	NODE(8)
		SAY("Vous devrez vous adresser directement au directeur des opérations de BioTech, dans leur QG. Vous devriez le trouver sans problème. Et avant que j'oublie : allez voir M. Mason une fois que vous avez livré les documents. C'est le vice-président de NEXT, il se trouve dans la tour. Bonne chance.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(9)
		SAY("Prenez votre temps, revenez quand vous vous sentez prêt.")
		ENDDIALOG()
		
	NODE(10)
		SAY("Vous avez déjà livré les documents au QG de Biotech?")
		ENDDIALOG()
		


-----------------------------------------------------
--BioTech direx of operations

	NODE(50)
		TAKEITEM(9100)
		if(result==0)then
			SAY("C'est vous qui devez nous apporter les documents de NExT? Alors où sont-ils?")
			ENDDIALOG()
		else
			SAY("On m'a déjà prévenu que des documents pouvaient arriver d'un moment à l'autre. Vous les avez sur vous? Alors donnez-les moi.")
		
			ANSWER("Tenez, je pense que c'est pour un contrat entre NExT et BioTech",51)
		end
	NODE(51)
		SAY("Oui, en effet. Cet accord nous permettra de créer un modèle de vaisseau spatial plus performant comparé aux générations précédentes. Evidemment, la route est longue jusqu'à la concrétisation du projet.")
		
		ANSWER("CONTINUER",52)
	NODE(52)
		SAY("Pour un projet d'une telle ampleur, les compagnies sont forcées de coopérer. Un vaisseau spatial mobilise de nombreuses technologies, et aucune compagnie ne peut espérer mener à bien un tel projet seule.")
		
		ANSWER("J'imagine. Au revoir.",53)
	NODE(53)
		SAY("Au revoir. Gardez votre calme en toutes circonstances, je suis certain que Neocron verra de bonnes choses dans un avenir proche. Je vous l'assure!")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(54)
		SAY("J'ai déjà reçu les documents. Maintenant, si vous voulez m'excuser, j'ai du travail. Et j'imagine que votre compagnie a besoin de vous également.")
		ENDDIALOG()



-----------------------------------------------------
--Mason

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Repassez un peu plus tard. Je n'ai pas de temps pour vous actuellement. Vous avez certainement d'autres choses à faire.")
			ENDDIALOG()
		else
			SAY("C'est la première fois qu'on se rencontre, il me semble. Je m'appelle Mason et je suis le vice-président de NEXT. On se reverra certainement. Comment puis-je vous aider?")
		
			ANSWER("Je viens de transférer des documents importants au QG de Biotech. C'est en rapport avec une coopération entre Biotech et NExT.",101)
		end
	NODE(101)
		GIVEMONEY(2000)
		SAY("Oui, je me souviens. Ces documents n'étaient donc pas déjà livrés? Alors il était temps! Je pense que ça mérite une petite prime. Que diriez-vous de 2.000 crédits?")
		
		ANSWER("Merci, ce fut un plaisir.",102)
	NODE(102)
		SAY("On a toujours du travail à NExT. Nous avons acquis notre réputation après des années de travail forcené. Depuis la fondation de NExT en 2723, et jusqu'à aujourd'hui. Mais en dehors de soigner notre réputation, nous faisons évidemment de grandes choses.")
		
		ANSWER("CONTINUER",103)
	NODE(103)
		SAY("Je suggère que vous repassiez nous voir lorsque vous aurez apporté des preuves supplémentaires de votre loyauté. Nous pourrons alors envisager de vous donner d'autres missions. Au revoir, runner.")
		EPICRUNFINISHED(3,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		

end