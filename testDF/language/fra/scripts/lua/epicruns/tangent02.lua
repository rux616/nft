--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Matt
--1,D,Torben
--2,D,Mazzaro

--Startnode, Person
--0
--50,Matt Tronstett
--100,Torben
--150,Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("On a de bonnes nouvelles. CityAdmin a d�cid� de commander une nouvelle arme � rayons. Naturellement, nous sommes en premi�re ligne pour cette commande.")

		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("N�anmoins, nous ne comprenons pas pourquoi Tangent et BioTech ont �t� choisies toutes les deux pour cette mission. C'est �vident que nous pourrions l'assurer sans aide.")

		ANSWER("CONTINUER",2)
	NODE(2)
		SAY("Le but de Tangent, c'est de cr�er des armes. Mais CityAdmin a d�cid� de faire aussi appel � BioTech pour ce projet.")

		ANSWER("Mais BioTech ne posera pas de probl�mes � Tangent. Nous avons un grand avantage dans cette partie.",3)
	NODE(3)
		SAY("C'est tout � fait exact. Tout le monde le sait. BioTech a encore d� jouer de sales tours pour avoir r�ussi � avoir une place de choix dans ce contrat.")

		ANSWER("Et quand saura-t-on qui remportera le contrat?",4)
	NODE(4)
		SAY("Prochainement, les deux compagnies vont devoir pr�senter un prototype de l'arme � rayons. Le meilleur remportera le march�. Mais je pense que la comp�tition ne sera pas franche.")

		ANSWER("CONTINUER",5)
	NODE(5)
		SAY("Si tout est d�j� pr�vu par BioTech, je pense qu'ils ont d�j� un sale coup en pr�paration.")

		ANSWER("Mais Tangent n'a pas une structure appropri�e pour traiter de telles questions?",6)
	NODE(6)
		SAY("BioTech pourra toujours essayer de nous jouer des tours. Ils r�colteront ce qu'ils m�ritent. Pour ce projet, Damion Jordan lui-m�me a exprim� le souhait de rappeler un expert dans les armes � rayons, aujourd'hui parti � la retraite.")

		ANSWER("CONTINUER",7)
	NODE(7)
		SAY("Le probl�me, c'est que notre expert a pris sa retraite depuis maintenant six mois. Comme vous nous avez montr� votre loyaut� lors de votre premier run, je pense que vous devriez tenter de le convaincre de revenir travailler pour nous.")

		ANSWER("CONTINUER",8)
	NODE(8)
		SAY("Vous allez lui pr�senter une offre qu'il ne pourra pas refuser. L'offre de r�int�grer l'�quipe. Vous allez devoir n�gocier serr� sur cette affaire.")

		ANSWER("Je vais faire de mon mieux. O� se trouve cet expert?",9)
		ANSWER("J'ai bien peut de ne pas �tre pr�t pour cette mission.",11)
	NODE(9)
		SAY("Il s'appelle Matt Tronstett. Selon nos derni�res informations, il vit � Point Red, dans les Terres Br�l�es. Secteur B 07, pr�cis�ment.")

		ANSWER("CONTINUER",10)
	NODE(10)
		SAY("Si vous r�ussissez � le convaincre, allez ensuite voir Mazzaro pour lui faire votre rapport.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(12)
		ENDDIALOG()
		
	NODE(11)
		SAY("C'est certainement une mission importante, mais vous n'avez pas l'obligation de la faire.")
		ENDDIALOG()
	NODE(12)
		SAY("Vous avez parl� � Tronstett? Il vit � Point Red, dans les Terres Br�l�es.")
		ENDDIALOG()


-----------------------------------------------------
--Matt Tronstett

	NODE(50)
		SAY("Non, j'ach�te rien! Allez du vent, sale runner!")

		ANSWER("Hum... je viens de la part de Tangent. Vous �tes M. Tronstett?",51)
	NODE(51)
		SAY("Tangent? Oui, je me rappelle bien d'eux. Navr� de vous avoir cri� apr�s. En g�n�ral, quand quelqu'un vient me voir ici, c'est pour me vendre quelque chose, et si je refuse il cherche � me tuer. Vous pouvez vous douter que �a ne m'a pas rendu tr�s amical.")

		ANSWER("Pour �tre honn�te, je vais vous proposer exactement l'inverse de ce dont vous venez de parler. Tangent m'envoie parce qu'on a besoin de vos comp�tences exceptionnelles pour travailler sur un projet.",52)
	NODE(52)
		SAY("Ah? On essaye la flatterie maintenant?")

		ANSWER("Cette chance ne se reproduira pas, M. Tronstett. Tangent est une des compagnies les plus puissantes de Neocron. Qu'est-ce que vous en dites?",53)
	NODE(53)
		SAY("Mais qu'est-ce que vous en savez? J'ai travaill� pendant des ann�es jusqu'� m'en faire saigner les doigts. J'avais de grands projets. J'ai pass� chaque minute de ma vie � travailler pour la compagnie.")

		ANSWER("CONTINUER",54)
	NODE(54)
		SAY("J'ai �t� l'un des plus fervents employ�s de Tangent. Les armes qu'on produisait servaient � donner la libert� au peuple. La libert� et la s�curit� dans les Terres Br�l�es.")

		ANSWER("CONTINUER",55)
	NODE(55)
		SAY("Personne n'allait plus �tre vuln�rable. Personne n'allait plus devoir se cacher dans un trou puant. Mais c'�tait des conneries! Un jour j'ai compris, j'ai d�couvert la v�rit�. Et c'est pour �a que je suis parti.")

		ANSWER("Qu'est-ce que vous avez d�couvert?",56)
	NODE(56)
		SAY("Tangent se fiche des gens. Elle s'en fiche compl�tement. Tangent est une grosse machine avec des moteurs �normes qui broient tout ce qu'ils trouvent sur leur passage. C'est devenu un monstre.")

		ANSWER("CONTINUER",57)
	NODE(57)
		SAY("Parfois, je pense que cette compagnie a d�veloppe une volont� propre. M�me Damion Jordan ne la contr�le pas vraiment. M�me si Damion disparaissait, une autre t�te pousserait, et Tangent continuerait toute seule.")

		ANSWER("CONTINUER",58)
	NODE(58)
		SAY("C'est comme une hydre. Vous coupez une t�te, il y en a deux qui repoussent. On ne peut rien y faire.")

		ANSWER("C'est �vident pour moi que vous n'avez pas eu une bonne exp�rience avec tangent. Mais je vous assure que �a ne se reproduira pas.",59)
	NODE(59)
		SAY("Vous �tes quelqu'un de tr�s na�f, runner. Tout ce qui m'int�resse, c'est de voir mon vieil ami Torben de temps en temps, on va dans ce petit restaurant de la station Pepper Park, et on parle du bon vieux temps. Torben et moi, on en a v�cu des vertes et des pas m�res, et il m'a toujours beaucoup aid�.")

		ANSWER("Et vous �couteriez votre ami s'il vous disait de travailler � nouveau chez Tangent? Comme �a, je le persuade, et ensuite il vous persuade. Il saura ce qui est bon pour vous.",60)
	NODE(60)
		SAY("Quoi? Qu'est-ce que vous dites?")

		ANSWER("Rien, je parlais tout haut. Au revoir, M. Tronstett.",61)
	NODE(61)
		SAY("Alors au revoir, runner.")
		SETNEXTDIALOGSTATE(62)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(62)
		SAY("C'est pas la peine de revenir, je ne suis pas du tout int�ress�. je vais plut�t aller voir mon vieil ami Torben.")
		ENDDIALOG()
		

-----------------------------------------------------
--Torben

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On se conna�t? Laissez-moi tranquille.")
			ENDDIALOG()
		else
			SAY("Salut runner. Un probl�me?")

			ANSWER("On m'a dit que vous connaissez un certain Tronstett. Matt Tonstett.",101)
		end
	NODE(101)
		SAY("Si je le connais! C'est un de mes meilleurs amis! Je l'ai rencontr� au cours d'une mission concernant � la fois NEXT et Tangent. Moi, je travaille pour NEXT. Tronstett est quelqu'un de tr�s professionnel et de tr�s fiable.")

		ANSWER("Je n'en doute pas. Est-ce que vous n'aimeriez pas le voir revenir � Tangent? J'ai entendu beaucoup de bonnes choses � son sujet. Ce serait une grande perte de le laisser dans les Terres Br�l�es, compl�tement inutile. Vous ne croyez pas?",102)
	NODE(102)
		SAY("En ce moment, il n'est vraiment pas motiv�. Il a perdu pas mal d'illusions au moment o� il a quitt� Tangent. Il avait compris qu'il ne pourrait rien changer tout seul. Et je ne vais pas lui conseiller de faire quelque chose qu'il ne veut pas faire.")

		ANSWER("Evidemment, qu'est-ce que vous vous imaginez? Je pense qu'un poste � Tangent serait une s�curit� pour lui, et il serait bien pay�. Et il pourrait faire ce qu'il aime le mieux : de la recherche.",103)
	NODE(103)
		SAY("Vous seriez pas en train de me demander de le convaincre, par hasard?")

		ANSWER("C'est exactement ce que l'essaye de faire. Vous ne comprenez pas que c'est ce qui serait le mieux pour lui? Il ne va pas en rajeunissant, et les Terres Br�l�es, �a vous ruine la sant� rapidement. A Tangent, il serait en s�curit�.",104)
	NODE(104)
		SAY("Non, vraiment, Matt devrait faire ce qu'il pense �tre le mieux pour lui. Si vous me proposez ce job, moi j'accepte. Mais pas comme �a, merci.")

		ANSWER("Et si je vous offrais une petite somme pour vous aider � vous d�cider? Pour que vous puissiez convaincre votre ami?",105)
	NODE(105)
		SAY("Vous me prenez pour qui? Je vais pas vendre mon meilleur ami!")

		ANSWER("Qu'est-ce que vous dites de 5.000 cr�dits? Je pourrais en parler � un des directeurs des op�rations de Tangent.",106)
	NODE(106)
		SAY("5000?? Euh... Je pense que �a ne lui fera pas de mal d'avoir quelque chose pour occuper ses vieux jours. Je vais lui expliquer �a, mais n'oubliez pas mon petit extra. Sinon, je me rappellerai de lui expliquer exactement le contraire.")
		SETNEXTDIALOGSTATE(107)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

	NODE(107)
		SAY("J'ai d�j� accept� votre offre, qu'est-ce que vous voulez encore? Mon �me? Allez � votre compagnie, et assurez-vous que j'aie bien mon fric.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mazzaro

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Oui? Ne revenez me voir que quand vous avez termin� votre mission.")
			ENDDIALOG()	
		else
			SAY("Je me souviens presque de votre nom, c'est bon signe. Vous avez r�ussi � convaincre Tronstett?")

			ANSWER("Ca n'a pas �t� facile. J'ai d� convaincre un certain Torben de le faire � ma place. Mais j'ai d� lui promettre 5.000 cr�dits pour son aide.",151)
		end
	NODE(151)
		SAY("Vous lui avec promis de l'argent de Tangent? Sans demander l'autorisation? Vous avez pris des risques... Mais si Matt Tronstett revient r�ellement parmi nous, alors c'est de l'argent bien plac�.")

		ANSWER("CONTINUER",152)
	NODE(152)
		SAY("Si c'est le cas, alors nous allons payer. Vous �tes certain que �a va marcher?")

		ANSWER("Tout devrait bien se passer. Il m'a dit qu'il faisait confiance � son ami.",153)
	NODE(153)
		SAY("Bien jou�. Vous avez plus d'un tour dans votre sac, on dira�t. Tangent vient de vous verser 2.000 cr�dits sur votre compte. Avec l'aide de Tronstett, on d�veloppera cette arme encore plus rapidement.")

		ANSWER("CONTINUER",154)
	NODE(154)
		SAY("Restez joignable et gardez la forme, on aura certainement besoin de vous prochainement.")
		EPICRUNFINISHED(4,1)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end