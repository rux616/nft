--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--6(0),killNPC,Tangent Direx of Operations McMillan
--1,D,McMillan



--Startnode, Person
--0 Human Resource
--50 McMillan


-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Allez parler � McMillan. Il avait l'air tout excit� la derni�re fois qu'il vous a demand�.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Je pense que vous devriez vraiment aller voir McMillan.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("Vous pensez que je vais rester l� � me r�p�ter? Lorsque je dis quelque chose DEUX FOIS, c'est que je suis s�rieux!!!")
		ENDDIALOG()
		

-----------------------------------------------------
--McMillan

	NODE(50)
		SAY("Nous avons enfin l'identit� de notre oiseau de malheur. C'est le directeur des op�rations de Tangent. On est sur le point de mettre un terme � cette histoire sordide. Mais on ne pourra agir qu'avec votre aide.")
		
		ANSWER("CONTINUER",51)

	NODE(51)
		SAY("Pour ce travail, on a besoin de quelqu'un qui fasse preuve d'une loyaut� sans failles � BioTech, et qui connaisse son m�tier sur le bout des doigts. Notre choix n'a pas �t� compliqu� : vous remplissez tous ces crit�res. Je pense qu'on peut vous confier cette mission.")
		
		ANSWER("C'est un honneur pour moi. Je ferai de mon mieux.",52)
	NODE(52)
		SAY("Pour mettre fin � cette histoire aussi vite que possible, Seymour Jordan en personne a autoris� des mesures d'exception. Nous ne pouvons pas attendre que CityAdmin entreprenne une action contre lui.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("C'est pour cela qu'il faut tuer ce directeur des op�rations de Tangent. Ce sera un message tr�s fort pour tous ceux qui sont impliqu�s dans cette histoire. Et c'est pourquoi nous avons besoin de loyal tel que vous.")
		
		ANSWER("Bien, je vais m'occuper du probl�me pour le salut et la prosp�rit� de Biotech.",54)
	NODE(54)
		SAY("Vous �tes vraiment quelqu'un d'admirable. Il se trouve � son restaurant pr�f�r�, dans Via Rosso 3. Mais une chose n�anmoins : si vous r�ussissez, nous ne pourrons plus vous donner de missions. Vous serez en effet recherch� dans tout Neocron. Mais vous resterez quelqu'un de tr�s estim� chez BioTech, �videmment.")
		
		ANSWER("CONTINUER",55)
	NODE(55)
		
		SAY("Pour assurer votre succ�s, BioTech a mis au point un implant sp�cial qui vous aidera dans votre mission. Cet implant n'est pas en vente dans le commerce, mais nous vous le donnons gratuitement. Bonne chance.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()

--Spieler bring den Director of Operations von Tangent um Trigger 6 (0)
		
	NODE(56)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On vous a demand� d'aplatir le directeur des op�rations de Tangent.")
			ENDDIALOG()
		else
			GIVEMONEY(100000)
			SAY("Felicitations! Cet avertissement devrait �tre assez intimidant pour Tangent. Vous avez rendu un immense service � Biotech. J'aimerais aussi vous donner ces 100.000 cr�dits � titre personnel. Cette r�compense vient directement du bureau des dirigeants. Bonne chance pour votre avenir, pensez � fonder un clan si vous souhaitez soutenir BioTech aussi efficacement que vous l'avez d�j� fait.")
			EPICRUNFINISHED(5,5)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end	

end