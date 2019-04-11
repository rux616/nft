--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--PvP 3 Twilight Guardian
--1,D,Cole
--2,D,Simmons

--Startnode, Person
--0,Human Resource
--50,Cole
--100,Grand
--150,Simmons

--Items
-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Je viens d'avoir confirmation de la part du NCPD : on a deux personnes qui pourraient être notre mystérieux hacker. On a fait des recoupements grâce à la liste que vous nous avez fournie.")
	
	ANSWER("CONTINUER",1)
NODE(1)
	SAY("Comme c'est vous qui avez fourni cette liste, j'ai suggéré que vous vous occupiez du hacker. J'espère que ça vous fait plaisir?")
	
	ANSWER("Parfait, je vais terminer ce que j'ai commencé.",2)
	ANSWER("J'ai bien peur de manquer de préparation pour cette mission.",7)
NODE(2)
	SAY("Ravi de l'entendre. CityAdmin dépend de runners comme vous. Vous devriez parler au contact qui vous a donné la liste, pour commencer. Il en sait peut-être plus, étant donné que c'est lui qui a dressé cette liste.")
	
	ANSWER("Vous parlez de cette tête de mule d'Ethan Cole, c'est ça?",3)
NODE(3)
	SAY("Possible. Souvenez-vous que le hacker n'a très certainement pas travaillé tout seul. Et j'ai de mauvaises nouvelles pour vous, en plus.")
	
	ANSWER("CONTINUER",4)
NODE(4)
	SAY("Un autre meurtre a été commis depuis la dernière fois. L'enquête piétine, si on ne néglige aucune piste.")
	
	ANSWER("CONTINUER",5)
NODE(5)
	SAY("Vous devriez peut-être vous concentrer en priorité sur ce hacker et ce CopBot volé. Ne vous occupez pas trop des meurtres pour l'instant.")
	
	ANSWER("Ca me va. Vous pouvez considérer la mission comme réussie.",6)
NODE(6)
	SAY("J'y compte bien. Bonne chance.")
	ACCEPTMISSION()
	SETNEXTDIALOGSTATE(8)
	ENDDIALOG()
	
NODE(7)
	SAY("Ne prenez pas trop votre temps, il pourrait y avoir un autre meurtre.")
	
	ENDDIALOG()
NODE(8)
	SAY("Vous êtes déjà sur la piste du hacker? Alors vous feriez mieux d'aller parler à Cole, dans l'Outzone 01.")
	
	ENDDIALOG()



-----------------------------------------------------
--Cole

NODE(50)
	SAY("Bienvenue, envoyé de CityAdmin. En quoi puis-je vous être agréable aujourd'hui, honorable runner?")
	
	ANSWER("Et si vous commenciez par arrêter vos sarcasmes?",51)
NODE(51)
	SAY("Oui chef! Vous vous attendez à quoi? Je vis comme un chien ici, entouré de mutants et de hors-la-loi. Contrairement à ces brutes, je sais me tenir!")
	
	ANSWER("On peut passer à des choses plus importantes? Il me faut encore des informations...",52)
NODE(52)
	SAY("Pourquoi est-ce que j'ai cette impression que tout le monde en veut toujours plus? Bon, qu'est-ce que vous voulez encore?")
	
	ANSWER("Des informations sur une ou deux personnes figurant sur la liste que vous m'avez remise.",53)
NODE(53)
	SAY("Pas de problème! Mais d'abord, j'ai besoin d'un petit quelque chose. Comme toujours. Vous pourrez dire ce que vous voulez, mais j'ai pas l'habitude de brader mes services.")
	
	ANSWER("Qu'est-ce que ça sera cette fois?",54)
NODE(54)
	SAY("C'est simple. Vous êtes de CityAdmin, c'est bien ça? Alors j'ai perdu une petite somme au jeu il y a quelques jours. J'ai pas pu payer ma dette, et ces enfoirés m'ont tabassé à mort.")
	
	ANSWER("CONTINUER",55)
NODE(55)
	SAY("Moi, je suis du genre à payer mes dettes. Mais ils ont joué au con avec moi, ils vont le payer. Je suis pas certain de leurs noms, mais je sais qui doit payer pour ces crapules : les Gardiens du Crépuscule.")
	
	ANSWER("Et je vais devoir tuer pour vous?!",56)
NODE(56)
	SAY("Ouais, ça vous pose un problème? Les Gardiens du Crépuscule, c'est comme des rats. Parfois, sans faire attention, on en écrase un. Vous pourriez m'en tuer... disons… cinq?")
	
	ANSWER("Quoi?! Tant que ça?! Vous voulez vraiment que j'en tue cinq? Trois, pas plus. C'est mon dernier mot.",57)
NODE(57)
	SAY("Marché conclu, va pour trois. Mais pas d'infos tant que le boulot n'est pas terminé. Attaquez-vous à ceux qui sont aussi forts que vous. A plus tard, runner.")

	ANSWER("Vous pourriez être un peu plus explicite sur les gens que je dois abattre?",63)
	
--Spieler killt drei Twilight Guardian seines Ranges

NODE(58)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("Non, vous n'en avez pas tué trois. Je sais qu'il en manque.")
		ENDDIALOG()
	else
		SAY("Brillant. Ca leur apprendra à vivre. Bien joué! Je n'aurais pas imaginé que vous aviez du talent là-dedans. Les deux noms que vous cherchez sont Grand et Simmons. L'un d'eux habite juste au coin de la rue.")
	
		ANSWER("CONTINUER",60)
	end
