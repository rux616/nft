--new
--CityMerc

--
--Trigger
--Triggernumber,Type,Person
--0,D, Mitchell
--1,D, Gerard
--2,D, Gerome
--3,D, Marcel 350
--
--Startnode, Person
--0, sOLDAT
--50, Mitchell
--100, Marcel
--150, Gerard
--200, Marcel
--250, Mitchell
--300, Gerome
--350, Marcel
--
--Items
--Paket von Lily 200

function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("Ahh, un tout nouveau Rookie. J'ai du travail pour vous, et vous ne pourrez pas refuser. Vous savez à quoi je fais allusion?")

		ANSWER("Je pense que vous voulez parler de mon ruban blanc?",1)
	NODE(1)
		SAY("Si vous pensez que ça sera une partie de plaisir, laissez-moi vous dire quelque chose. Recevoir un ruban blanc est un honneur. En tant que Rookie, vous êtes déjà des nôtres, mais si vous avez un Ruban Blanc vous faites vraiment partie de la famille. Cette récompense vaut vraiment quelque chose.")

		ANSWER("Je vais voir ce que je peux faire. Par quoi est-ce que je commence?",2)
		ANSWER("Je vais encore m'entraîner. Je ne me sens pas encore à la hauteur.",5)
	NODE(2)
		SAY("Très bien. Alors allez d'abord voir Mitchell, il se trouve juste à l'extérieur de la base militaire, dans les Terres Brûlées. Son travail est d'observer les mouvements des Warbots et de nous avertir en cas de danger. C'est déjà un ruban noir, mais il semble se plaire dans les Terres Brûlées.")

		ANSWER("Je pensais que je devais faire trois missions. Quelles sont les deux autres?",3)
	NODE(3)
		SAY("Non, pour l'instant je n'ai que cette mission pour vous. Mais je peux demander à Marcel d'organiser quelque chose. Je pense qu'il vous a à la bonne. Il a sûrement des idées en tête. Mais allez d'abord voir Mitchell, on l'a prévenu de votre arrivée.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(4)
		SAY("Vous trouverez Mitchell à l'extérieur de la base militaire. Ensuite, Marcel aura peut-être quelque chose pour vous dans le secteur 2.")
		ENDDIALOG()
	NODE(5)
		SAY("Bon, vous reviendrez me voir plus tard j'imagine.")
		ENDDIALOG()
		

--------------------------------------------------------------------
--Mitchell
--50
	NODE(50)
		SAY("Je m'attendais à vous voir. Bon, écoutez-moi bien. Je vais vous expliquer ce que je fais ici, et en retour vous allez me faire une faveur. Qu'est-ce que vous en dites?")

		ANSWER("Attendez. Je ne devais pas seulement observer?",51)
	NODE(51)
		SAY("Me faites pas ce coup-là. Je suis chez les Mercs depuis un bout de temps, je connais le système. Si jamais je lève le petit doigt, vous n'aurez jamais votre ruban blanc. Compris?")

		ANSWER("Compris. Dans tous les cas, je suis là pour apprendre, non?",52)
	NODE(52)
		SAY("Exact. Maintenant écoutez-moi. Dehors, c'est toujours moitié-moitié. Un faux pas, et vous pouvez vous retrouvé éparpillé sur des kilomètres. Il faut savoir faire la différence entre ce qui peut vous tuer immédiatement, et ce qui ne peut que vous blesser.")

		ANSWER("Et comment?",53)
	NODE(53)
		SAY("Je vais vous le dire. Si vous voyez quelque chose voler dans le ciel, commencez à courir, parce que c'est vraisemblablement un Hoverbomber. Et faites attention aux gros robots du genre Warbot, parce qu'ils ont des armes à longue portée qui peuvent vous réduire en bouillie. Certains gros animaux peuvent eux aussi être très dangereux.")

		ANSWER("Je ne savais pas que c'était si risqué.",54)
	NODE(54)
		SAY("Et encore, ça n'est que le commencement. Mais je vous en ai déjà assez dit pour cette fois. Maintenant, j'aimerais que vous me fassiez une petite faveur. Quelque chose d'insignifiant. J'ai une fille qui vit à Neocron, vous savez, cette grande ville avec ces hautes tours partout... On ne s'est pas vus depuis une éternité, et j'aimerais que vous alliez lui rendre visite. Dites-lui que je suis toujours en vie et que je pense à elle. D'accord?")

		ANSWER("A Neocron?!! Vous savez que c'est de l'autre côté des terres Brûlées?",55)
	NODE(55)
		SAY("Oui, évidemment. C'est à deux pas d'ici. Si vous voulez, vous pouvez aller voir Marcel d'abord pour prendre votre prochaine mission. Si vous avez de la chance, cette mission sera aussi d'aller à Neocron, et vous ferez d'une pierre deux coups. Mais soignez vos manières, elle travaille pour CityAdmin. Elle a un appartement à Pepper Park, et elle s'appelle Rose.")
		SETNEXTDIALOGSTATE(250)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	

--------------------------------------------------------------------
--Marcel
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On m'a dit que Mitchell attendait d'abord votre visite.")
			ENDDIALOG()
		else
			SAY("Il est étrange, Mitchell, vous ne trouvez pas? Je pense que les radiations des Terres Brûlées lui ont un peu grillé le cerveau. Mais vous avez encore des missions d'observation à faire, n'est-ce pas?")

			ANSWER("Je veux réussir à obtenir mon ruban blanc.",101)
		end
	NODE(101)
		SAY("Votre acharnement est admirable. Vous savez que CityMercs est neutre. Nous avons toujours été neutres. On nous paye pour résoudre les problèmes que les autres ne peuvent pas résoudre. C'est pour cela, et en raison de notre professionnalisme, que nous avons de nombreux amis. Un grand nombre de ces amis provient de Neocron, et ces amis sont principalement les compagnies qui peuvent acheter nos services. Vous comprenez?")

		ANSWER("Oui, je suis déjà au courant de tout ça.",102)
	NODE(102)
		SAY("Bien, mais je tenais tout de même à vous le rappeler. Les seules factions avec lesquelles nos rapports sont tendus, ce sont le Dragon Noir et les Gardiens du Crépuscule. C'est une longue histoire, je vais passer sur les détails. Oh, et les Fils de l'Anarchie, évidemment. Presque tout le monde les déteste.")

		ANSWER("Et comment est-ce que vous gardez le contact avec les différentes factions?",103)
	NODE(103)
		SAY("Nous avons tous les moyens de communication existants à notre disposition. Et nous avons aussi un petit QG là-bas. Il est dissimulé sous Bump Asylum, dans Pepper Park 02. Un membre des Mercs s'y trouve à toute heure. Vous pouvez lui rendre visite et observer comment il travaille. Il s'appelle Gerard. Lorsque vous avez terminé, vous pourrez revenir pour votre dernière mission d'observation.")
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
		

--------------------------------------------------------------------
--GERARD
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ne me faites pas perdre mon temps.")
			ENDDIALOG()
		else
			SAY("Ravi de voir quelqu'un de la Base Militaire. Dites-moi, qu'est-ce qui vous amène ici?")

			ANSWER("C'est Marcel qui m'envoie. Je veux obtenir mon Ruban Blanc, et je dois vous observer au travail.",151)
		end
	NODE(151)
		SAY("Parfait. Mais actuellement, c'est plutôt calme. Vous avez des nouvelles? Les Anges Déchus se décident enfin à attaquer? La dernière fois que je suis passé à la Base Militaire, on peut dire que j'était agité...")

		ANSWER("C'est à dire?",152)
	NODE(152)
		SAY("Ben vous savez, chaque fois que les Anges Déchus nous attaquent avec leurs hackers, il faut qu'on riposte en les attaquant.")

		ANSWER("Oui, on m'a parlé de ça. Il y a encore quelques problèmes à ce sujet. en fait, Cajun a décidé qu'il n'attaquerait pas les Anges Déchus.",153)
	NODE(153)
		SAY("Alors l'affaire se calme? C'est bien, l'Oeil sait ce qui est bon pour nous.")

		ANSWER("Mais il y a beaucoup de monde qui soutient Marcel. Lui, il pense qu'on devrait attaquer les Anges Déchus.",154)
	NODE(154)
		SAY("J'aimerais bien qu'ils trouvent un accord bientôt. Je n'ai pas envie de revenir à la Base Militaire pour voir une guerre entre frères.")

		ANSWER("Pour l'instant, c'est encore calme. Mais bon, revenons à ce qui m'amène. Je dois vous observer au travail.",155)
	NODE(155)
		SAY("Hmm, d'accord. J'assure l'intermédiaire avec les personnes qui désirent avoir recours à nos services pour s'occuper d'un problème local. C'est à peu près tout ce que je fais. C'est un peu plus intéressant lorsque le Dragon Noir et Tsunami se font la guerre, mais c'est tout.")

		ANSWER("Merci. Encore une question... Est-ce que vous savez où je pourrais trouver une certaine Rose?",156)
	NODE(156)
		SAY("Rose? Oui, je la connais, mais qu'est-ce que vous lui voulez?")

		ANSWER("Mitchell est son père, et il m'a demandé de lui rendre visite. Elle travaille à CityAdmin, et habite à Pepper Park, mais je ne sais pas où.",157)
	NODE(157)
		SAY("Ha, la bonne blague. Non, pas du tout, elle ne se trouve pas très loin du QG du Dragon Noir, même si elle ne travaille pas pour eux. Je ne sais pas exactement ce qu'elle fait, mais elle ne travaille pas pour CityAdmin, c'est certain. Je pourrai lui demander, si vous voulez.")

		ANSWER("Ca me serait utile, parce que j'ai besoin de l'approbation de son père pour recevoir mon Ruban Blanc.",158)

	NODE(158)
		SAY("D'accord. Et puis en ce moment je n'ai rien à faire, alors... Je vais aller lui parler, revenez plus tard.")
		SETNEXTDIALOGSTATE(159)
		ENDDIALOG()

	NODE(159)
		SAY("Désolé, je n'ai pas encore pu lui parler. Donnez-moi un peu plus de temps.")
		SETNEXTDIALOGSTATE(160)
		ENDDIALOG()
	NODE(160)
--Paket von Rose
		GIVEITEM(9451)
		SAY("J'ai pu lui parler, elle m'a demandé de vous donner ce paquet à transmettre à son père. Elle ne veux pas qu'il sache qu'elle travaille comme danseuse.")
		
		SETNEXTDIALOGSTATE(161)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(161)
		SAY("Vous feriez bien de retourner à la Base Militaire. L'endroit n'est pas sûr.")
		ENDDIALOG()



--------------------------------------------------------------------
--Marcel
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Allez d'abord voir Gerard au Bump Asylum. C'est dans Pepper Park 02. Oui, je pense que c'est la bonne adresse.")
			ENDDIALOG()
		else
			SAY("Bien, j'ai la confirmation de Gérard. Vous avez déjà terminé vos deux premières missions d'observation. Pour la dernière, je vous ai prévu quelque chose de spécial. Gerome et son partenaire ont dressé un camp près d'une des entrées de Tech Haven. Dans le secteur G 07 pour être précis. Je leur ai demandé de garder la position jusqu'au moment où on aura une opportunité d'attaquer les Anges Déchus.")

			ANSWER("Attendez, je pensais que l'Oeil ne voulait pas qu'on les attaque...",201)
		end
	NODE(201)
		SAY("L'Oeil est vieux, il a oublié que nous avions des forces. J'ai presque autant de suivants que lui. Pourquoi est-ce que je devrais me soucier de ce qu'il pense? Je ne suis pas de ceux qui remettent en cause les traditions. Maintenant, partez.")
		SETNEXTDIALOGSTATE(350)
		ENDDIALOG()

--------------------------------------------------------------------
--Mitchell
--250
	NODE(250)
--Paket von Rose
		TAKEITEM(9451)
		if(result==0)then
			SAY("Vous avez vu ma fille? Vous avec été à Pepper Park?")
			ENDDIALOG()
		else
			SAY("Ah, vous voilà. Alors, comment va ma fille? Merci pour le paquet.")

			ANSWER("Je pense qu'elle est en mauvaise posture. Elle ne travaille plus pour CityAdmin. Elle est entrée au service d'une compagnie douteuse. Pour être honnête, je crois qu'elle travaille comme danseuse.",251)
		end
	NODE(251)
		SAY("Quoi? Si vous me racontez des histoires, je vous promets que vous...")

		ANSWER("Je pense que c'est la vérité.",252)
	NODE(252)
		SAY("Et elle ne disait rien depuis tout ce temps... Il est grand temps que j'aie une discussion avec elle. Allez-vous en, j'ai besoin de penser, j'ai besoin de temps... seul. Revenez plus tard.")
		SETNEXTDIALOGSTATE(253)
		ENDDIALOG()
		
	NODE(253)
		GIVEMONEY(4000)
		SAY("Merci de m'en avoir parlé. Tenez, prenez ces quelques crédits.")
		SETNEXTDIALOGSTATE(254)
		ENDDIALOG()

	NODE(254)
		SAY("Je vais soutenir votre candidature, c'est une certitude.")
		ENDDIALOG()
--------------------------------------------------------------------
--Gerome
--300		

	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Soldat, c'est une zone dangereuse. Vous feriez mieux de vous en aller.")
			ENDDIALOG()
		else
			SAY("Soldat, où est votre ruban blanc?")
		
			ANSWER("Je n'en ai pas encore, mais j'espère en avoir un une fois que j'aurai terminé cette mission.",301)
		end
	NODE(301)
		SAY("Il me faut des renforts, et ce qu'ils m'envoient c'est un Rookie...")
		
		ANSWER("Je n'ai pas choisi d'être ici pour observer. Si vous voulez, je peux vous aider.",302)
	NODE(302)
		SAY("Non, c'est impossible. Pardon, je ne voulais pas vous énerver. Ces Warbots commencent à faire beaucoup pour nous deux. Et toujours pas d'Anges Déchus à l'horizon, juste quelques runners de temps en temps.")
		
		ANSWER("Qu'est-ce que je peux faire en tant qu'observateur?",303)
	NODE(303)
		SAY("Honnêtement, pas grand chose. Je ne remets pas en cause les ordres de Marcel, mais vous n'avez rien à faire ici. Mais je vais tout de même vous donner mon approbation pour votre Ruban Blanc. C'est bon signe de voir que vous êtes parvenu en vie jusqu'ici. J'espère vous revoir lorsque vous aurez votre Ruban Blanc. Allez voir Marcel maintenant.")
		SETNEXTDIALOGSTATE(304)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(304)
		SAY("Je prendrais bien quelques vacances. A Pepper Park, on trouve de quoi s'amuser, vous savez. Et moi, je suis là, entouré de mutants et de poussière. Pensez à demander au QG de me faire remplacer, je commence à en avoir marre.")
		ENDDIALOG()
		
--------------------------------------------------------------------
--Marcel
--350	
	NODE(350)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Gerome se trouve près d'une des entrées de Tech Haven, dans le secteur G 07. Revenez ici après lui avoir parlé.")
			ENDDIALOG()
		else
			SAY("Félicitations : en complétant ces trois missions d'observation, vous venez de gagner votre Ruban Blanc. Maintenant, vous représenter l'avenir de CityMercs. Chaque fois que je décerne un Ruban Blanc, je repense à ce Ruban Blanc très courageux qui s'appelait Arthur. C'est la tradition d'entendre cette histoire. Voulez-vous l'entendre?")
	
			ANSWER("Evidemment.",351)
		end
	NODE(351)
		SAY("Arthur était un Rookie très fragile lorsqu'il a commencé chez nous. Mais après quelques mois, il rivalisait avec n'importe quel CityMercs. Mais en restant toujours très discret. Un jour, il a reçu son Ruban Blanc. Il gardait un convoi de pièces détachées avec d'autres Mercs, je ne sais plus pour quel client. Une nuit, ils dressèrent le campement à l'abri d'une falaise. Il avait plu toute la journée, ils n'avaient pas fait beaucoup de surveillance.")
	
		ANSWER("CONTINUER",352)
	NODE(352)
		SAY("D'un seul coup, une grenade a explosé en plein milieu du campement, et trois Mercs sur quatre ont été blessés. C'était une attaque des Fils de l'Anarchie; Arthur aurait pu s'enfuir, mais il a décidé de gagner un peu de temps pour que ses amis puissent se mettre en sûreté. Il a affronté une dizaine de Fils de l'Anarchie pour sauver ses camarades.")
	
		ANSWER("Il s'en est sorti?",353)
	NODE(353)
		GIVEMONEY(10000)
		SAY("Il est tombé au combat, mais ses amis ont survécu pour raconter ce qui s'était passé. Maintenant, vous voyez ce qu'est un véritable Ruban Blanc. Alors conduisez-vous honorablement en le portant, n'attirez pas la honte sur vous. A présent, entraînez-vous, car les choses sérieuses vont commencer bientôt. Parlez à l'officier de recrutement lorsque vous êtes prêt. (prochaine mission au niveau 35)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(11,2)
		ENDDIALOG()			


end