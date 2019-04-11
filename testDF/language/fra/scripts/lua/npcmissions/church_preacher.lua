--new
--Ablassbriefe modelln!!!!
function DIALOG()
	NODE(0)
		SAY("Prenez garde, le Malin rôde!")
		SAY("Ne jurez pas, ou la foudre vous frappera!")
		SAY("Soyez honnête en toutes choses.")
		SAY("Ne tuez pas sans motivation juste.")
		
		ANSWER("Prêcheur! J'ai commis un péché, je demande l'absolution.",2)
		ANSWER("L'endroit n'est pas trop dangereux pour un lieu de culte?",26)
		ANSWER("Le spirituel, c'est pas mon truc. Bye.",1)
		ANSWER("Euh... Bon, j'ai à faire ailleurs.",1)


-- end conversation here
	NODE(1)
		SAY("N'oubliez pas! La lumière!")
		SAY("Repentez-vous de vos péchés!")
		ENDDIALOG()

-- the preacher grants absolution
	NODE(2)
		SAY("Oui, mon enfant. Conte moi tes problèmes, je t'écoute.")
		
		ANSWER("J'ai tué quelqu'un.",3)
		ANSWER("J'ai pris quelque chose qui ne m'appartenait pas.",11)
		ANSWER("J'ai trahi mes amis.",13)
		ANSWER("J'ai menti bien trop souvent.",14)
		ANSWER("J'ai perdu mon honneur en faisant quelque chose d'abominable.",16)
		
-- sin of killing		
	NODE(3)
		SAY("Tu as tué. Mais était-ce pour te défendre? As-tu tué des abominations? Ou bien des hommes?")
		
		ANSWER("C'était pour me défendre. Je n'avais pas le choix.",4)
		ANSWER("Des abominations dans les Terres Brûlées.",5)
		ANSWER("J'ai tué quelqu'un, et depuis j'ai des remords.",6)
	NODE(4)
		SAY("Alors je t'accorde l'absolution. Tuer pour se défendre n'est pas un grand péché, mon enfant.")
		
		ANSWER("Merci, prêcheur.",15)
	NODE(5)
		SAY("Je te pardonne, car ce n'est pas un pêché que de tuer ce qui n'a pas été créé par le Créateur et menace tout le monde.")
		
		ANSWER("C'est un véritable soulagement. Merci.",15)
	NODE(6)
		SAY("Et tu fais as raison d'en avoir! C'est un péché terrible, et je ne peux t'accorder l'absolution qu'en contrepartie d'un don généreux envers notre Eglise.")
		
		ANSWER("Mais je n'ai pas tué une seule personne. J'en ai tué plusieurs!",9)
		ANSWER("Dites-moi combien je dois donner, et je donnerai avec plaisir.",7)
	NODE(7)
		SAY("Pour un tel péché, il te faudra au moins donner 20.000 crédits. Ensuite seulement, je pourrai t'accorder l'absolution.")
		
		ANSWER("Quoi? 20.000? Pour cette somme, je peux m'occuper de mon absolution moi-même! Au revoir, prêcheur.",1)
		ANSWER("Bien, je vais payer. Mon âme est plus importante que l'état de mes finances.",8)
	NODE(8)
		TAKEMONEY(20000)
		if(result==0)then
			SAY("Je suis navré, mais tu n'as pas cet argent.")
			
			ANSWER("Excusez-moi, Père.",15)
		else
			SAY("Ainsi soit-il. Je t'accorde l'absolution au nom de l'Eglise.")
			ANSWER("Merci prêcheur!",15)
		end
	NODE(9)
		SAY("Je n'en crois pas mes oreilles! Plusieurs personnes? Alors l'affaire est plus délicate, je le crains...")
		
		ANSWER("Que faut-il que je fasse? Je crains pour le salut de mon âme.",10)
		--redemption link link
	
-- Link to the quest for redemption
	NODE(10)
		SAY("La seule manière d'expier tes fautes est de faire un pèlerinage.")
		
		ANSWER("Qu'en est-il exactement?",19)
	
-- the sin to steal
	NODE(11)
		SAY("L'absolution pour ce crime est possible à condition de faire un don de 1000 crédits à l'église.")
		
		ANSWER("Je vais rendre ce que j'ai volé.",15)
		ANSWER("Je dormirai mieux si je faisais un don à l'église.",12)
	NODE(12)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Mais tu n'as pas assez d'argent. Nous ne tenons pas à te déposséder de tes dernières richesses.")
			
			ANSWER("Pardon...",15)
		else
			SAY("Tes péchés ont été absous.")
			
			ANSWER("...",15)
		end
		
		
-- the sin of betrayal
	NODE(13)
		SAY("La trahison est un péché mortel. Mais je t'accorde l'absolution, je pense que tu seras bien assez puni par ceux que tu as trahis.")
		
		ANSWER("Merci. Vous me libérez d'un grand poids.",15)
		
		
-- the sin of lies
	NODE(14)
		SAY("Le mensonge est un péché pratiqué par tout le monde, et je t'accorde l'absolution. Tu as bien agi en te repentant.")
		
		ANSWER("Merci, père.",15)
		
-- Link to grant absolution
	NODE(15)
		SAY("As-tu commis d'autres péchés?")
		
		ANSWER("C'était tout, merci...",1)
		ANSWER("Oui en effet, il y a autre chose.",2)
	
