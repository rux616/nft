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
		SAY("Ahh, un tout nouveau Rookie. J'ai du travail pour vous, et vous ne pourrez pas refuser. Vous savez � quoi je fais allusion?")

		ANSWER("Je pense que vous voulez parler de mon ruban blanc?",1)
	NODE(1)
		SAY("Si vous pensez que �a sera une partie de plaisir, laissez-moi vous dire quelque chose. Recevoir un ruban blanc est un honneur. En tant que Rookie, vous �tes d�j� des n�tres, mais si vous avez un Ruban Blanc vous faites vraiment partie de la famille. Cette r�compense vaut vraiment quelque chose.")

		ANSWER("Je vais voir ce que je peux faire. Par quoi est-ce que je commence?",2)
		ANSWER("Je vais encore m'entra�ner. Je ne me sens pas encore � la hauteur.",5)
	NODE(2)
		SAY("Tr�s bien. Alors allez d'abord voir Mitchell, il se trouve juste � l'ext�rieur de la base militaire, dans les Terres Br�l�es. Son travail est d'observer les mouvements des Warbots et de nous avertir en cas de danger. C'est d�j� un ruban noir, mais il semble se plaire dans les Terres Br�l�es.")

		ANSWER("Je pensais que je devais faire trois missions. Quelles sont les deux autres?",3)
	NODE(3)
		SAY("Non, pour l'instant je n'ai que cette mission pour vous. Mais je peux demander � Marcel d'organiser quelque chose. Je pense qu'il vous a � la bonne. Il a s�rement des id�es en t�te. Mais allez d'abord voir Mitchell, on l'a pr�venu de votre arriv�e.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(4)
		ENDDIALOG()
	NODE(4)
		SAY("Vous trouverez Mitchell � l'ext�rieur de la base militaire. Ensuite, Marcel aura peut-�tre quelque chose pour vous dans le secteur 2.")
		ENDDIALOG()
	NODE(5)
		SAY("Bon, vous reviendrez me voir plus tard j'imagine.")
		ENDDIALOG()
		

--------------------------------------------------------------------
--Mitchell
--50
	NODE(50)
		SAY("Je m'attendais � vous voir. Bon, �coutez-moi bien. Je vais vous expliquer ce que je fais ici, et en retour vous allez me faire une faveur. Qu'est-ce que vous en dites?")

		ANSWER("Attendez. Je ne devais pas seulement observer?",51)
	NODE(51)
		SAY("Me faites pas ce coup-l�. Je suis chez les Mercs depuis un bout de temps, je connais le syst�me. Si jamais je l�ve le petit doigt, vous n'aurez jamais votre ruban blanc. Compris?")

		ANSWER("Compris. Dans tous les cas, je suis l� pour apprendre, non?",52)
	NODE(52)
		SAY("Exact. Maintenant �coutez-moi. Dehors, c'est toujours moiti�-moiti�. Un faux pas, et vous pouvez vous retrouv� �parpill� sur des kilom�tres. Il faut savoir faire la diff�rence entre ce qui peut vous tuer imm�diatement, et ce qui ne peut que vous blesser.")

		ANSWER("Et comment?",53)
	NODE(53)
		SAY("Je vais vous le dire. Si vous voyez quelque chose voler dans le ciel, commencez � courir, parce que c'est vraisemblablement un Hoverbomber. Et faites attention aux gros robots du genre Warbot, parce qu'ils ont des armes � longue port�e qui peuvent vous r�duire en bouillie. Certains gros animaux peuvent eux aussi �tre tr�s dangereux.")

		ANSWER("Je ne savais pas que c'�tait si risqu�.",54)
	NODE(54)
		SAY("Et encore, �a n'est que le commencement. Mais je vous en ai d�j� assez dit pour cette fois. Maintenant, j'aimerais que vous me fassiez une petite faveur. Quelque chose d'insignifiant. J'ai une fille qui vit � Neocron, vous savez, cette grande ville avec ces hautes tours partout... On ne s'est pas vus depuis une �ternit�, et j'aimerais que vous alliez lui rendre visite. Dites-lui que je suis toujours en vie et que je pense � elle. D'accord?")

		ANSWER("A Neocron?!! Vous savez que c'est de l'autre c�t� des terres Br�l�es?",55)
	NODE(55)
		SAY("Oui, �videmment. C'est � deux pas d'ici. Si vous voulez, vous pouvez aller voir Marcel d'abord pour prendre votre prochaine mission. Si vous avez de la chance, cette mission sera aussi d'aller � Neocron, et vous ferez d'une pierre deux coups. Mais soignez vos mani�res, elle travaille pour CityAdmin. Elle a un appartement � Pepper Park, et elle s'appelle Rose.")
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
			SAY("Il est �trange, Mitchell, vous ne trouvez pas? Je pense que les radiations des Terres Br�l�es lui ont un peu grill� le cerveau. Mais vous avez encore des missions d'observation � faire, n'est-ce pas?")

			ANSWER("Je veux r�ussir � obtenir mon ruban blanc.",101)
		end
	NODE(101)
		SAY("Votre acharnement est admirable. Vous savez que CityMercs est neutre. Nous avons toujours �t� neutres. On nous paye pour r�soudre les probl�mes que les autres ne peuvent pas r�soudre. C'est pour cela, et en raison de notre professionnalisme, que nous avons de nombreux amis. Un grand nombre de ces amis provient de Neocron, et ces amis sont principalement les compagnies qui peuvent acheter nos services. Vous comprenez?")

		ANSWER("Oui, je suis d�j� au courant de tout �a.",102)
	NODE(102)
		SAY("Bien, mais je tenais tout de m�me � vous le rappeler. Les seules factions avec lesquelles nos rapports sont tendus, ce sont le Dragon Noir et les Gardiens du Cr�puscule. C'est une longue histoire, je vais passer sur les d�tails. Oh, et les Fils de l'Anarchie, �videmment. Presque tout le monde les d�teste.")

		ANSWER("Et comment est-ce que vous gardez le contact avec les diff�rentes factions?",103)
	NODE(103)
		SAY("Nous avons tous les moyens de communication existants � notre disposition. Et nous avons aussi un petit QG l�-bas. Il est dissimul� sous Bump Asylum, dans Pepper Park 02. Un membre des Mercs s'y trouve � toute heure. Vous pouvez lui rendre visite et observer comment il travaille. Il s'appelle Gerard. Lorsque vous avez termin�, vous pourrez revenir pour votre derni�re mission d'observation.")
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
			SAY("Ravi de voir quelqu'un de la Base Militaire. Dites-moi, qu'est-ce qui vous am�ne ici?")

			ANSWER("C'est Marcel qui m'envoie. Je veux obtenir mon Ruban Blanc, et je dois vous observer au travail.",151)
		end
	NODE(151)
		SAY("Parfait. Mais actuellement, c'est plut�t calme. Vous avez des nouvelles? Les Anges D�chus se d�cident enfin � attaquer? La derni�re fois que je suis pass� � la Base Militaire, on peut dire que j'�tait agit�...")

		ANSWER("C'est � dire?",152)
	NODE(152)
		SAY("Ben vous savez, chaque fois que les Anges D�chus nous attaquent avec leurs hackers, il faut qu'on riposte en les attaquant.")

		ANSWER("Oui, on m'a parl� de �a. Il y a encore quelques probl�mes � ce sujet. en fait, Cajun a d�cid� qu'il n'attaquerait pas les Anges D�chus.",153)
	NODE(153)
		SAY("Alors l'affaire se calme? C'est bien, l'Oeil sait ce qui est bon pour nous.")

		ANSWER("Mais il y a beaucoup de monde qui soutient Marcel. Lui, il pense qu'on devrait attaquer les Anges D�chus.",154)
	NODE(154)
		SAY("J'aimerais bien qu'ils trouvent un accord bient�t. Je n'ai pas envie de revenir � la Base Militaire pour voir une guerre entre fr�res.")

		ANSWER("Pour l'instant, c'est encore calme. Mais bon, revenons � ce qui m'am�ne. Je dois vous observer au travail.",155)
	NODE(155)
		SAY("Hmm, d'accord. J'assure l'interm�diaire avec les personnes qui d�sirent avoir recours � nos services pour s'occuper d'un probl�me local. C'est � peu pr�s tout ce que je fais. C'est un peu plus int�ressant lorsque le Dragon Noir et Tsunami se font la guerre, mais c'est tout.")

		ANSWER("Merci. Encore une question... Est-ce que vous savez o� je pourrais trouver une certaine Rose?",156)
	NODE(156)
		SAY("Rose? Oui, je la connais, mais qu'est-ce que vous lui voulez?")

		ANSWER("Mitchell est son p�re, et il m'a demand� de lui rendre visite. Elle travaille � CityAdmin, et habite � Pepper Park, mais je ne sais pas o�.",157)
	NODE(157)
		SAY("Ha, la bonne blague. Non, pas du tout, elle ne se trouve pas tr�s loin du QG du Dragon Noir, m�me si elle ne travaille pas pour eux. Je ne sais pas exactement ce qu'elle fait, mais elle ne travaille pas pour CityAdmin, c'est certain. Je pourrai lui demander, si vous voulez.")

		ANSWER("Ca me serait utile, parce que j'ai besoin de l'approbation de son p�re pour recevoir mon Ruban Blanc.",158)

	NODE(158)
		SAY("D'accord. Et puis en ce moment je n'ai rien � faire, alors... Je vais aller lui parler, revenez plus tard.")
		SETNEXTDIALOGSTATE(159)
		ENDDIALOG()

	NODE(159)
		SAY("D�sol�, je n'ai pas encore pu lui parler. Donnez-moi un peu plus de temps.")
		SETNEXTDIALOGSTATE(160)
		ENDDIALOG()
	NODE(160)
--Paket von Rose
		GIVEITEM(9451)
		SAY("J'ai pu lui parler, elle m'a demand� de vous donner ce paquet � transmettre � son p�re. Elle ne veux pas qu'il sache qu'elle travaille comme danseuse.")
		
		SETNEXTDIALOGSTATE(161)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(161)
		SAY("Vous feriez bien de retourner � la Base Militaire. L'endroit n'est pas s�r.")
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
			SAY("Bien, j'ai la confirmation de G�rard. Vous avez d�j� termin� vos deux premi�res missions d'observation. Pour la derni�re, je vous ai pr�vu quelque chose de sp�cial. Gerome et son partenaire ont dress� un camp pr�s d'une des entr�es de Tech Haven. Dans le secteur G 07 pour �tre pr�cis. Je leur ai demand� de garder la position jusqu'au moment o� on aura une opportunit� d'attaquer les Anges D�chus.")

			ANSWER("Attendez, je pensais que l'Oeil ne voulait pas qu'on les attaque...",201)
		end
	NODE(201)
		SAY("L'Oeil est vieux, il a oubli� que nous avions des forces. J'ai presque autant de suivants que lui. Pourquoi est-ce que je devrais me soucier de ce qu'il pense? Je ne suis pas de ceux qui remettent en cause les traditions. Maintenant, partez.")
		SETNEXTDIALOGSTATE(350)
		ENDDIALOG()

--------------------------------------------------------------------
--Mitchell
--250
	NODE(250)
--Paket von Rose
		TAKEITEM(9451)
		if(result==0)then
			SAY("Vous avez vu ma fille? Vous avec �t� � Pepper Park?")
			ENDDIALOG()
		else
			SAY("Ah, vous voil�. Alors, comment va ma fille? Merci pour le paquet.")

			ANSWER("Je pense qu'elle est en mauvaise posture. Elle ne travaille plus pour CityAdmin. Elle est entr�e au service d'une compagnie douteuse. Pour �tre honn�te, je crois qu'elle travaille comme danseuse.",251)
		end
	NODE(251)
		SAY("Quoi? Si vous me racontez des histoires, je vous promets que vous...")

		ANSWER("Je pense que c'est la v�rit�.",252)
	NODE(252)
		SAY("Et elle ne disait rien depuis tout ce temps... Il est grand temps que j'aie une discussion avec elle. Allez-vous en, j'ai besoin de penser, j'ai besoin de temps... seul. Revenez plus tard.")
		SETNEXTDIALOGSTATE(253)
		ENDDIALOG()
		
	NODE(253)
		GIVEMONEY(4000)
		SAY("Merci de m'en avoir parl�. Tenez, prenez ces quelques cr�dits.")
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
			SAY("Soldat, o� est votre ruban blanc?")
		
			ANSWER("Je n'en ai pas encore, mais j'esp�re en avoir un une fois que j'aurai termin� cette mission.",301)
		end
	NODE(301)
		SAY("Il me faut des renforts, et ce qu'ils m'envoient c'est un Rookie...")
		
		ANSWER("Je n'ai pas choisi d'�tre ici pour observer. Si vous voulez, je peux vous aider.",302)
	NODE(302)
		SAY("Non, c'est impossible. Pardon, je ne voulais pas vous �nerver. Ces Warbots commencent � faire beaucoup pour nous deux. Et toujours pas d'Anges D�chus � l'horizon, juste quelques runners de temps en temps.")
		
		ANSWER("Qu'est-ce que je peux faire en tant qu'observateur?",303)
	NODE(303)
		SAY("Honn�tement, pas grand chose. Je ne remets pas en cause les ordres de Marcel, mais vous n'avez rien � faire ici. Mais je vais tout de m�me vous donner mon approbation pour votre Ruban Blanc. C'est bon signe de voir que vous �tes parvenu en vie jusqu'ici. J'esp�re vous revoir lorsque vous aurez votre Ruban Blanc. Allez voir Marcel maintenant.")
		SETNEXTDIALOGSTATE(304)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(304)
		SAY("Je prendrais bien quelques vacances. A Pepper Park, on trouve de quoi s'amuser, vous savez. Et moi, je suis l�, entour� de mutants et de poussi�re. Pensez � demander au QG de me faire remplacer, je commence � en avoir marre.")
		ENDDIALOG()
		
--------------------------------------------------------------------
--Marcel
--350	
	NODE(350)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Gerome se trouve pr�s d'une des entr�es de Tech Haven, dans le secteur G 07. Revenez ici apr�s lui avoir parl�.")
			ENDDIALOG()
		else
			SAY("F�licitations : en compl�tant ces trois missions d'observation, vous venez de gagner votre Ruban Blanc. Maintenant, vous repr�senter l'avenir de CityMercs. Chaque fois que je d�cerne un Ruban Blanc, je repense � ce Ruban Blanc tr�s courageux qui s'appelait Arthur. C'est la tradition d'entendre cette histoire. Voulez-vous l'entendre?")
	
			ANSWER("Evidemment.",351)
		end
	NODE(351)
		SAY("Arthur �tait un Rookie tr�s fragile lorsqu'il a commenc� chez nous. Mais apr�s quelques mois, il rivalisait avec n'importe quel CityMercs. Mais en restant toujours tr�s discret. Un jour, il a re�u son Ruban Blanc. Il gardait un convoi de pi�ces d�tach�es avec d'autres Mercs, je ne sais plus pour quel client. Une nuit, ils dress�rent le campement � l'abri d'une falaise. Il avait plu toute la journ�e, ils n'avaient pas fait beaucoup de surveillance.")
	
		ANSWER("CONTINUER",352)
	NODE(352)
		SAY("D'un seul coup, une grenade a explos� en plein milieu du campement, et trois Mercs sur quatre ont �t� bless�s. C'�tait une attaque des Fils de l'Anarchie; Arthur aurait pu s'enfuir, mais il a d�cid� de gagner un peu de temps pour que ses amis puissent se mettre en s�ret�. Il a affront� une dizaine de Fils de l'Anarchie pour sauver ses camarades.")
	
		ANSWER("Il s'en est sorti?",353)
	NODE(353)
		GIVEMONEY(10000)
		SAY("Il est tomb� au combat, mais ses amis ont surv�cu pour raconter ce qui s'�tait pass�. Maintenant, vous voyez ce qu'est un v�ritable Ruban Blanc. Alors conduisez-vous honorablement en le portant, n'attirez pas la honte sur vous. A pr�sent, entra�nez-vous, car les choses s�rieuses vont commencer bient�t. Parlez � l'officier de recrutement lorsque vous �tes pr�t. (prochaine mission au niveau 35)")
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(11,2)
		ENDDIALOG()			


end