NODE(60)
	SAY("Le deuxième, Simmons, c'est un trouillard! Si je me souviens bien, il est à Pepper Park. Il aime les fruits de mer. Il mange tous les jours au Rocco's Seafood de Pepper Park 02.")
	
	ANSWER("CONTINUER",61)
NODE(61)
	SAY("Les deux sont des hackers d'élite. Je vous souhaite bien du plaisir, runner!")
	SETNEXTDIALOGSTATE(62)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
	
NODE(62)
	SAY("Vous ne vouliez pas aller voir les hackers? Grand et Simmons sont à Pepper Park 02.")
	ENDDIALOG()


NODE(63)
		SAY("Allez tuer trois runners des gardiens du Crépuscule. Pas des employés, pas des gardes, pas des représentants officiels. Que des runners.")
		
		ANSWER("N'importe quel runner?",64)
NODE(64)
		SAY("Non, seulement ceux qui sont au moins aussi puissants que vous. Sinon, ça ne comptera pas.")
		SETNEXTDIALOGSTATE(58)
		ENDDIALOG()

-----------------------------------------------------
--Grand

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Dégage! J'ai pas le temps, faut que j'aille hacker un truc!!")
		ENDDIALOG()
	else
		SAY("Tu te fous de moi? Alors comme ça tu t'invites sans me demander?")
	
		ANSWER("Je viens de CityAdmin...",101)
	end
NODE(101)
	SAY("J'emmerde l'Admin! Dégage, ou je...")
	ATTACK()
	ENDDIALOG()
		
--Spieler wird angegriffen


-----------------------------------------------------
--Simmons

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("Je... J'aimerais bien manger tranquille, si ça ne vous dérange pas.")
		ENDDIALOG()
	else

		SAY("Bon... Bonjour? Qu... Qu'est-ce que vous me voulez?")
	
		ANSWER("Vous êtes M. Simmons?",151)
	end

NODE(151)
	SAY("O... oui, c'est m... moi, pourquoi?")
	
	ANSWER("Je suis de CityAdmin, et ça m'a pris du temps pour vous trouver.",152)
NODE(152)
	SAY("Ciel! Qu'est-ce que vous me voulez? Je... J'ai rien de valeur sur moi!")
	
	ANSWER("Je sais d'une source fiable que vous êtes un hacker.",153)
NODE(153)
	SAY("Moi? ... Moi, un hacker? Qu'est-ce que je dois répondre? Peut-être...")
	
	ANSWER("C'est vous qui avez volé le CopBot et qui l'avez modifié! Avouez!",154)
NODE(154)
	SAY("Je le savais que ça finirai mal, j'avoue! Mais me faites pas de mal. J'ai modifié un CopBot pour qu'il attaque tous les employés de CityAdmin.")
	
	ANSWER("CONTINUER",155)
NODE(155)
	SAY("J'ai retiré la sonde radio, puis je l'ai reprogrammé avec l'aide d'une puce Law Enforcer. Il est complètement autonome à présent.")
	
	ANSWER("CONTINUER",156)
NODE(156)
	SAY("Tout ça, c'est les Gardiens du Crépuscule! Ils m'ont forcé à participer. J'ai pas pu résister! Croyez-moi!")
	
	ANSWER("CONTINUER",157)
NODE(157)
	SAY("Ils voulaient ralentir CityAdmin par des meurtres, pour détourner leur attention.")
	
	ANSWER("Vos aveux viennent de vous valoir une annihilation totale et définitive, c'est une certitude. Vous savez certainement ce qui vous attend, n'est-ce pas?",158)
NODE(158)
	SAY("Non, je vous en prie! Je ferai tout ce que vous voulez, mais... Ne me tuez pas, pitié! Je n'ai pas de clone dans un GenRep! ... Attendez! Tenez, voilà 10.000 crédits. On est quitte?")
	
	ANSWER("CONTINUER",159)
NODE(159)
	SAY("Et... Je pourrais vous modifier un Law Enforcer en implant pour augmenter vos capacités, qu'est-ce que vous en dites? Mais ayez pitié de moi, ne me dénoncez pas au NCPD...")
	
	ANSWER("Vous êtes vraiment un minable, si on vous a forcé à faire ça.",160)
NODE(160)
	SAY("Je vous en supplie, je ferai tout ce que vous voulez, vraiment tout...")
	
	ANSWER("D'accord, mais j'ai encore besoin de votre aide pour retrouver ce CopBot volé.",161)
NODE(161)
	SAY("Oui, je peux le faire, pas de problème! Je peux localiser la position du CopBot. Lorsque vous avez terminé, je vous modifierai un Law Enforcer.")
	
	ANSWER("CONTINUER",162)
NODE(162)
	SAY("Mais il va me falloir un peu de temps pour le localiser précisément.")
	
	ANSWER("CONTINUER",163)
NODE(163)
	SAY("Comme je vous l'ai dit, il est totalement autonome, et ça sera difficile de repérer sa  position. Un peu de patience.")
	
	ANSWER("Très bien, je vais vous accorder quelques jours. Mais d'ici là, je veux que vous ayez localisé sa position exacte. Je retourne au QG faire mon rapport.",164)
NODE(164)
	SAY("Je ferai de mon mieux Merci beaucoup.")
	GIVEMONEY(10000)
	SETNEXTDIALOGSTATE(165)
        EPICRUNFINISHED(1,4)
	ACTIVATEDIALOGTRIGGER(3)
	ENDDIALOG()
	
NODE(165)
	SAY("Allez-vous en.")
	ENDDIALOG()

end