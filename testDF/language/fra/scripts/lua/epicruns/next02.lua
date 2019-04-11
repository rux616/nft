--new
function DIALOG()

--Trigger
--Triggernumber,Type,Person

--0,D,Mason



--Startnode, Person
--0 Human Resource
--50 Elias
--100 Mason

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Voil� une nouvelle chance pour vous de faire quelque chose pour NExT. C'est assez d�licat � expliquer, parce que l'opinion de la population sur ce sujet varie grandement. De nombreuses id�es sur les Anges D�chus sont construites sur des pr�jug�s et des rumeurs, rarement sur des faits qui les accusent r�ellement.")
		
		ANSWER("CONTINUER",1)
	NODE(1)
		SAY("Les Anges D�chus ne sont pas � proprement parler dans le carnet de bal de CityAdmin, si vous voyez ce que je veux dire. Et c'est dommage, parce qu'ils poss�dent un savoir-faire qui pourrait b�n�ficier � beaucoup plus de gens qu'avec la situation actuelle. Mais NExT pense diff�remment : nous �valuons le potentiel et les actions de cette organisations. Nous ne faisons pas attention aux rumeurs et aux pr�jug�s. Je veux dire par l� que pour nous, les Anges D�chus sont une chance.")
		
		ANSWER("Oui, mais o� voulez-vous en venir? Y a-t-il des liens entre NExT et les Anges D�chus?",2)

	NODE(2)
		SAY("Oui, c'est exactement l� o� je veux en venir. Officiellement, nous n'avons pas de liens avec eux. Mais en d�pit de l'opinion g�n�rale sur les Anges D�chus, nous n'avons pas l'intention de gaspiller des fortunes pour rechercher des proc�d�s qui existent d�j� chez eux. Mais NExT a �t� tr�s prudente dans ces relations. Si jamais on venait � savoir que nous avions des relations avec eux, notre r�putation en serait plus que ternie.")
		
		ANSWER("CONTINUER",3)
	NODE(3)
		SAY("NEXT est consciente des risques qu'elle prend, mais elle tient � maintenir un minimum de contacts avec les Anges D�chus. On n'a que r�cemment organis� un �change, mais nous cherchons encore la personne en laquelle nous pouvons avoir confiance pour cette mission d�licate.")
		
		ANSWER("Et j'en d�duis que vous avez trouv�? C'est moi dont vous parlez?",4)
		ANSWER("Si c'est � moi que vous pensez, je crains de ne pas avoir le temps maintenant.",8)

	NODE(4)
		SAY("Vous �tes tr�s perspicace. Je vois une grande carri�re pour vous. Donc, vous savez probablement d�j� o� se trouvent les Anges D�chus?")
		
		ANSWER("A Tech Haven, si j'ai bonne m�moire.",5)
	NODE(5)
		SAY("Exact. Certains consid�rent cette ville comme un paradis technologique. Pourquoi? Vous vous en rendrez compte par vous-m�me. Vous trouverez cette ville dans les Terres Br�l�es, et je vous assure que son histoire est tr�s int�ressante. Mais je ne vais pas vous retarder plus longtemps avec mes histoires. NExT veut que vous rencontriez un certain Elias, qui travaille pour les Anges D�chus. Il devrait vous attendre � l'une des sorties de Tech Haven.")
		
		ANSWER("CONTINUER",6)

	NODE(6)
		SAY("On nous a dit qu'il avait l'autorisation de parler pour les Anges D�chus. Ecoutez bien ce qu'il a � vous dire. Il vous donnera aussi une puce de contr�le que vous devrez ensuite rapporter � M. Mason. Vous vous �tes d�j� rencontr�s, il me semble.")
		
		ANSWER("En effet. Je vais y aller.",7)
	NODE(7)
		SAY("Bonne chance, et faites attention dans les Terres Br�l�es. Ca peut �tre dangereux.")
		SETNEXTDIALOGSTATE(9)
		ACCEPTMISSION()
		ENDDIALOG()
		

	NODE(8)
		SAY("Ca valait la peine d'essayer. Revenez quand vous vous sentez � la hauteur.")
		ENDDIALOG()
		
	NODE(9)
		SAY("Vous avez d�j� parl� � Elias, � Tech Haven?")
		ENDDIALOG()
		



