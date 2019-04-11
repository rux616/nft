function DIALOG()

	NODE(0)
		GETGLOBALTRIGGER("talked_storm_sub")
		if result==1 then
			--046
			SAYSPEECH("Dieser Sektor ist unter Kontrolle. Erste-Hilfe Massnahmen wurden eingeleitet. Bitte verhalten Sie sich ruhig und folgen Sie den Anweisungen der CityAdmin.",3046)
			SAYSPEECH("Gefahr besteht noch immer. Der Guardian hat sich in Sektor 2 zurueckgezogen. Den Sicherheitskraeften fehlt es an Munition. Sie koennen uns helfen, Agent Parker.",3090)
			SAYSPEECH("Wir danken Ihnen fuer Ihre Kooperation, Agent Parker.",3091)
			ENDDIALOG()
		else
			--101
			SAYSPEECH("Was wollen Sie!",3101)
			--038
			ANSWERSPEECH("Mein Name ist Parker. Ich bin Agent der NCA. Was ist hier los, Officer?",1,3038)
		end
	NODE(1)
		--040
		SAYSPEECH("Wir haben diesen Sektor von den Verbaenden des Twilight Guardian gesaeubert. Ein weiteres Corps S.T.O.R.M.-Bots haelt die Stellung im oberen Bereich. Der Guardian hat sich in Sektor 2 zurueckgezogen.",3040)
		--041
		ANSWERSPEECH("Warum stossen die Bots da oben nicht nach und vertreiben den Twilight Guardian aus dem Plaza-Bereich?",2,3041)

	NODE(2)
		--043
		SAYSPEECH("Munitionsmangel. Bitte informieren Sie sich bei einem S.T.O.R.M.-Bot vor Ort.",3043)
		--044
		ANSWERSPEECH("Danke, Officer. Riegeln Sie die HoverCab-Station ab. Es ist es dem Guardian gelungen, die HoverCab-Techniker durch eigene Leute auszutauschen, und ich moechte keine weiteren Ueberraschungen erleben...",3,3044)
		SETGLOBALTRIGGER("talked_storm_sub",1)	

	NODE(3)
		--102
		SAYSPEECH("Verstanden.",3102)
		ENDDIALOG()


end


