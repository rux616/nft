--new
--Ablassbriefe modelln!!!!
function DIALOG()
	NODE(0)
		SAY("Prenez garde, le Malin r�de!")
		SAY("Ne jurez pas, ou la foudre vous frappera!")
		SAY("Soyez honn�te en toutes choses.")
		SAY("Ne tuez pas sans motivation juste.")
		
		ANSWER("Pr�cheur! J'ai commis un p�ch�, je demande l'absolution.",2)
		ANSWER("L'endroit n'est pas trop dangereux pour un lieu de culte?",26)
		ANSWER("Le spirituel, c'est pas mon truc. Bye.",1)
		ANSWER("Euh... Bon, j'ai � faire ailleurs.",1)


-- end conversation here
	NODE(1)
		SAY("N'oubliez pas! La lumi�re!")
		SAY("Repentez-vous de vos p�ch�s!")
		ENDDIALOG()

-- the preacher grants absolution
	NODE(2)
		SAY("Oui, mon enfant. Conte moi tes probl�mes, je t'�coute.")
		
		ANSWER("J'ai tu� quelqu'un.",3)
		ANSWER("J'ai pris quelque chose qui ne m'appartenait pas.",11)
		ANSWER("J'ai trahi mes amis.",13)
		ANSWER("J'ai menti bien trop souvent.",14)
		ANSWER("J'ai perdu mon honneur en faisant quelque chose d'abominable.",16)
		
-- sin of killing		
	NODE(3)
		SAY("Tu as tu�. Mais �tait-ce pour te d�fendre? As-tu tu� des abominations? Ou bien des hommes?")
		
		ANSWER("C'�tait pour me d�fendre. Je n'avais pas le choix.",4)
		ANSWER("Des abominations dans les Terres Br�l�es.",5)
		ANSWER("J'ai tu� quelqu'un, et depuis j'ai des remords.",6)
	NODE(4)
		SAY("Alors je t'accorde l'absolution. Tuer pour se d�fendre n'est pas un grand p�ch�, mon enfant.")
		
		ANSWER("Merci, pr�cheur.",15)
	NODE(5)
		SAY("Je te pardonne, car ce n'est pas un p�ch� que de tuer ce qui n'a pas �t� cr�� par le Cr�ateur et menace tout le monde.")
		
		ANSWER("C'est un v�ritable soulagement. Merci.",15)
	NODE(6)
		SAY("Et tu fais as raison d'en avoir! C'est un p�ch� terrible, et je ne peux t'accorder l'absolution qu'en contrepartie d'un don g�n�reux envers notre Eglise.")
		
		ANSWER("Mais je n'ai pas tu� une seule personne. J'en ai tu� plusieurs!",9)
		ANSWER("Dites-moi combien je dois donner, et je donnerai avec plaisir.",7)
	NODE(7)
		SAY("Pour un tel p�ch�, il te faudra au moins donner 20.000 cr�dits. Ensuite seulement, je pourrai t'accorder l'absolution.")
		
		ANSWER("Quoi? 20.000? Pour cette somme, je peux m'occuper de mon absolution moi-m�me! Au revoir, pr�cheur.",1)
		ANSWER("Bien, je vais payer. Mon �me est plus importante que l'�tat de mes finances.",8)
	NODE(8)
		TAKEMONEY(20000)
		if(result==0)then
			SAY("Je suis navr�, mais tu n'as pas cet argent.")
			
			ANSWER("Excusez-moi, P�re.",15)
		else
			SAY("Ainsi soit-il. Je t'accorde l'absolution au nom de l'Eglise.")
			ANSWER("Merci pr�cheur!",15)
		end
	NODE(9)
		SAY("Je n'en crois pas mes oreilles! Plusieurs personnes? Alors l'affaire est plus d�licate, je le crains...")
		
		ANSWER("Que faut-il que je fasse? Je crains pour le salut de mon �me.",10)
		--redemption link link
	
-- Link to the quest for redemption
	NODE(10)
		SAY("La seule mani�re d'expier tes fautes est de faire un p�lerinage.")
		
		ANSWER("Qu'en est-il exactement?",19)
	
-- the sin to steal
	NODE(11)
		SAY("L'absolution pour ce crime est possible � condition de faire un don de 1000 cr�dits � l'�glise.")
		
		ANSWER("Je vais rendre ce que j'ai vol�.",15)
		ANSWER("Je dormirai mieux si je faisais un don � l'�glise.",12)
	NODE(12)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Mais tu n'as pas assez d'argent. Nous ne tenons pas � te d�poss�der de tes derni�res richesses.")
			
			ANSWER("Pardon...",15)
		else
			SAY("Tes p�ch�s ont �t� absous.")
			
			ANSWER("...",15)
		end
		
		
-- the sin of betrayal
	NODE(13)
		SAY("La trahison est un p�ch� mortel. Mais je t'accorde l'absolution, je pense que tu seras bien assez puni par ceux que tu as trahis.")
		
		ANSWER("Merci. Vous me lib�rez d'un grand poids.",15)
		
		
-- the sin of lies
	NODE(14)
		SAY("Le mensonge est un p�ch� pratiqu� par tout le monde, et je t'accorde l'absolution. Tu as bien agi en te repentant.")
		
		ANSWER("Merci, p�re.",15)
		
