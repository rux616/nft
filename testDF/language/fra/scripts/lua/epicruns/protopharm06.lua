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
		SAY("M. George a paru assez tendu lorsqu'il m'a contacté. Il m'a dit que vous deviez le rencontrer aussi rapidement que possible. Ne me demandez pas pourquoi, je n'en sais rien.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Vous devriez aller parler à George.")
		ENDDIALOG()

--------------------------------------------------------------------
--
--50
	NODE(50)
		SAY("Dès que nous trouvons une piste, elle aboutit sur un cul de sac. J'ai l'impression de partir à la recherche de fantômes qui sont dans ma tête et nulle part ailleurs. Mais de nombreuses doses de Spirula ont déjà été livrées un autre endroit.")

		ANSWER("Combien de doses est-ce qu'ils ont produit?",51)
	NODE(51)
		SAY("Selon les experts, beaucoup. Nous courons droit à la catastrophe si jamais la nouvelle se répand. Je n'ose même pas penser à une nouvelle vague de mutations. ProtoPharm subirait un coup sévère.")

		ANSWER("Alors on n'a pas le choix : il faut trouver un moyen de retirer toutes les doses du marché.",52)
	NODE(52)
		SAY("Plus facile à dire qu'à faire. ProtoPharm ne peut pas se permettre de racheter toutes ces drogues. Nous avons besoin de quelqu'un qui ait l'expérience de la situation. Je pense à un groupe de gens en particulier. Je vais vous dire quelque chose, mais ça n'est pas officiel : ProtoPharm a des contacts avec le Dragon Noir, et nous entendons bien les mettre à profit.")

		ANSWER("Le Dragon Noir? On peut leur faire confiance?",53)
	NODE(53)
		SAY("On n'a pas le choix si on veut enrayer l'épidémie. Je vais vous confier cette mission. Vous ne nous avez pas laissé tomber les fois précédentes, et je sais que vous ne nous ferez pas faux bond cette fois-ci encore. Allez voir Max : vous le trouverez dans la prison de l'Outzone. Faites ce que vous avez à faire, mais faites attention! Lorsque vous avez terminé, revenez me voir. Les drogues doivent disparaître aussi rapidement que possible.")
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()


--------------------------------------------------------------------
--MAX 
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Tu es sur un sol mouvant, l'ami. Déguerpis avant de t'attirer des ennuis.")
			ENDDIALOG()
		else
			SAY("Tu es sur mon territoire. J'espère que tu as une bonne explication.")

			ANSWER("On échangera des compliments plus tard. ProtoPharm a un job pour toi. Retirer toutes les doses de Spirula du marché, peu importe le coût de l'opération.",101)
		end
	NODE(101)
		SAY("Très bien, on va contacter tous les gens qu'on peut mettre sur le coup. Mais il faudra attendre une semaine avant de voir les rus complètement nettoyées. Pas moyen d'aller plus vite. Et puis il y a autre chose...")

		ANSWER("Alors je m'en contenterai. Oui, quoi d'autre?",102)
	NODE(102)
		SAY("Je pourrai faire ça que si quelqu'un me remplace. Je peux pas abandonner mes clients comme ça. Tu comprends, n'est-ce pas?")

		ANSWER("Alors j'en déduis que tu attends quelque chose de moi.",103)
	NODE(103)
		SAY("Oui : que tu fasses mon travail pendant que je fais une faveur à ProtoPharm. Faut que tu descendes quelques runners de Tsunami. Pas de videur, pas de pute. Que des runners. D'accord?")

		ANSWER("Si ça peut rendre service, je vais le faire. Mais je n'ai pas envie de commencer une guerre contre Tsunami...",104)
	NODE(104)
		SAY("C'est pas si grave. Bon, c'est des brutes, des violents, mais nous aussi. Tu devrais t'y mettre tout de suite, pendant qu'on fait du nettoyage de Spirula. Après tout, on a tout intérêt à garder de bonnes relations avec ProtoPharm.")
		SETNEXTDIALOGSTATE(105)
		ENDDIALOG()

--Spieler killt einen Tsunami
		
	NODE(105)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Souviens-toi, il faut que tu descendes un Tsunami.")
			ENDDIALOG()
		else
			SAY("Bien fait pour eux, ça leur apprendra. Maintenant, si on s'occupait de notre petit problème de Spirula?")
			ENDDIALOG()

		end

--------------------------------------------------------------------
--GEORGE
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Allez voir Max, dans la prison de l'Outzone. Et assurez-vous qu'il fasse le nécessaire pour résoudre notre problème.")
			ENDDIALOG()
		else
			SAY("J'ai déjà reçu le message, j'espère qu'il n'est pas trop tard. Pour être honnête, ça commence déjà à se calmer un peu. Michail est sous surveillance constante, et on pense vraiment que c'est lui qui a remis la Spirula sur le marché. Il a amélioré la formule pour qu'elle ne cause plus de mutations, néanmoins. Mais on ne peut plus permettre à Finster de continuer à affecter ProtoPharm. Le CryoVault contenant le véritable Jakob Finster a été sécurisé et ramené dans nos locaux.")

			ANSWER("Alors tout est bien qui finit bien.",151)
		end
	NODE(151)
		GIVEMONEY(40000)
		GIVEITEM(9405,255)
--EPIC ITEM
		SAY("Oui, en effet. On m'a demandé de vous donner cette récompense, ainsi qu'un de nos implants de pointe. Il fonctionne avec la nouvelle version de la Spirula, et améliore vos résistances. J'irai même jusqu'à vous suggérer de fonder votre propre clan. J'espère que je vous reverrai de temps en temps, même si je n'ai plus de missions à vous donner de la part de ProtoPharm.")

		EPICRUNFINISHED(6,5)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

end