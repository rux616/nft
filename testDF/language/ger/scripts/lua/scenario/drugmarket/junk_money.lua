function DIALOG()

	NODE(0)
		SAY("Haste mal nen Credit? Ich brauch nen Credit")
		ANSWER("Wofür denn?",1)
		ANSWER("Alter Bettler! Verdien Dir was wenn Du Kohle brauchst!",101)
				
	NODE(1)
		SAY("Ich brauch nen Shuß, Mann! Dringend. Sonst geh ich drauf!")
		ANSWER("Keinen Credit siehst Du von mir. Ich hab mein Geld auch nicht auf der Straße gefunden!",101)
		ANSWER("Hier ich geb Dir 20.",3)
		ANSWER("200 kannst Du haben. Das muß reichen.",5)
		ANSWER("Hier ich geb Dir 2000. Denk an mich wenn Du vor den Schöpfer trittst. Hehehe.",7)

	NODE(3)
		TAKEMONEY(20)
		SAY("Danke, Mann. Auch wenns nicht viel ist.")
		ENDDIALOG()
		
	NODE(5)
		TAKEMONEY(200)
		SAY("Cool. Für einen Schuß wird's reichen. Danke!")
		ENDDIALOG()
		
	NODE(7)
		TAKEMONEY(2000)
		SAY("Endlich! Eine bessere Welt wartet auf mich! Ich komme....!")
		ENDDIALOG()
			
	NODE(101)
		SAY("Hol Dich der Geier, Geizhals!")
		ENDDIALOG()	
		
end


