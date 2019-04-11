--new
--CityMerc

--
--Trigger
--Triggernumber,Type,Person
--0,D,Eljena
--1,kill, Marcel
--2,D, Gerome
--3,D, Soldat
--
--Startnode, Person
--0, Soldat
--50, Eljena
--100, Marcel
--150, Gerome
--200, Soldat
--250,
--
--Items
--Tangent Gattling Gun, Soldat

function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("Content de vous voir. Marcel a compl�tement perdu la t�te, il veut se rebeller contre l'Oeil simplement parce qu'il a d�cid� de ne pas attaquer les Anges D�chus. Il veut diviser les Mercs, mais il ne comprend pas que cela pourrait entra�ner notre perte � tous.")

		ANSWER("Oui, j'ai entendu parler de �a.",1)
	NODE(1)
		SAY("Vous pouvez nous aider. Nous soutenons Cajun, aidez-nous � faire le m�nage. On sait que Marcel a suivi votre carri�re de pr�s. Il vous fait confiance, et personne ne peux l'approcher d'aussi pr�s que vous, je pense.")

		ANSWER("Qu'est-ce que vous attendez de moi?",2)
		ANSWER("Pas pour l'instant, j'ai autre chose � faire.",3)
	NODE(2)
		SAY("Vous allez me trouver dur, mais je pense que la bonne m�thode est de le d�fier en duel. Il ne pourra pas refuser, c'est la tradition. Le vainqueur remportera le contr�le de la section. Eljena, un Ruban Rouge de la section de Marcel, a accept� de nous aider. Elle a des informations importantes pour vous. Si vous r�ussissez, revenez me voir et je vous expliquerai la suite des �v�nements. Bonne chance, si vous �chouez les cons�quences seraient tragiques.")
		STARTMISSION()
		SETNEXTDIALOGSTATE()
		ENDDIALOG()
		
	NODE(3)
		SAY("Vous devriez choisir un autre moment pour nous abandonner. R�fl�chissez encore.")
		ENDDIALOG()

--------------------------------------------------------------------
--Eljena
--50
	NODE(50)
		SAY("Bonjour, j'imagine que vous �tes l� pour entendre ce que j'ai � dire contre Marcel?")

		ANSWER("Oui, je sais que vous voulez me donner des informations importantes. J'�coute.",51)
	NODE(51)
		SAY("Si seulement je le d�testais, tout serait plus simple. Mais c'est impossible. C'est un excellent soldat, il est courageux. Il a choisi ce qu'il pensait devoir choisir, mais je ne peux pas permettre qu'il conduise les Mercs � leur perte. Alors j'ai quelque chose � vous donner.")

		ANSWER("Quoi donc?",52)
	NODE(52)
		SAY("C'est une livraison secr�te de Tangent. Il n'y a qu'un paquet, mais je pense que c'est pour Marcel. J'ai essay� de regarder � l'int�rieur, et j'ai devin� qu'il y avait une arme. Mais je n'ai pas pu voir le mod�le. Mais je la donnerai aux partisans de Cajun apr�s le duel, et ils vous la remettront personnellement.")

		ANSWER("Pourquoi ne pas me la donner maintenant? Avec cette arme, je pourrai certainement le battre sans probl�me.",53)
	NODE(53)
		SAY("Impossible. Marcel a droit � un combat loyal, il ne veut pas utiliser d'arme meilleure que celles des membres de sa section. Il ne veut pas se mettre au-dessus de nous. Bonne chance. J'aimerais vraiment que Marcel revienne dans le droit chemin.")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()

	NODE(54)
		SAY("Je n'ai rien d'autre � dire. Je donnerai l'arme aux Mercs qui soutiennent l'Oeil. Je suis d�sol�e, mais je ne sais pas comment cela va finir. Peut-�tre devriez-vous parler apr�s Marcel apr�s le combat, pour vous r�concilier.")
		ENDDIALOG()


--------------------------------------------------------------------
--Marcel
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Je suis en train de pr�parer un gros coup. Revenez me parler plus tard, j'aurai plus de temps.")
			ENDDIALOG()
		else
			SAY("CityMercs va changer radicalement tr�s bient�t. Vous venez rejoindre nos rangs?")

			ANSWER("Je ne pense pas. En fait, je vous d�fie en duel.",101)
		end
	NODE(101)
		SAY("Je m'attendais � �a de votre part. M�me apr�s vous avoir ouvert toutes les portes. M�me si j'ai fait de vous ce que vous �tes aujourd'hui, voil� que vous me d�fiez. C'est triste. Vous ne comprenez pas que j'essaye d'am�liorer les choses?")

		ANSWER("Ce que je vois, c'est que vous ne faites pas ce qu'il faut. Ce que vous allez faire ne va pas arranger les choses, au contraire.",102)
	NODE(102)
		SAY("Si c'est ce que vous pensez, c'est que vous avez �t� manipul� par l'Oeil. Il est inutile de continuer notre conversation. Je vais combattre, mais �a ne me fait pas plaisir. J'avais plac� de grandes esp�rances en vous. Si vous gagnez, j'aurai quelque chose � vous dire ensuite.")
		SETNEXTDIALOGSTATE(103)
		ATTACK()
		ENDDIALOG()

	NODE(103)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ne tentez pas de m'avoir. Le combat sera fini lorsque l'un de nous deux ne pourra plus se relever.")
			ENDDIALOG()
		else
			SAY("Bon, vous avez gagn�. Je vous dirai bien de prendre ma place, mais je viens de comprendre que ce n'est pas ce que vous cherchiez. Mais je respecte les traditions, et vous m'avez battu avec honneur. J'abandonne mes plans, et j'accepte de reconna�tre Cajun comme chef. Je n'ai pas envie de vous expliquer pourquoi j'ai fait tout �a... mais si vous voulez vraiment le savoir, allez demander � Gerome, il conna�t mes raisons.")
			SETNEXTDIALOGSTATE(104)
			ENDDIALOG()

		end
	NODE(104)
		SAY("Laissez-moi tranquille maintenant. Je vais bien, ne vous inqui�tez pas.")
		ENDDIALOG()

