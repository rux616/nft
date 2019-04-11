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
		SAY("Allez parler à McMillan. Il avait l'air tout excité la dernière fois qu'il vous a demandé.")
		ACCEPTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Je pense que vous devriez vraiment aller voir McMillan.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("Vous pensez que je vais rester là à me répéter? Lorsque je dis quelque chose DEUX FOIS, c'est que je suis sérieux!!!")
		ENDDIALOG()
		

-----------------------------------------------------
--McMillan

	NODE(50)
		SAY("Nous avons enfin l'identité de notre oiseau de malheur. C'est le directeur des opérations de Tangent. On est sur le point de mettre un terme à cette histoire sordide. Mais on ne pourra agir qu'avec votre aide.")
		
		ANSWER("CONTINUER",51)

	NODE(51)
		SAY("Pour ce travail, on a besoin de quelqu'un qui fasse preuve d'une loyauté sans failles à BioTech, et qui connaisse son métier sur le bout des doigts. Notre choix n'a pas été compliqué : vous remplissez tous ces critères. Je pense qu'on peut vous confier cette mission.")
		
		ANSWER("C'est un honneur pour moi. Je ferai de mon mieux.",52)
	NODE(52)
		SAY("Pour mettre fin à cette histoire aussi vite que possible, Seymour Jordan en personne a autorisé des mesures d'exception. Nous ne pouvons pas attendre que CityAdmin entreprenne une action contre lui.")
		
		ANSWER("CONTINUER",53)
	NODE(53)
		SAY("C'est pour cela qu'il faut tuer ce directeur des opérations de Tangent. Ce sera un message très fort pour tous ceux qui sont impliqués dans cette histoire. Et c'est pourquoi nous avons besoin de loyal tel que vous.")
		
		ANSWER("Bien, je vais m'occuper du problème pour le salut et la prospérité de Biotech.",54)
	NODE(54)
		SAY("Vous êtes vraiment quelqu'un d'admirable. Il se trouve à son restaurant préféré, dans Via Rosso 3. Mais une chose néanmoins : si vous réussissez, nous ne pourrons plus vous donner de missions. Vous serez en effet recherché dans tout Neocron. Mais vous resterez quelqu'un de très estimé chez BioTech, évidemment.")
		
		ANSWER("CONTINUER",55)
	NODE(55)
		
		SAY("Pour assurer votre succès, BioTech a mis au point un implant spécial qui vous aidera dans votre mission. Cet implant n'est pas en vente dans le commerce, mais nous vous le donnons gratuitement. Bonne chance.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()

--Spieler bring den Director of Operations von Tangent um Trigger 6 (0)
		
	NODE(56)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("On vous a demandé d'aplatir le directeur des opérations de Tangent.")
			ENDDIALOG()
		else
			GIVEMONEY(100000)
			SAY("Felicitations! Cet avertissement devrait être assez intimidant pour Tangent. Vous avez rendu un immense service à Biotech. J'aimerais aussi vous donner ces 100.000 crédits à titre personnel. Cette récompense vient directement du bureau des dirigeants. Bonne chance pour votre avenir, pensez à fonder un clan si vous souhaitez soutenir BioTech aussi efficacement que vous l'avez déjà fait.")
			EPICRUNFINISHED(5,5)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end	

end