-- Link to grant absolution
	NODE(15)
		SAY("As-tu commis d'autres p�ch�s?")
		
		ANSWER("C'�tait tout, merci...",1)
		ANSWER("Oui en effet, il y a autre chose.",2)
	
-- lost honour
	NODE(16)
		SAY("Il y a plus d'une mani�re de perdre l'honneur. Et je sais que le poids de cette faute est lourd � porter, car elle te hante m�me dans tes r�ves.")
		
		ANSWER("Alors vous connaissez ce dont je souffre. J'esp�re que vous avez une solution pour moi, parce que je ne peux plus vivre avec �a sur la conscience.",17)
	NODE(17)
		SAY("Tu vas devoir chercher � regagner ton honneur en bien te comportant en toutes choses. Mais cette d�marche ne peut �tre men�e � bien que par les esprits les plus forts.")
		
		ANSWER("Je pense que je n'en aurai pas la force. Il n'y a pas un autre moyen?",18)
		ANSWER("Je suivrai votre suggestion, p�re. Merci.",15)
	NODE(18)
		SAY("L'Eglise ne conna�t qu'une seule mani�re de laver un tel p�ch�.")
		
		ANSWER("Je t'�coute, mon enfant...",10)
		--link to redemption
		
--the pilgrimage
	NODE(19)
		SAY("Il existe un lieu qui a perdu sa signification avec le temps, mais dont nous nous souvenons encore et que nous ch�rissons.")
		
		ANSWER("...",20)
	NODE(20)
		SAY("Le p�lerinage s'effectue en direction de cet endroit. C'est un voyage pour trouver la r�demption et la paix de l'�me. Es-tu pr�t � faire ce voyage � pied?")
		
		ANSWER("Oui, je veux faire ce voyage.",21)
		ANSWER("Je n'ai pas encore les forces n�cessaires.",1)
	NODE(21)
		SAY("Je suis heureux de l'entendre. Tu vas devoir te rendre au nord, sur la c�te. L�, il y a des ann�es, une femme a perdu la vie.")
		-- location k_07
		
		ANSWER("...",22)
	NODE(22)
		SAY("Son nom importe peu. Mais ce qu'elle a fait doit rester dans les m�moires. Elle a donn� sa vie � un homme cruel pour prot�ger des innocents.")

		ANSWER("...",23)
	NODE(23)
		SAY("Lorsque tu arriveras l�-bas, tu devras prendre un bain pour te laver de tes p�ch�s. Tu devras aussi parler � Fr�re Montejavare. Il est tr�s attach� � ce lieu de souvenirs.")
		
		ANSWER("Je ferai comme vous l'avez dit.",24)
		ANSWER("Non, je pense qu'il y a des solutions plus faciles. Au revoir, p�re.",1)
	NODE(24)
		SAY("Lorsque tu reviendras � pied, je t'accorderai l'absolution. Mais fais attention, la nature n'est pas aussi amicale qu'on veut bien le dire.")
		SETNEXTDIALOGSTATE(25)
		ENDDIALOG()
	NODE(25)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0) then
			SAY("Je lis dans tes yeux que tu n'as pas encore fait ton p�lerinage. Tu dois en passer par l�, et tu le sais.")
			ENDDIALOG()
		else
			SAY("Tu es parti, et tu es revenu lav� de tous tes p�ch�s. Je t'accorde l'absolution.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end

-- a dangerous place for a church
	NODE(26)
		SAY("S'il fallait une seule �glise dans ce monde, alors ce serait celle-ci.")
		
		ANSWER("Expliquez-moi pourquoi! Si vous saviez tout ce que j'ai crois� en venant ici...",27)
	NODE(27)
		SAY("Quel meilleur endroit pour offrir aide, r�confort et espoir � ceux qui en ont vraiment besoin, si ce n'est ici dans les Terres Br�l�es?")
		
		ANSWER("Mais vous ne voyez pas les risques qu'entra�ne ce choix?",28)
	NODE(28)
		SAY("Pour moi, �a n'est pas un risque. Vous comprendrez bient�t qu'il n'y a pas de peur � avoir.")
		
		ANSWER("Qu'est-ce que vous voulez dire?",29)
		ANSWER("J'en ai assez entendu. Adieu.",1)	
	NODE(29)
		SAY("Vous comprendrez peut-�tre tout cela par vous-m�me un jour. Mais je ne peux pas vous l'expliquer.")
		
		ANSWER("J'adore quand vous jouez au myst�rieux comme �a... Adieu.",1)
		
-- Brother Montejavare
	NODE(30)
		SAY("Bonjour. Vous venez rendre hommage � sainte Anne?")
		
		ANSWER("Oh non... vous �tes un de ces fanatiques?",31)
		ANSWER("Non, en fait je passais par hasard.",31)
		ANSWER("Je viens en p�lerinage.",32)	
	NODE(31)
		SAY("Alors quitte ce lieu, impie! Ne le souille pas de ta pr�sence!")
		ENDDIALOG()	
	NODE(32)
		SAY("Alors tu es venu au bon endroit. Tu pourras ici te laver de tes p�ch�s.")
		
		ANSWER("...",33)
	NODE(33)
		SAY("Prends un bain dans la mer, et tes p�ch�s seront expi�s. ")
		SETNEXTDIALOGSTATE(34)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(34)
		SAY("N'aie pas peur. Tu seras toujours accueilli � bras ouverts sur cette terre.")
		ENDDIALOG()		
end