-----------------------------------------------------
--Elias

	NODE(50)
		SAY("Je m'attendais � vous voir. Au moins, ils ont pris la peine de m'informer. Attendez une seconde... Vous ne m'avez pas l'air d'un officiel de NExT...?")
		
		ANSWER("L'habit ne fait pas le moine. Je viens ici en tant que repr�sentant de NExT.",51)
	NODE(51)
		SAY("Je m'attendais � parler � un v�ritable employ� de NExT, et au lieu de �a, voil� un simple runner.")
		
		ANSWER("Si c'est ce que vous pensez, c'est votre probl�me. Mais apparemment, vous n'avez pas le choix, il va falloir me parler.",52)
	NODE(52)
		SAY("S'il le faut... J'esp�re que vous avez les connaissances suffisantes pour savoir de quoi nous allons parler?")
		
		ANSWER("Ne vous inqui�tez pas, on m'a expliqu�. Et si jamais je ne vous satisfais pas, je pense que cet �change sera retard� de quelques mois. J'y veillerai personnellement.",53)
	NODE(53)
		SAY("C'est bon, ne vous �nervez pas. Commen�ons. Que diriez-vous de la cryog�nisation? Oui, c'est par l� que nous allons commencer. Vous savez d�j� ce que c'est, j'esp�re?")
		
		ANSWER("Evidemment, c'est l'enfance de l'art. Gr�ce � �a, on peut dormir ind�finiment.",54)
	NODE(54)
		SAY("Exact. Et c'est tr�s utile pour les vaisseaux spatiaux. C'est une technologie employ�e depuis longtemps maintenant, mais nos laboratoires de Tech Haven on r�ussi � lui apporter quelques am�liorations.")
		
		ANSWER("CONTINUER",55)
	NODE(55)
		SAY("A pr�sent, notre m�thode comporte quelques avantages. Les personnes qui sortaient d'un long s�jour cryog�nique souffraient souvent d'engelures et d'autres maladies. NExT sera tr�s certainement int�ress�e par nos avanc�es en la mati�re.")
		
		ANSWER("Oui, surtout que NExT s'int�resse aux voyages spatiaux, entre autres choses. Mais je n'ai pas l'autorit� suffisante pour accepter cet �change.",56)
	NODE(56)
		SAY("Oui, c'est que je pensais. Mieux vaut attendre un peu pour rester en s�curit�. Bien, j'ai transf�r� les donn�es demand�es aux laboratoires de NExT. C'est � vous de d�cider, maintenant.")
		
		ANSWER("On m'a dit que vous aviez aussi une puce de contr�le � me remettre pour NExT. C'est exact?",57)
	NODE(57)
		SAY("En fait, c'est m�me le but principal de notre entrevue. Nous avons termin� le prototype d'une nouvelle puce de contr�le. Elle fonctionne plus efficacement, et certains probl�mes cr��s par le mod�le pr�c�dent ont �t� �limin�s. Elle devrait fonctionner parfaitement avec votre v�hicule exp�rimental. Prenez cette puce, et ne la perdez pas. La question du paiement a d�j� �t� r�gl�e. Par la m�thode habituelle, je suppose.")
		
		ANSWER("Quel genre de v�hicule exp�rimental?",58)
	NODE(58)
		GIVEITEM(9101)
		SAY("Je pense que c'est encore class� secret. Je ferais mieux de ne pas trop en dire. Bon retour chez vous.")
		
		ANSWER("Est-ce que vous pouvez m'en dire un peu plus au sujet de Tech Haven? C'est une structure impressionnante, je trouve.",59)
	NODE(59)
		SAY("*soupir* Bien. Tech Haven a �t� construite � partir de rien, pour servir les objectifs des Anges D�chus. En 2633, si mes souvenirs sont bons. C'est l'ann�e o� les Anges D�chus ont �t� cr��s par Thomas Cooper. Tech Haven poss�de plusieurs r�acteurs diff�rents, certains utilis�s par la recherche. Toute l'installation est prot�g�e par des d�fenses statiques et mobiles.")
		
		ANSWER("CONTINUER",60)
	NODE(60)
		SAY("Apr�s la construction de Tech Haven, nous n'avons pas eu de gros probl�mes d'invasion. Ce qui prouve l'efficacit� de nos d�fenses. La directrice des Anges D�chus s'appelle Sylvia Bennet, et elle est respect�e par tous les Anges D�chus. Mais il faut que je m'en aille, j'ai des choses � faire. Non, pour �tre honn�te j'en ai marre de vous parler. Il faut vous en aller, maintenant.")
		SETNEXTDIALOGSTATE(61)
		ENDDIALOG()
		
	NODE(61)
		SAY("Ecoutez, il y a beaucoup de travail ici. Vous devriez plut�t vous occuper de vos affaires. Retournez chez vous.")
		ENDDIALOG()
		

-----------------------------------------------------
--Mason

	NODE(100)
		TAKEITEM(9101)
		if(result==0)then
			SAY("On vous a demand� de me ramener une puce de contr�le. Faites ce qui vous a �t� command�.")
			ENDDIALOG()
		else
			SAY("Avez-vous la puce de contr�le?")
		
			ANSWER("Oui. Mais je dois dire que mon contact � Tech Haven �tait plut�t insupportable.",101)
		end
	NODE(101)
		SAY("On dira�t que vous avez eu affaire � Elias. Mais tant qu'ils nous rendent service comme ils le font, je ne peux pas me plaindre. Cette puce de contr�le va permettre � nos v�hicules de r�agir plus rapidement face � un danger, tout en rendant leur pilotage encore plus confortable. Moi, je pense vraiment que notre avenir est dans ces v�hicules, pas dans Irata III comme le pense M. Diggers.")
		
		ANSWER("CONTINUER",102)
	NODE(102)
		SAY("Nous avons tout ce qu'il nous faut ici. Tout ce d�lire autour d'Irata III, c'est uniquement pour moi la possibilit� pour l'humanit� de transformer un autre paradis en poubelle radioactive.")
		
		ANSWER("Mais est-ce qu'Irata III est aussi merveilleuse que tout le monde le dit?",103)
	NODE(103)
		SAY("Que je vous explique une chose. Irata III est peut-�tre le plus bel endroit de l'univers, mais moi je pense que notre avenir est ici. Non seulement je pense que l'humanit� n'a pas le droit de poser ses sales pattes sur une autre plan�te, mais en plus je crois que nous avons tout ce qu'il faut ici. Et si nous ne r�ussissons pas � survivre ici, alors ce ne sera qu'une question de temps avant qu'Irata III subisse le m�me sort. C'est tout ce que j'ai � dire.")
		
		ANSWER("Vous semblez plut�t amer...",104)
	NODE(104)
		GIVEMONEY(5000)
		SAY("Amer? De toute mani�re, c'est de l'histoire ancienne. Je n'ai pas � �tre amer. Mes yeux sont ouverts, je sais ce qu'il y a � voir. Je n'ai plus envie d'en parler... NExT aura besoin de vous bient�t, soyez-en certain. Entra�nez-vous, et revenez quand vous vous sentez pr�t. Tenez, voil� 5.000 cr�dits en r�compense.")
		EPICRUNFINISHED(3,1)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
end