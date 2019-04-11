--new
--ProtoPharm

--
--Trigger
--Triggernumber,Type,Person
--0,D,George 50
--1,PvP,3Tsunami killen
--2,D,George 150
--3
--
--Startnode, Person
--0, Human Resource Director
--50, GEORGE
--100, MAX DELAVARE
--150, GEORGE
--200,
--250,
--
--Items
--EPIC PROTORESISTOR 150 9405

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("M. George a paru assez tendu lorsqu'il m'a contact�. Il m'a dit que vous deviez le rencontrer aussi rapidement que possible. Ne me demandez pas pourquoi, je n'en sais rien.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Vous devriez aller parler � George.")
		ENDDIALOG()

--------------------------------------------------------------------
--
--50
	NODE(50)
		SAY("D�s que nous trouvons une piste, elle aboutit sur un cul de sac. J'ai l'impression de partir � la recherche de fant�mes qui sont dans ma t�te et nulle part ailleurs. Mais de nombreuses doses de Spirula ont d�j� �t� livr�es un autre endroit.")

		ANSWER("Combien de doses est-ce qu'ils ont produit?",51)
	NODE(51)
		SAY("Selon les experts, beaucoup. Nous courons droit � la catastrophe si jamais la nouvelle se r�pand. Je n'ose m�me pas penser � une nouvelle vague de mutations. ProtoPharm subirait un coup s�v�re.")

		ANSWER("Alors on n'a pas le choix : il faut trouver un moyen de retirer toutes les doses du march�.",52)
	NODE(52)
		SAY("Plus facile � dire qu'� faire. ProtoPharm ne peut pas se permettre de racheter toutes ces drogues. Nous avons besoin de quelqu'un qui ait l'exp�rience de la situation. Je pense � un groupe de gens en particulier. Je vais vous dire quelque chose, mais �a n'est pas officiel : ProtoPharm a des contacts avec le Dragon Noir, et nous entendons bien les mettre � profit.")

		ANSWER("Le Dragon Noir? On peut leur faire confiance?",53)
	NODE(53)
		SAY("On n'a pas le choix si on veut enrayer l'�pid�mie. Je vais vous confier cette mission. Vous ne nous avez pas laiss� tomber les fois pr�c�dentes, et je sais que vous ne nous ferez pas faux bond cette fois-ci encore. Allez voir Max : vous le trouverez dans la prison de l'Outzone. Faites ce que vous avez � faire, mais faites attention! Lorsque vous avez termin�, revenez me voir. Les drogues doivent dispara�tre aussi rapidement que possible.")
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()


--------------------------------------------------------------------
--MAX 
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tu es sur un sol mouvant, l'ami. D�guerpis avant de t'attirer des ennuis.")
			ENDDIALOG()
		else
			SAY("Tu es sur mon territoire. J'esp�re que tu as une bonne explication.")

			ANSWER("On �changera des compliments plus tard. ProtoPharm a un job pour toi. Retirer toutes les doses de Spirula du march�, peu importe le co�t de l'op�ration.",101)
		end
	NODE(101)
		SAY("Tr�s bien, on va contacter tous les gens qu'on peut mettre sur le coup. Mais il faudra attendre une semaine avant de voir les rus compl�tement nettoy�es. Pas moyen d'aller plus vite. Et puis il y a autre chose...")

		ANSWER("Alors je m'en contenterai. Oui, quoi d'autre?",102)
	NODE(102)
		SAY("Je pourrai faire �a que si quelqu'un me remplace. Je peux pas abandonner mes clients comme �a. Tu comprends, n'est-ce pas?")

		ANSWER("Alors j'en d�duis que tu attends quelque chose de moi.",103)
	NODE(103)
		SAY("Oui : que tu fasses mon travail pendant que je fais une faveur � ProtoPharm. Faut que tu descendes quelques runners de Tsunami. Pas de videur, pas de pute. Que des runners. D'accord?")

		ANSWER("Si �a peut rendre service, je vais le faire. Mais je n'ai pas envie de commencer une guerre contre Tsunami...",104)
	NODE(104)
		SAY("C'est pas si grave. Bon, c'est des brutes, des violents, mais nous aussi. Tu devrais t'y mettre tout de suite, pendant qu'on fait du nettoyage de Spirula. Apr�s tout, on a tout int�r�t � garder de bonnes relations avec ProtoPharm.")
		SETNEXTDIALOGSTATE(105)
		ENDDIALOG()

--Spieler killt einen Tsunami
		
	NODE(105)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Souviens-toi, il faut que tu descendes un Tsunami.")
			ENDDIALOG()
		else
			SAY("Bien fait pour eux, �a leur apprendra. Maintenant, si on s'occupait de notre petit probl�me de Spirula?")
			ENDDIALOG()

		end

--------------------------------------------------------------------
--GEORGE
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Allez voir Max, dans la prison de l'Outzone. Et assurez-vous qu'il fasse le n�cessaire pour r�soudre notre probl�me.")
			ENDDIALOG()
		else
			SAY("J'ai d�j� re�u le message, j'esp�re qu'il n'est pas trop tard. Pour �tre honn�te, �a commence d�j� � se calmer un peu. Michail est sous surveillance constante, et on pense vraiment que c'est lui qui a remis la Spirula sur le march�. Il a am�lior� la formule pour qu'elle ne cause plus de mutations, n�anmoins. Mais on ne peut plus permettre � Finster de continuer � affecter ProtoPharm. Le CryoVault contenant le v�ritable Jakob Finster a �t� s�curis� et ramen� dans nos locaux.")

			ANSWER("Alors tout est bien qui finit bien.",151)
		end
	NODE(151)
		GIVEMONEY(40000)
		GIVEITEM(9405,255)
--EPIC ITEM
		SAY("Oui, en effet. On m'a demand� de vous donner cette r�compense, ainsi qu'un de nos implants de pointe. Il fonctionne avec la nouvelle version de la Spirula, et am�liore vos r�sistances. J'irai m�me jusqu'� vous sugg�rer de fonder votre propre clan. J'esp�re que je vous reverrai de temps en temps, m�me si je n'ai plus de missions � vous donner de la part de ProtoPharm.")

		EPICRUNFINISHED(6,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end