--new
--NEXT
function DIALOG()
NODE(0)
--CANDOEPICRUN(3, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(3, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(3,0)
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Je suis navr�, mais vous ne faites pas partie de notre faction. Alors ne me faites pas perdre mon temps. A moins que vous songiez � nous rejoindre?!")
			
			ANSWER("C'est pour cela que je viens. Je voudrais rejoindre votre faction",301)
			ANSWER("Ca ne m'int�resse pas du tout. Au revoir.",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(3,0)
			if(result==-2)then
				SAY("Maintenant que vous avez fait tout ce que vous pouviez pour nous, la seule mani�re de nous aider est de fonder votre propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(3,0)
				if(result==-5)then
					SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(3,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(3,1)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(3,2)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(3,3)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(3,4)
						if(result==-5)then
							SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(3,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(3,5)
				if(result==-5)then
					SAY("Vous n'avez pas encore les connaissances n�cessaires pour remplir votre mission. Revenez quand vous en savez plus. (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
						CANDOEPICRUN(3,5)
				        if(result==-4)then
						SAY("Maintenant que vous avez fait tout ce que vous pouviez pour nous, la seule mani�re de nous aider est de fonder votre propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("Ravi de vous revoir. Mason m'a demand� de vous parler de ses plans au sujet de ces actions incroyables de ProtoPharm. Il semble que tout le monde soit au courant maintenant. Mais il y a un moyen de revenir � la normale.")

		ANSWER("Int�ressant. Est-ce que �a marchera, au moins?",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("NEXT vous propose de participer aux tests de conduite d'un de nos prototypes. Mason vous en a peut-�tre d�j� parl�. Vous pouvez aller prendre les cl�s aupr�s du technicien Benji � la piste de course du d�sert, secteur G 11. Votre t�che sera de tester le comportement du v�hicule dans le d�sert environnant.")
		STARTMISSION(3550)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("Content de vous voir. D�p�chez-vous, Mason veut vous parler. Il s'est pass� quelque chose d'horrible.")
		STARTMISSION(3549)
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Ahh vous revoil�! J'ai bien peur que nous n'ayons rien encore � vous proposer. Mais je voulais vous demander d'aller voir le vieux Torben � la station Pepper Park. Il en veut pas me parler, mais je sais qu'il va avoir des probl�mes s'il ne reprend pas le travail rapidement.")
		
		ANSWER("CONTINUER",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Voil� une nouvelle chance pour vous de faire quelque chose pour NExT. C'est assez d�licat � expliquer, parce que l'opinion de la population sur ce sujet varie grandement. De nombreuses id�es sur les Anges D�chus sont construites sur des pr�jug�s et des rumeurs, rarement sur des faits qui les accusent r�ellement.")
		
		ANSWER("CONTINUER",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Bienvenue chez NExT, c'est toujours un grand moment quand un nouvel employ� nous rejoint. J'esp�re que votre appartement vous pla�t? Comme vous le savez probablement d�j�, NExT op�re dans le secteur des transports. Presque tous les v�hicules que vous voyez ici viennent des usines d'assemblage de NExT.")
		
		ANSWER("CONTINUER",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 1
	NODE(11)
		SAY("Des hoverbikes aux rames de m�tro en passant par les vaisseaux spatiaux, tout �a vient de chez NEXT. Mais pour rester en haut de la hi�rarchie, nous devons avoir de bonnes relations avec les autres compagnies. Voulez-vous nous aider, ou bien avez-vous encore besoin de temps pour vous adapter � votre nouvelle maison?")
		
		ANSWER("Je pense qu'on va pouvoir commencer.",12)
		ANSWER("Actuellement, je dirais qu'il me faut encore un peu de temps.",19)
	NODE(12)
		SAY("Excellent. On a besoin de gens comme vous. Actuellement, vous �tes assign� � un grand projet entre nous et Biotech. Evidemment, BioTech n'est pas la seule compagnie avec laquelle nous entretenons des relations. On compte �galement des alliances avec Tangent et CityAdmin.")
		
		ANSWER("CONTINUER",13)
	NODE(13)
		SAY("Vous vous dites certainement que CityAdmin est bien plus qu'une compagnie. Mais quoiqu'il en soit, le projet sur lequel vous allez travailler vise � la r�ouverture de la porte des �toiles. Vers Irata III, pour �tre pr�cis. Le directeur de NEXT, Craig Diggers, est d�termin� � faire revivre ce grand projet.")
		
		ANSWER("Est-ce qu'il a une raison sp�ciale d'�tre si d�termin�?",14)
	NODE(14)
		SAY("M. Diggers a subi un terrible accident il y a longtemps. Il r�vait de participer � la grande immigration vers Irata III en se rendant au vaisseau, qui lui a fait rater le d�part. Depuis, il pense sans arr�t � Irata III.")
		
		ANSWER("CONTINUER",15)
	NODE(15)
		SAY("On lui a greff� des jambes artificielles, et vous avez d�j� devin� par qui : Biotech! C'est peut-�tre la raison pour laquelle ce nouveau programme spatial est d�velopp� en partenariat avec eux. M. Diggers doit sentir qu'il a une dette envers Biotech.")
		
		ANSWER("Un programme spatial avec BioTech? Je pensais que Biotech s'occupait d'implants et d'organes artificiels...",16)
	NODE(16)
		SAY("Oui, c'est ce que tout le monde imagine. Mais en v�rit�, BioTech s'occupe de nombreux autres secteurs. Le meilleur exemple, c'est Tangent. Tangent est un ancien d�partement de BioTech qui est devenu trop important pour rester dans cet �tat, et qui s'est transform� en entreprise � part enti�re. Mais revenons � notre propos.")
		
		ANSWER("CONTINUER",17)
	NODE(17)
		GIVEITEM(9100)
		SAY("Ces documents sont des copies de contrats d�j� sign�s avec BioTech. Ils les attendent certainement. En livrant ces contrats, vous nous prouverez que vous voulez travailler pour nous et que vous voulez mener vos projets jusqu'� leur terme. Et ce pourra �tre le d�but d'une grande carri�re. Ne vous rel�chez pas.")
		
		ANSWER("Bien, je prends cette mission O� est-ce que je dois aller?",18)
	NODE(18)
		SAY("Vous devrez vous adresser directement au directeur des op�rations de BioTech, dans leur QG. Vous devriez le trouver sans probl�me. Et avant que j'oublie : allez voir M. Mason une fois que vous avez livr� les documents. C'est le vice-pr�sident de NExT, il se trouve dans la tour. Bonne chance.")
		STARTMISSION(3546)
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(19)
		SAY("Prenez votre temps, revenez quand vous vous sentez pr�t.")
		ENDDIALOG()
		
	NODE(20)
		SAY("Vous avez d�j� livr� les documents au QG de Biotech?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 2
	NODE(51)
		SAY("Les Anges D�chus ne sont pas � proprement parler dans le carnet de bal de CityAdmin, si vous voyez ce que je veux dire. Et c'est dommage, parce qu'ils poss�dent un savoir-faire qui pourrait b�n�ficier � beaucoup plus de gens qu'avec la situation actuelle. Mais NExT pense diff�remment : nous �valuons le potentiel et les actions de cette organisations. Nous ne faisons pas attention aux rumeurs et aux pr�jug�s. Je veux dire par l� que pour nous, les Anges D�chus sont une chance.")
		
		ANSWER("Oui, mais o� voulez-vous en venir? Y a-t-il des liens entre NExT et les Anges D�chus?",52)

	NODE(52)
		SAY("Oui, c'est exactement l� o� je veux en venir. Officiellement, nous n'avons pas de liens avec eux. Mais en d�pit de l'opinion g�n�rale sur les Anges D�chus, nous n'avons pas l'intention de gaspiller des fortunes pour rechercher des proc�d�s qui existent d�j� chez eux. Mais NExT a �t� tr�s prudente dans ces relations. Si jamais on venait � savoir que nous avions des relations avec eux, notre r�putation en serait plus que ternie.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("NEXT est consciente des risques qu'elle prend, mais elle tient � maintenir un minimum de contacts avec les Anges D�chus. On n'a que r�cemment organis� un �change, mais nous cherchons encore la personne en laquelle nous pouvons avoir confiance pour cette mission d�licate.")
		
		ANSWER("Et j'en d�duis que vous avez trouv�? C'est moi dont vous parlez?",54)
		ANSWER("Si c'est � moi que vous pensez, je crains de ne pas avoir le temps maintenant.",58)

	NODE(54)
		SAY("Vous �tes tr�s perspicace. Je vois une grande carri�re pour vous. Donc, vous savez probablement d�j� o� se trouvent les Anges D�chus?")
		
		ANSWER("A Tech Haven, si j'ai bonne m�moire.",55)
	NODE(55)
		SAY("Exact. Certains consid�rent cette ville comme un paradis technologique. Pourquoi? Vous vous en rendrez compte par vous-m�me. Vous trouverez cette ville dans les Terres Br�l�es, et je vous assure que son histoire est tr�s int�ressante. Mais je ne vais pas vous retarder plus longtemps avec mes histoires. NExT veut que vous rencontriez un certain Elias, qui travaille pour les Anges D�chus. Il devrait vous attendre � l'une des sorties de Tech Haven.")
		
		ANSWER("CONTINUER",56)

	NODE(56)
		SAY("On nous a dit qu'il avait l'autorisation de parler pour les Anges D�chus. Ecoutez bien ce qu'il a � vous dire. Il vous donnera aussi une puce de contr�le que vous devrez ensuite rapporter � M. Mason. Vous vous �tes d�j� rencontr�s, il me semble.")
		
		ANSWER("En effet. Je vais y aller.",57)
	NODE(57)
		SAY("Bonne chance, et faites attention dans les Terres Br�l�es. Ca peut �tre dangereux.")
		STARTMISSION(3547)
		SETNEXTDIALOGSTATE(9)
		
		ENDDIALOG()
		

	NODE(58)
		SAY("Ca valait la peine d'essayer. Revenez quand vous vous sentez � la hauteur.")
		ENDDIALOG()
		
	NODE(59)
		SAY("Vous avez d�j� parl� � Elias, � Tech Haven?")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 3
	NODE(101)
		SAY("Apr�s tout, la compagnie n'est pas une nourrice. NExT ne peut pas se permettre de payer des m�caniciens qui ne font pas leur travail. C'est pour �a que je vous demande d'aller voir s'il n'a pas besoin d'aide. Il a appartenu � l'�quipe qui a construit ce m�tro, vous savez. C'est un pionnier en la mati�re.")
		
		ANSWER("D'accord, je vais voir �a.",102)
		ANSWER("Pas pour l'instant. D�sol�.",103)
	NODE(102)
		SAY("Merci. Vous devriez le trouver au Garriots Diner de Pepper Park.")
		STARTMISSION(3548)
		SETNEXTDIALOGSTATE(4)
		
		ENDDIALOG()
		
	NODE(103)
		SAY("Vous changerez peut-�tre d'avis plus tard.")
		ENDDIALOG()
		
	NODE(104)
		SAY("Vous pourriez aller aider Torben? Vous devriez le trouver dans la station Pepper Park.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 4
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 5

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--NEXT 6
	NODE(251)
		SAY("Malheureusement, je ne connais pas tous les d�tails du plan. Je sais qu'un contact des Anges D�chus va nous donner un coup de main. Un certain Elias.")

		ANSWER("Elias? Oui, je le connais, mais il est un peu sp�cial. Mais on il aura certainement des choses int�ressantes � m'apprendre.",252)
	NODE(252)
		SAY("Le plan va commencer bient�t, et on a besoin de vous et d'Elias. Je en sais pas pourquoi au juste. Bonne chance, on compte sur vous. Apr�s tout, je n'ai pas envie de voir nos bureaux d�plac�s dans les Terres Br�l�es...")
		STARTMISSION(3627)
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis quelqu'un de tr�s occup�. Ne me faites pas perdre mon temps.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(3)
		if(result>49)then
			SAY("Ravi de l'apprendre. Selon les donn�es que j'ai ici, votre statut est tout ce qu'il y a de respectable. Tr�s bien, il vous en co�tera 300.000 cr�dits.")
	
			ANSWER("Eh bien, �a n'est pas donn�!",302)
		else
			SAY("Vous feriez mieux de vous en aller, on n'a pas besoin de gens de votre esp�ce chez nous.")
		end
	NODE(302)
		SAY("Si vous n'�tes pas pr�t � d�penser cet argent, on n'a aucune raison de croire que vous voulez vraiment entrer chez nous. Si vous payez, ce sera un signe de d�vouement envers notre cause.")

		ANSWER("Tr�s bien, je vais payer.",303)
		ANSWER("Laissez tomber. Je ne vais pas d�penser tant d'argent pour une futilit�.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Quel dommage que vous n'ayez pas cet argent, ne trouvez-vous pas?")
			ENDDIALOG()
		else
			CHANGEFACTION(3)
			SAY("Bienvenue chez NEXT.")
			ENDDIALOG()
		end

end