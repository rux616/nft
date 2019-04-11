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
		SAY("Bienvenue chez NExT, c'est toujours un grand moment quand un nouvel employ� nous rejoint. J'esp�re que votre appartement vous pla�t? Comme vous le savez probablement d�j�, NExT op�re dans le secteur des transports. Presque tous les v�hicules que vous voyez ici viennent des usines d'assemblage de NExT.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Des hoverbikes aux rames de m�tro en passant par les vaisseaux spatiaux, tout �a vient de chez NEXT. Mais pour rester en haut de la hi�rarchie, nous devons avoir de bonnes relations avec les autres compagnies. Voulez-vous nous aider, ou bien avez-vous encore besoin de temps pour vous adapter � votre nouvelle maison?")
		
		ANSWER("Je pense qu'on va pouvoir commencer.",2)
		ANSWER("Actuellement, je dirais qu'il me faut encore un peu de temps.",9)
	NODE(2)
		SAY("Excellent. On a besoin de gens comme vous. Actuellement, vous �tes assign� � un grand projet entre nous et Biotech. Evidemment, BioTech n'est pas la seule compagnie avec laquelle nous entretenons des relations. On compte �galement des alliances avec Tangent et CityAdmin.")
		
		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("Vous vous dites certainement que CityAdmin est bien plus qu'une compagnie. Mais quoiqu'il en soit, le projet sur lequel vous allez travailler vise � la r�ouverture de la porte des �toiles. Vers Irata III, pour �tre pr�cis. Le directeur de NEXT, Craig Diggers, est d�termin� � faire revivre ce grand projet.")
		
		ANSWER("Est-ce qu'il a une raison sp�ciale d'�tre si d�termin�?",4)
	NODE(4)
		SAY("M. Diggers a subi un terrible accident il y a longtemps. Il r�vait de participer � la grande immigration vers Irata III en se rendant au vaisseau, qui lui a fait rater le d�part. Depuis, il pense sans arr�t � Irata III.")
		
		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("On lui a greff� des jambes artificielles, et vous avez d�j� devin� par qui : Biotech! C'est peut-�tre la raison pour laquelle ce nouveau programme spatial est d�velopp� en partenariat avec eux. M. Diggers doit sentir qu'il a une dette envers Biotech.")
		
		ANSWER("Un programme spatial avec BioTech? Je pensais que Biotech s'occupait d'implants et d'organes artificiels...",6)
	NODE(6)
		SAY("Oui, c'est ce que tout le monde imagine. Mais en v�rit�, BioTech s'occupe de nombreux autres secteurs. Le meilleur exemple, c'est Tangent. Tangent est un ancien d�partement de BioTech qui est devenu trop important pour rester dans cet �tat, et qui s'est transform� en entreprise � part enti�re. Mais revenons � notre propos.")
		
		ANSWER("CONTINUER",7)
	NODE(7)
		GIVEITEM(9100)
		SAY("Ces documents sont des copies de contrats d�j� sign�s avec BioTech. Ils les attendent certainement. En livrant ces contrats, vous nous prouverez que vous voulez travailler pour nous et que vous voulez mener vos projets jusqu'� leur terme. Et ce pourra �tre le d�but d'une grande carri�re. Ne vous rel�chez pas.")
		
		ANSWER("Bien, je prends cette mission O� est-ce que je dois aller?",8)
	NODE(8)
		SAY("Vous devrez vous adresser directement au directeur des op�rations de BioTech, dans leur QG. Vous devriez le trouver sans probl�me. Et avant que j'oublie : allez voir M. Mason une fois que vous avez livr� les documents. C'est le vice-pr�sident de NEXT, il se trouve dans la tour. Bonne chance.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(9)
		SAY("Prenez votre temps, revenez quand vous vous sentez pr�t.")
		ENDDIALOG()
		
	NODE(10)
		SAY("Vous avez d�j� livr� les documents au QG de Biotech?")
		ENDDIALOG()
		


-----------------------------------------------------
--BioTech direx of operations

	NODE(50)
		TAKEITEM(9100)
		if(result==0)then
			SAY("C'est vous qui devez nous apporter les documents de NExT? Alors o� sont-ils?")
			ENDDIALOG()
		else
			SAY("On m'a d�j� pr�venu que des documents pouvaient arriver d'un moment � l'autre. Vous les avez sur vous? Alors donnez-les moi.")
		
			ANSWER("Tenez, je pense que c'est pour un contrat entre NExT et BioTech",51)
		end
	NODE(51)
		SAY("Oui, en effet. Cet accord nous permettra de cr�er un mod�le de vaisseau spatial plus performant compar� aux g�n�rations pr�c�dentes. Evidemment, la route est longue jusqu'� la concr�tisation du projet.")
		
		ANSWER("CONTINUER",52)
	NODE(52)
		SAY("Pour un projet d'une telle ampleur, les compagnies sont forc�es de coop�rer. Un vaisseau spatial mobilise de nombreuses technologies, et aucune compagnie ne peut esp�rer mener � bien un tel projet seule.")
		
		ANSWER("J'imagine. Au revoir.",53)
	NODE(53)
		SAY("Au revoir. Gardez votre calme en toutes circonstances, je suis certain que Neocron verra de bonnes choses dans un avenir proche. Je vous l'assure!")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(54)
		SAY("J'ai d�j� re�u les documents. Maintenant, si vous voulez m'excuser, j'ai du travail. Et j'imagine que votre compagnie a besoin de vous �galement.")
		ENDDIALOG()



-----------------------------------------------------
--Mason

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Repassez un peu plus tard. Je n'ai pas de temps pour vous actuellement. Vous avez certainement d'autres choses � faire.")
			ENDDIALOG()
		else
			SAY("C'est la premi�re fois qu'on se rencontre, il me semble. Je m'appelle Mason et je suis le vice-pr�sident de NEXT. On se reverra certainement. Comment puis-je vous aider?")
		
			ANSWER("Je viens de transf�rer des documents importants au QG de Biotech. C'est en rapport avec une coop�ration entre Biotech et NExT.",101)
		end
	NODE(101)
		GIVEMONEY(2000)
		SAY("Oui, je me souviens. Ces documents n'�taient donc pas d�j� livr�s? Alors il �tait temps! Je pense que �a m�rite une petite prime. Que diriez-vous de 2.000 cr�dits?")
		
		ANSWER("Merci, ce fut un plaisir.",102)
	NODE(102)
		SAY("On a toujours du travail � NExT. Nous avons acquis notre r�putation apr�s des ann�es de travail forcen�. Depuis la fondation de NExT en 2723, et jusqu'� aujourd'hui. Mais en dehors de soigner notre r�putation, nous faisons �videmment de grandes choses.")
		
		ANSWER("CONTINUER",103)
	NODE(103)
		SAY("Je sugg�re que vous repassiez nous voir lorsque vous aurez apport� des preuves suppl�mentaires de votre loyaut�. Nous pourrons alors envisager de vous donner d'autres missions. Au revoir, runner.")
		EPICRUNFINISHED(3,0)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		

end