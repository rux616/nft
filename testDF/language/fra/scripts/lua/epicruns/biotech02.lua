--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Hontoka
--
--1,D,McMillan
--


--Startnode, Person
--0 Human Resource
--50 Hontoka
--100 Black Lily
--150 McMillan

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("On m'a parl� de vos tentatives pour vous faire appr�cier de BioTech, vous avez de l'ambition! Bon, pour l'instant �a se passe bien. On m'a demand� de vous confier quelque chose. Vous vous souvenez sans doute des rumeurs qui circulaient dans Neocron au sujet de Biotech...?")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Et bien cette fois-ci elles sont r�apparues, mais dans le r�seau. Et ce sont des accusations graves qui ciblent deux hauts responsables de BioTech. On ne conna�t pas la source de ces rumeurs, et c'est pour cela qu'on recherche des informations.")
		
		ANSWER("Je comprends. Et c'est � moi de trouver, c'est bien �a?",2)
		ANSWER("Si c'est une mission que vous me proposez, alors d�sol� mais je dois refuser.",5)
	NODE(2)
		SAY("Oui, mais vous ne serez pas seul. Nous avons d�j� envoy� plusieurs runners sur l'affaire. Et vous aurez exactement la m�me mission qu'eux. Ces informations ne sont pas faciles � trouver, c'est pour cela qu'il va vous falloir utiliser des m�thodes peu orthodoxes.")
		
		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("On a un contact chez Tsunami qui a accept� de nous communiquer quelques informations. Mais on n'est pas certain que Tsunami sache r�ellement quelque chose. Si vous mettez les mains sur quelque chose d'int�ressant, faites votre rapport � McMillan. C'est un de nos directeurs d'op�rations � BioTech, et il est au courant de tout.")
		
		ANSWER("OK, j'ai bien compris. Et o� est-ce que je trouve ce contact de Tsunami?",4)
	NODE(4)
		SAY("Il est dans le secteur industriel 02. Mais faites attention, c'est plut�t dangereux. Votre contact s'appelle Hontoka.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()		

	NODE(5)
		SAY("Reconsid�rez votre d�cision. Vous pouvez toujours revenir pour cette mission.")
		ENDDIALOG()
		
	NODE(6)
		SAY("Allez prendre contact avec Hontoka, dans le secteur industriel 02.")
		ENDDIALOG()

-----------------------------------------------------
--Hontoka

	NODE(50)
		SAY("Salut Runner. Quoi de neuf?")
		
		ANSWER("Bonne journ�e � vous. Je viens de la part de BioTech. Dites, c'est pas joyeux ici comme d�cor...",51)

	NODE(51)
		SAY("C'est pas votre style, hein? Ben figurez-vous qu'il y en a qui vivent ici. Moi j'ai de la chance, je ne fais que passer. Certains n'ont pas autant de chance.")
		
		ANSWER("Revenons � nos moutons, voulez-vous? Vous savez pourquoi je suis l�?",52)
	NODE(52)
		SAY("Oui. BioTech a peur de certains fant�mes. Mais ces fant�mes ne sont que le miroir de la r�alit�. Ils montrent ce qu'est r�ellement BioTech.")
		
		ANSWER("J'en doute fort. BioTech est une compagnie respectable, elle n'a rien � cacher.",53)

	NODE(53)
		SAY("Seul un imb�cile parle de ce qu'il n'a pas vu. Qui est-on pour dire que ces histoires sont vraies ou fausses? Je ne vais pas vous juger l�-dessus, je suis dans le m�me camp que vous. Mais ces histoires ne sont pas bonnes pour nos affaires...")
		
		ANSWER("Fort bien, alors vous pouvez me dire ce que vous savez au sujet de ces rumeurs.",54)
	NODE(54)
		SAY("Je sais que certaines de ces histoires sont de la fiction, invent�es pour semer le trouble. Mais je sais aussi lire entre les lignes.")
		
		ANSWER("CONTINUER",55)

	NODE(55)
		SAY("je veux dire, il court des bruits au sujet de contacts entre BioTech et le monde souterrain, et m�me d'exp�rience secr�tes sur des humains. Ca n'est pas vraiment de la fiction.")
		
		ANSWER("Vous rigolez! BioTech ne ferait jamais d'exp�riences de ce type!",56)
	NODE(56)
		SAY("Non, BioTech ne ferait jamais �a, c'est vrai. Une telle chose ne peut �tre effectu�e que par un employ� de BioTech. La plupart de ces personnes ont leur propre motivation. Le pouvoir, l'argent, la peur... Mais jamais la compagnie.")
		
		ANSWER("CONTINUER",57)

	NODE(57)
		SAY("Ce sont toujours les individus isol�s qui agissent comme �a. Nous avons des contacts avec Tsunami, parfois m�me des op�rations concert�es. Evidemment, rien d'officiel. Tout comme ces exp�riences sur les humains. Certaines sont m�me presque l�gales, selon les lois existantes.")
		
		ANSWER("Vous trouverez toujours des gens qui commettent ce genre d'actes monstrueux. On va arr�ter l� cette conversation. Je veux savoir s'il y a des indices sur l'origine de ces rumeurs.",58)
	NODE(58)
		SAY("Vous, vous �tes du genre � fixer le but que vous avez sans faire attention aux petits d�tails... Comment est-ce que vous pouvez arriver au but si vous n'avez pas une vue d'ensemble? Non, je n'en sais pas plus sur la question. Mais r�fl�chissez un peu : qui aurait int�r�t � faire quelque chose comme �a? Qui voudrait porter atteinte � BioTech?")
		
		ANSWER("Bonne question. Pour l'instant je n'en sais rien, mais je trouverai.",59)

	NODE(59)
		SAY("Bonne attitude. Un conseil : allez voir Black Lily, dans Pepper Park 02. Elle est tr�s au courant de ces rumeurs. Elle pourra vous en apprendre plus que moi. Allez-y.")
		SETNEXTDIALOGSTATE(60)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(60)
		SAY("D�sol�, mais j'ai pas grand chose de plus � vous apprendre.")
		ENDDIALOG()
		

-----------------------------------------------------
--Black Lily

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Eh, qu'est-ce qui se passe? Vous avez besoin de sommeil, vous. Et puis vous avez d�j� un autre plan en t�te, j'imagine?")
			ENDDIALOG()
		else
			SAY("Je sais que je pourrais vous donner tout ce que vous voulez, et peut-�tre m�me plus encore.")
		
			ANSWER("Non merci, pas maintenant. J'ai parl� avec Hontoka, il m'a dit de vous demander ce que vous saviez au sujet de certaines rumeurs.",101)
		end
	NODE(101)
		SAY("Ah, les rumeurs... C'est fascinant, les rumeurs, vous ne trouvez pas?")
		
		ANSWER("A chacun de se faire son id�e sur la question. Mais vous, est-ce que vous savez qui les diffuse sur le r�seau, ces rumeur?",102)
	NODE(102)
		SAY("Ces accusations, vous voulez dire? Oui, je sais peut-�tre quelque chose. Toutes ces histoires, c'est tr�s distrayant. Je pourrais passer des jours entiers � les t�l�charger par centaines.")
		
		ANSWER("Est-ce que �a veut dire que vous ne me dites pas tout? Vous attendez quelque chose en retour, ou bien vous ne voulez tout simplement pas m'en parler?",103)
	NODE(103)
		SAY("Ne montez pas sur vos grands chevaux comme �a... Evidemment que je sais quelque chose. C'est difficile de lancer autant de rumeurs sur le r�seau sans laisser de traces. Mais vous avez tout de m�me devin� que j'aimerais bien une petite faveur de votre part.")
		
		ANSWER("Si �a n'est pas excessif, alors je suis pr�t � vous aider en �change de cette information.",104)
	NODE(104)
		SAY("Je suis certaine que nous allons bien nous entendre tous les deux. ce que je voudrais, c'est que vous me rameniez une drogue tr�s sp�ciale. Vous savez, c'est pas facile tous les jours, un travail comme le mien. Parfois on a vraiment envie de se rouler en boule dans un coin et d'attendre la mort.")
		
		ANSWER("CONTINUER",105)
	NODE(105)
		SAY("Mais les drogues, �a aide � faire passer les moments difficiles... pendant un certain temps du moins. Ca efface les impressions. Par exemple, l� j'imagine que vous pensez � moi... Tout le monde a les m�mes id�es en t�te, de toute fa�on.")
		
		ANSWER("Votre souffrance, c'est injuste. Mais c'est la vie elle-m�me qui est injuste... Je vais aller vous chercher �a.",106)
		
	NODE(106)
		TAKEITEM(722)
		if (result~=0) then
			TAKEITEM(722)
			if (result~=0) then
				TAKEITEM(722)
				if (result~=0) then
					-- Player has already the drugs with him (no need to let him open dialog again
					GIVEITEM(9201)
					SAY("Merci, voil� le datacube. Je pense que c'est ce que votre compagnie recherche. Un des directeurs, peut-�tre?")
					SETNEXTDIALOGSTATE(108)
					ENDDIALOG()
				else
					GIVEITEM(722)
					GIVEITEM(722)
					SAY("Merci, ramenez-moi trois doses de Paratemol Forte. Vous savez, les petites pilules rouges... En �change, je vous donnerai un datacube qui contient les informations que vous recherchez.")
				end
			else
				GIVEITEM(722)
				SAY("Merci, ramenez-moi trois doses de Paratemol Forte. Vous savez, les petites pilules rouges... En �change, je vous donnerai un datacube qui contient les informations que vous recherchez.")
			end
		end
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()

--Spieler organisiert Forte Drogen Paratemol forte 722		

	NODE(107)
		TAKEITEM(722)
		if (result==0) then
			SAY("Allez, j'en ai vraiment besoin...")
			ENDDIALOG()
		else
			TAKEITEM(722)
			if (result==0) then
				GIVEITEM(722)
				SAY("Vous ne savez pas compter jusqu'� trois?")
				ENDDIALOG()
			else 
				TAKEITEM(722)
				if(result==0)then
					GIVEITEM(722)
					GIVEITEM(722)
					SAY("Vous ne savez pas compter jusqu'� trois?")
					ENDDIALOG()
				else
					GIVEITEM(9201)
					SAY("Vous ne savez pas compter jusqu'� trois?")
					SETNEXTDIALOGSTATE(108)
					ENDDIALOG()
					
				end
			end
		end

	NODE(108)
		SAY("Je vous ai d�j� dit tout ce que je savais.")
		ENDDIALOG()
		


-----------------------------------------------------
--McMillan

	NODE(150)
		TAKEITEM(9201)
		if(result==0)then
			SAY("Pour l'instant je n'ai pas de temps � vous consacrer. Adressez-vous � un autre employ�.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Ahh, une nouvelle t�te. C'est toujours un plaisir de voir un runner ambitieux dans nos rangs. J'esp�re que tout se passe bien jusqu'ici?")
		
			ANSWER("Evidemment, tout fonctionne parfaitement, tout est tr�s professionnel. Mais...",151)
		end
	NODE(151)
		SAY("Oui, je savais que vous seriez content. Personne n'a jamais regrett� d'entrer dans la compagnie. Nous sommes la meilleure compagnie de Neocron. On m'a inform� de toutes ces horribles rumeurs sur le r�seau...")
		
		ANSWER("CONTINUER",152)
	NODE(152)
		SAY("Ce sont des gens cruels qui cr�ent ces rumeurs. Ces gens ne se rendent vraiment pas compte qu'ils nous font du mal, � nous tous.")
		
		ANSWER("Je crois qu'au contraire ils savent tr�s bien ce qu'ils font. Ils veulent visiblement faire du mal � BioTech.",153)
	NODE(153)
		SAY("Je sens que ce sont encore ces minables, ces Fils de l'Anarchie! Ou bien cette bande de bons � rien, les Gardiens du Cr�puscule. Je ne peux pas les voir en peinture, ni les uns ni les autres. Ca fait une �ternit� que quelqu'un aurait d� s'occuper de leur cas. Vous avez trouv� quelque chose?")
		
		ANSWER("Oui. On m'a donn� un datacube qui contient des �l�ments int�ressants. Mais je n'ai pas encore eu le temps d'�tudier �a de pr�s.",154)
	NODE(154)
		SAY("Alors vous avez vraiment trouv� quelque chose? Tr�s bien, faites-moi voir �a. Je vais faire analyser toutes ces donn�es. Bon travail! O� est-ce que vous avez trouv� ces informations?")
		
		ANSWER("Je... eh bien j'ai fait appel � quelques contact de Pepper Park et des environs.",155)
	NODE(155)
		SAY("Pepper Park? Ce trou � rats? Bon, nous allons voir si ces informations valent la peine. Moi, je pense que tout ce qui est sorti d'ici, c'est des emmerdes et de la violence, c'est tout. Vraiment, je vous conseille de ne plus aller dans ce quartier. Vous allez vous attirer des ennuis.")
		
		ANSWER("Je m'en souviendrai.",156)
	NODE(156)
		GIVEMONEY(5000)
		SETNEXTDIALOGSTATE(157)
		SAY("A la bonne heure! Vous avez fait du bon travail, BioTech vous r�compense avec 5000 Cr�dits. Cette somme vient d'�tre transf�r�e sur votre compte. J'aurai peut-�tre une autre mission pour vous une fois qu'on en aurai termin� avec l'analyse de ces informations. Passez une bonne journ�e, runner!")
		EPICRUNFINISHED(5,1)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
NODE(157)
		SAY("Go away")
		ENDDIALOG()

end