--------------------------------------------------------------------
--Gerome
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Je suis occup�, d�sol�.")
			ENDDIALOG()
		else
			SAY("Quand je repense � toutes les choses que j'ai faites lorsque j'�tais chez les Anges D�chus...")

			ANSWER("Je ne viens pas parler de �a. J'ai gagn� un duel contre Marcel, et il abandonne ses plans.",151)
		end
	NODE(151)
		SAY("Vous avez vaincu Marcel? Incroyable. Il avait raison depuis le d�but alors.")

		ANSWER("Il avait raison? C'est � dire?",152)
	NODE(152)
		SAY("Vous n'avez pas trouv� bizarre d'avoir votre Ruban rouge aussi rapidement? Vous n'avez pas remarqu� que Marcel vous aidait pendant tout ce temps? Qu'il vous a apport� toute l'aide qu'il pouvait vous apporter?")

		ANSWER("Je... Non, je n'avais pas remarqu�. Et pourquoi est-ce qu'il a fait �a?",153)
	NODE(153)
		SAY("Marcel est un CityMerc dans l'�me. Mais il a vu que les Mecs s'affaiblissaient, que la force que nous tirions de la communaut� commen�ait � dispara�tre. Chaque section a commenc� � combattre de son c�t�. Marcel a alors pens� � un plan courageux pour souder mes Mercs � nouveau.")

		ANSWER("Il voulait les rassembler? Les diviser, vous voulez dire!",154)
	NODE(154)
		SAY("Vous ne comprenez pas que lorsqu'un danger se pr�sente, les gens se regroupent plus facilement? Marcel voulait leur ouvrir les yeux. J'admets qu'il y est all� un peu fort. Mais je vous souhaite bonne chance sur votre route. Maintenant, retournez chez vous et dites-leur ce que vous avez fait.")
		SETNEXTDIALOGSTATE(155)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
	
	NODE(155)
		SAY("J'ai beaucoup de choses � faire. M�me si j'ai piti� de Marcel. Maintenant, retournez chez vous et allez parler aux autres.")
		ENDDIALOG()


--------------------------------------------------------------------
-- Soldat
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Nous avions besoin que vous d�fiez Marcel en duel. Il se trouve dans le secteur 2. Sinon, les choses ne redeviendront jamais normales.")
			ENDDIALOG()
		else
			SAY("F�licitations. Ce que vous venez de faire est tr�s important pour nous. A pr�sent, les Mercs ne sont plus divis�s. Vous m�ritez plus que quelques cr�dits, mais malheureusement on ne peut rien vous donner d'autre pour le moment. Cajun n'a pas pu vous f�liciter personnellement, il est en train de combattre le Dragon Noir en ce moment. Il n'a emmen� que sa section avec lui, un de ces jours il va y rester.")

			ANSWER("Et moi? Qu'est-ce que je vais pouvoir faire maintenant?",201)
		end
	NODE(201)
		SAY("Je pense que vous pourriez avoir recours � Marcel. Il a rassembl� beaucoup d'hommes sous son commandement, et on ne peux pas prendre le risque de les d�cevoir. C'est pour cela que vous devriez vous tenir �loign� de la base quelques temps. Marcel n'oubliera pas ce qui s'est pass�, et je pense qu'il pourra chercher � se venger. Le mieux serait que vous fondiez votre propre clan. Ainsi, nous pourrons nous soutenir mutuellement, et vous ne serez pas oblig� de travailler ici. On a accept� de vous donner de l'aide pour votre clan.")

		ANSWER("Eljena m'a parl� d'une arme qu'elle pourrait me donner.",202)
	NODE(202)
		GIVEMONEY(60000)
		GIVEITEM(9435)
--Tangent Spezial Gattling
		SAY("C'est vrai, j'avais presque oubli�. C'est un puissant Chain Gun. Je reconnais que je suis un peu jaloux. Allez, prenez-le. Maintenant, c'est � vous de d�cider ce que vous allez faire. Salutations.")
		ACTIVATEDIALOGTRIGGER(3)
 		EPICRUNFINISHED(11,5)	
		ENDDIALOG()

end