-- lost honour
	NODE(16)
		SAY("Il y a plus d'une manière de perdre l'honneur. Et je sais que le poids de cette faute est lourd à porter, car elle te hante même dans tes rêves.")
		
		ANSWER("Alors vous connaissez ce dont je souffre. J'espère que vous avez une solution pour moi, parce que je ne peux plus vivre avec ça sur la conscience.",17)
	NODE(17)
		SAY("Tu vas devoir chercher à regagner ton honneur en bien te comportant en toutes choses. Mais cette démarche ne peut être menée à bien que par les esprits les plus forts.")
		
		ANSWER("Je pense que je n'en aurai pas la force. Il n'y a pas un autre moyen?",18)
		ANSWER("Je suivrai votre suggestion, père. Merci.",15)
	NODE(18)
		SAY("L'Eglise ne connaît qu'une seule manière de laver un tel péché.")
		
		ANSWER("Je t'écoute, mon enfant...",10)
		--link to redemption
		
--the pilgrimage
	NODE(19)
		SAY("Il existe un lieu qui a perdu sa signification avec le temps, mais dont nous nous souvenons encore et que nous chérissons.")
		
		ANSWER("...",20)
	NODE(20)
		SAY("Le pèlerinage s'effectue en direction de cet endroit. C'est un voyage pour trouver la rédemption et la paix de l'âme. Es-tu prêt à faire ce voyage à pied?")
		
		ANSWER("Oui, je veux faire ce voyage.",21)
		ANSWER("Je n'ai pas encore les forces nécessaires.",1)
	NODE(21)
		SAY("Je suis heureux de l'entendre. Tu vas devoir te rendre au nord, sur la côte. Là, il y a des années, une femme a perdu la vie.")
		-- location k_07
		
		ANSWER("...",22)
	NODE(22)
		SAY("Son nom importe peu. Mais ce qu'elle a fait doit rester dans les mémoires. Elle a donné sa vie à un homme cruel pour protéger des innocents.")

		ANSWER("...",23)
	NODE(23)
		SAY("Lorsque tu arriveras là-bas, tu devras prendre un bain pour te laver de tes péchés. Tu devras aussi parler à Frère Montejavare. Il est très attaché à ce lieu de souvenirs.")
		
		ANSWER("Je ferai comme vous l'avez dit.",24)
		ANSWER("Non, je pense qu'il y a des solutions plus faciles. Au revoir, père.",1)
	NODE(24)
		SAY("Lorsque tu reviendras à pied, je t'accorderai l'absolution. Mais fais attention, la nature n'est pas aussi amicale qu'on veut bien le dire.")
		SETNEXTDIALOGSTATE(25)
		ENDDIALOG()
	NODE(25)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0) then
			SAY("Je lis dans tes yeux que tu n'as pas encore fait ton pèlerinage. Tu dois en passer par là, et tu le sais.")
			ENDDIALOG()
		else
			SAY("Tu es parti, et tu es revenu lavé de tous tes péchés. Je t'accorde l'absolution.")
			ACTIVATEDIALOGTRIGGER(2)
			ENDDIALOG()
		end

-- a dangerous place for a church
	NODE(26)
		SAY("S'il fallait une seule église dans ce monde, alors ce serait celle-ci.")
		
		ANSWER("Expliquez-moi pourquoi! Si vous saviez tout ce que j'ai croisé en venant ici...",27)
	NODE(27)
		SAY("Quel meilleur endroit pour offrir aide, réconfort et espoir à ceux qui en ont vraiment besoin, si ce n'est ici dans les Terres Brûlées?")
		
		ANSWER("Mais vous ne voyez pas les risques qu'entraîne ce choix?",28)
	NODE(28)
		SAY("Pour moi, ça n'est pas un risque. Vous comprendrez bientôt qu'il n'y a pas de peur à avoir.")
		
		ANSWER("Qu'est-ce que vous voulez dire?",29)
		ANSWER("J'en ai assez entendu. Adieu.",1)	
	NODE(29)
		SAY("Vous comprendrez peut-être tout cela par vous-même un jour. Mais je ne peux pas vous l'expliquer.")
		
		ANSWER("J'adore quand vous jouez au mystérieux comme ça... Adieu.",1)
		
-- Brother Montejavare
	NODE(30)
		SAY("Bonjour. Vous venez rendre hommage à sainte Anne?")
		
		ANSWER("Oh non... vous êtes un de ces fanatiques?",31)
		ANSWER("Non, en fait je passais par hasard.",31)
		ANSWER("Je viens en pèlerinage.",32)	
	NODE(31)
		SAY("Alors quitte ce lieu, impie! Ne le souille pas de ta présence!")
		ENDDIALOG()	
	NODE(32)
		SAY("Alors tu es venu au bon endroit. Tu pourras ici te laver de tes péchés.")
		
		ANSWER("...",33)
	NODE(33)
		SAY("Prends un bain dans la mer, et tes péchés seront expiés. ")
		SETNEXTDIALOGSTATE(34)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(34)
		SAY("N'aie pas peur. Tu seras toujours accueilli à bras ouverts sur cette terre.")
		ENDDIALOG()		
end