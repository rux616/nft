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
		SAY("Begeben sie sich zu McMillan. Er hatte sehr aufgeregt geklungen, als er nach ihnen fragte.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("Ich denke, sie sollten wirklich McMillan aufsuchen.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("Glauben sie ich stehe hier um sie zu verarschen? Wenn ich zweimal sage, suchen sie McMillan auf, dann meine ich das auch so !!!")
		ENDDIALOG()
		

-----------------------------------------------------
--McMillan

	NODE(50)
		SAY("Endlich haben wir den Drahtzieher. Euer Hacker war Gold Wert. Es handelt sich dabei um den Director of Operations von Tangent Technologies. Wir sind so nahe dran dieses ganze schändliche Kapitel abzuschliessen. Das geht aber nur mit ihrer Hilfe. ")
		
		ANSWER("WEITER",51)

	NODE(51)
		SAY("Wir brauchen dafür jemanden der uns gegenüber absolut loyal ist und ich denke ich kann mich auf sie verlassen.")
		
		ANSWER("Das ehrt mich natürlich und ich werde mein bestes geben.",52)
	NODE(52)
		SAY("Um das so schnell wie möglich zu einem Ende zu bringen, hat Seymour Jordan persönlich drastische Mittel authorisiert. Wir können einfach nicht warten, bis die CityAdmin Schritte gegen ihn unternimmt. ")
		
		ANSWER("WEITER",53)
	NODE(53)
		SAY("Deshalb soll er umgebracht werden. Das sollte eine gute Warnung sein, denke ich. Allerdings brauchen wir einen absolut loyalen Runner dafür. So wie sie.")
		
		ANSWER("Nun gut, ich werde den Tangent Director of Operations für BioTech töten.",54)
	NODE(54)
		SAY("Sie sind wirklich bewundernswert. Sie können Ihn in Viarosso Sektor 3 finden.  Allerdings gibt es einen Haken. Wenn sie diesen Auftrag erfüllen, können wir ihnen keine Aufträge mehr zuteilen. Sie verstehen das sicher. Sie sind dann immerhin berüchtigt. Auf jeden Fall bleiben sie ein hochangesehenes Mitglied von BioTech.")
		
		ANSWER("WEITER",55)
	NODE(55)
		
		SAY("Damit wir etwas auf Nummer sicher gehen können wurde ein spezielles Implantat entwickelt mit dessen Hilfe sie in einem Kampf um einiges mehr einstecken können. Dieses Implantat ist im Handel nicht erhältlich und sie haben es natürlich schon kostenlos bekommen. Viel Glück.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()

--Spieler bring den Director of Operations von Tangent um Trigger 6 (0)
		
	NODE(56)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Sie sollen den Director of Operations ausschalten.")
			ENDDIALOG()
		else
			GIVEMONEY(100000)
			SAY("Gratulation, diese Warnung an Tangent war hoffentlich deutlich genug. Sie haben BioTech einen sehr grossen Dienst erwiesen. Zum Abschluss möchte ich ihnen noch diese 100 000 Credits übergeben. Keine Angst, das wurde von höchster Stelle authorisiert. Viel Glück weiterhin und überlegen sie, ob sie nicht einen Clan gründen wollen um BioTech weiterhin tatkräftig zu unterstützen.")
			EPICRUNFINISHED(5,5)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end	

end