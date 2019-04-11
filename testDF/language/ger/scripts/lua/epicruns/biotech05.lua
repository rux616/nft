--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Grand
--1,D,McMillan



--Startnode, Person
--0 Human Resource
--50 Grand
--100 McMillan


-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Es ist so einfach nicht mehr hinnehmbar. Täglich kommt eine neue Flut von Gerüchten in das Netz und versucht ganz BioTech zu überschwemmen. Wir können aber nichts gegen so viele einzelne Hacker machen.")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("BioTech hat beschlossen, sich auf die Suche nach dem Hauptdrahtzieher zu machen. Wenn dieser dann gefunden ist, dann werden diese  Informationen bald damit aufhören ins Netz zu kommen. Ein Biest ohne seinen Kopf stirbt, so ist das schon immer gewesen.")
		
		ANSWER("Das übernehme ich gerne für BioTech, aber wo sollen wir anfangen?",2)
		ANSWER("Wenn sie da an mich denken, muss ich sagen, ich kann dieses Mal nicht.",5)
	NODE(2)
		SAY("Dieser Hacker, Grand, scheint sich in dieser Beziehung hervorragend auszukennen. Sie sollten ihn noch einmal besuchen. Motivieren sie ihn dazu, herauszufinden, wer der Drahtzieher hinter dieser ganzen Geschichte ist.")
		
		ANSWER("Ich denke, das wird ein leichtes sein.",3)
	NODE(3)
		SAY("Sie können ihm auch eine kleine Entschädigungssumme von 10000 Credits anbieten. Das könnte ihn zusätzlich noch motivieren. Das ganze wird natürlich von dem Konzern gesponsort. Viel Glück.")
		
		ANSWER("WEITER",4)
	NODE(4)
		SAY("Falls der Hacker erfolgreich ist, treffen sie sich noch mit McMillan. Er will mit ihnen dann das weitere vorgehen besprechen.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(5)
		SAY("Aber es wäre sehr wichtig für BioTech gewesen. Nun, wie sie wollen. Sie sollten sich aber bewusst sein, dass sie BioTech jetzt ganz schön hängen lassen.")
		ENDDIALOG()
		
	NODE(6)
		SAY("Haben sie schon den Hacker in der Outzone 01 besucht?")
		ENDDIALOG()
		

-----------------------------------------------------
--Grand

	NODE(50)
		SAY("Nicht schon wieder!! Ich dachte ich wäre dich endlich los!!")
		
		ANSWER("Es gibt da noch einen kleinen Gefallen, den sie tun können.",51)

	NODE(51)
		SAY("Ich habe doch schon alles gesagt! Was könnte ich denn sonst noch machen, he?")
		
		ANSWER("Ganz einfach. Wir müssen wissen, wer hinter dieser Verleumdungskampagne steckt. Und sie werden es für uns herausfinden.",52)
	NODE(52)
		SAY("Ich weigere mich entschieden, so ausgenutzt zu ...")
		
		ANSWER("BioTech hat 10000 Credits für ihre Hilfe mit eingeplant. Na, immer noch nicht interessiert?",53)

	NODE(53)
		SAY("Und die Zehntausend sind dann mein? Nun vielleicht lässt sich ja doch etwas machen. Aber es wird nicht leicht.")
		
		ANSWER("Hätte mich auch gewundert, wenn mal etwas leicht zu machen wäre.",54)
	NODE(54)
		SAY("Wenn ich die Zehntausend bekomme, dann kann ich mich auf die Suche nach dem Drahtzieher machen. Das wird zwar ein bischen dauern, aber ich denke ich schaffe es. Allerdings brauche ich noch ein paar Utensilien. ")
		
		ANSWER("Was für Utensilien?",55)

	NODE(55)
		SAY("Es gibt eine spezielle Art von Warbots in den Wasteland, die in ihren Chips Neocron Netzwerkkennungen eingestanzt haben.")
		
		ANSWER("WEITER",56)
	NODE(56)
		SAY("Wenn ich diese Kennungen nutze, dann erscheint es, als ob der Warbot im Netzwerk Informationen sucht. Eine zusätzliche Sicherheit für mich eben.")
		
		ANSWER("Wenn es sein muss, aber beeilen sie sich. Es kommen täglich mehr Schmierenwerke ins Netz. Wo kann ich diese WarBots finden?",57)

	NODE(57)
		SAY("Das ist einfach, geh in die Wastelands in den Sektor i 07. Dort befindet sich auch eine Fabrik. Ja, die Emmerson Fabrik. Dort halten sich welche auf. Bring mir  einen von diesen Microchips. Ich fürchte allerdings, dass du ihn nicht einfach ohne Kampf nehmen kannst. Viel Glück")
		SETNEXTDIALOGSTATE(58)
		ENDDIALOG()

--SPieler holt Warbot Microchips

	NODE(58)
		TAKEITEM(9203)
		if(result==0)then
			SAY("Ohne diese Kennungsnummer werde ich ganz schnell geliefert sein, also besorg mir eine.")
			ENDDIALOG()
		else
			SAY("Danke. Das kann jetzt aber noch einige Zeit dauern. Ich übermittle die Ergebnisse dann direkt an BioTech weiter, ja? Ich hoffe das ist das letzte Mal, dass wir uns sehen. Gehen sie zu ihrer Firma zurueck.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(59)
			ENDDIALOG()
			
		end

	NODE(59)
		SAY("Das wird noch eine Weile dauern. Umso länger, je öfter man mich unterbricht. Ich schlage vor, sie warten bei ihrer Firma. ")
		ENDDIALOG()
		


-----------------------------------------------------
--McMillan

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Bitte reden sie erst mit mir, wenn sie etwas neues wissen.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(2)
			if(result==0)then
				SAY("Irgendetwas hast du noch vergessen. Da bin ich mir sicher.")
				ENDDIALOG()		
			else
				SAY("Da sind sie ja. Sie sind inzwischen ein sehr gefragtes Mitglied von BioTech geworden. Und mit ihrer Hilfe werden wir diesem ganzen Spuk bald ein Ende machen.")
		
				ANSWER("Der Hacker Grand hat zugestimmt, den Drahtzieher aufzuspüren. Er wird die Information direkt an BioTech senden. Das könnte aber noch eine ganze Zeit dauern.",101)
			end
		end
	NODE(101)
		GIVEMONEY(30000)
		GIVEITEM(9204,255)
		SAY("Sehr gut, sehr gut. Sobald wir den Drahtzieher kennen, brauchen wir wieder ihre Hilfe. Aber das besprechen wir dann am besten, wenn es soweit ist. Für ihre unentbehrlichen Dienste werden ihnen 30000 Credits überwiesen. Bringen sie sich in Top Form, sie werden es brauchen. Ausserdem bekommen sie ein Implantat, dass sie beim naechsten Auftrag brauchen werden. ")
		EPICRUNFINISHED(5,4)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
end