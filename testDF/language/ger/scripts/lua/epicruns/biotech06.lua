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
		SAY("Endlich haben wir den Drahtzieher. Euer Hacker war Gold Wert. Es handelt sich dabei um den Director of Operations von Tangent Technologies. Wir sind so nahe dran dieses ganze sch�ndliche Kapitel abzuschliessen. Das geht aber nur mit ihrer Hilfe. ")
		
		ANSWER("WEITER",51)

	NODE(51)
		SAY("Wir brauchen daf�r jemanden der uns gegen�ber absolut loyal ist und ich denke ich kann mich auf sie verlassen.")
		
		ANSWER("Das ehrt mich nat�rlich und ich werde mein bestes geben.",52)
	NODE(52)
		SAY("Um das so schnell wie m�glich zu einem Ende zu bringen, hat Seymour Jordan pers�nlich drastische Mittel authorisiert. Wir k�nnen einfach nicht warten, bis die CityAdmin Schritte gegen ihn unternimmt. ")
		
		ANSWER("WEITER",53)
	NODE(53)
		SAY("Deshalb soll er umgebracht werden. Das sollte eine gute Warnung sein, denke ich. Allerdings brauchen wir einen absolut loyalen Runner daf�r. So wie sie.")
		
		ANSWER("Nun gut, ich werde den Tangent Director of Operations f�r BioTech t�ten.",54)
	NODE(54)
		SAY("Sie sind wirklich bewundernswert. Sie k�nnen Ihn in Viarosso Sektor 3 finden.  Allerdings gibt es einen Haken. Wenn sie diesen Auftrag erf�llen, k�nnen wir ihnen keine Auftr�ge mehr zuteilen. Sie verstehen das sicher. Sie sind dann immerhin ber�chtigt. Auf jeden Fall bleiben sie ein hochangesehenes Mitglied von BioTech.")
		
		ANSWER("WEITER",55)
	NODE(55)
		
		SAY("Damit wir etwas auf Nummer sicher gehen k�nnen wurde ein spezielles Implantat entwickelt mit dessen Hilfe sie in einem Kampf um einiges mehr einstecken k�nnen. Dieses Implantat ist im Handel nicht erh�ltlich und sie haben es nat�rlich schon kostenlos bekommen. Viel Gl�ck.")
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
			SAY("Gratulation, diese Warnung an Tangent war hoffentlich deutlich genug. Sie haben BioTech einen sehr grossen Dienst erwiesen. Zum Abschluss m�chte ich ihnen noch diese 100 000 Credits �bergeben. Keine Angst, das wurde von h�chster Stelle authorisiert. Viel Gl�ck weiterhin und �berlegen sie, ob sie nicht einen Clan gr�nden wollen um BioTech weiterhin tatkr�ftig zu unterst�tzen.")
			EPICRUNFINISHED(5,5)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end	

end