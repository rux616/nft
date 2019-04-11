function DIALOG()

	NODE(0)
		GETGLOBALTRIGGER("talked_sk_aw")
		if result == 0 then
			--064
			SAYSPEECH("Was wollen Sie? Ich hab nichts mehr! Das verdammte Terroristenpack hat mir alles abgenommen. Nur wertlosen Plunder und radioaktives Zeug haben sie mir gelassen. Sind das etwa die 'umfangreichen Sicherheitsmassnahmen', von denen die CityAdmin immer spricht?",3064)
			TRADE()
			ENDDIALOG()
		else 
			if result == 1 then
				--64
				SAYSPEECH("Was wollen Sie? Ich hab nichts mehr! Das verdammte Terroristenpack hat mir alles abgenommen. Nur wertlosen Plunder und radioaktives Zeug haben sie mir gelassen. Sind das etwa die 'umfangreichen Sicherheitsmassnahmen', von denen die CityAdmin immer spricht?",3064)
				--65
				ANSWERSPEECH("Dieses 'radioaktive Zeug'... worum handelt es sich dabei?",1,3065)
			else
				--064
				SAYSPEECH("Was wollen Sie? Ich hab nichts mehr! Das verdammte Terroristenpack hat mir alles abgenommen. Nur wertlosen Plunder und radioaktives Zeug haben sie mir gelassen. Sind das etwa die 'umfangreichen Sicherheitsmassnahmen', von denen die CityAdmin immer spricht?",3064)
				TRADE()
				ENDDIALOG()
			end
		end

	NODE(1)
		--067
		SAYSPEECH("Keine Ahnung - Deulithium oder Thithium oder so... Die Typen hatten so `ne Art Geigerzaehler dabei, mit dem sie mein gesamtes Lager abgeleuchtet haben... bei dem Zeug spielte der Apparat total verrueckt, und sie liessen es fallen wie heisse Kartoffeln... Dabei soll es einiges wert sein...",3067)
		--068
		ANSWERSPEECH("Gemaess Verordnung 17-TR-2 beschlagnahme ich das Deutrithium im Namen der Neocron City Administation. Geben Sie mir den Behaelter!",2,3068)	
		--069
		ANSWERSPEECH("Hoeren Sie... ich haette Verwendung fuer das Zeug. Ich bin Agent der CityAdmin. Geben Sie mir die Chemikalien in dem Bewusstsein, Ihrer Regierung einen wertvollen Dienst erweisen zu koennen.",3,3069)

	NODE(2)
		--071
		SAYSPEECH("Die NCA ist auch nicht besser als der Twilight Guardian... alle denken, sie koennten sich einfach nehmen, was sie wollen... Verdammt... hier, nehmen Sie den Behaelter, und dann verschwinden Sie aus meinem Laden!",3071)
		GIVEITEM(714)
		SETGLOBALTRIGGER("talked_sk_aw",2)

		SENDLEVELMSG( "PAWNSHOP")		

		ENDDIALOG()

	NODE(3)
		--073
		SAYSPEECH("...einen wertvollen Dienst? Meinen Sie, dass der Regierung dieser Dienst 500 Maeuse wert ist? Die haette ich naemlich gern fuer das Zeug...",3073)
		--074
		ANSWERSPEECH("Ersticken Sie nicht an Ihrer Liebe zur Regierung, Sir! - Hier haben Sie das Geld - und jetzt her mit dem Kanister!",4,3074)
		--075
		ANSWERSPEECH("Ich habe nicht genug Geld bei mir... Ich komme wieder...",5,3075)

	NODE(4)
		TAKEMONEY(500)
		GIVEITEM(714)
		--078
		SAYSPEECH("Es war mir ein Vergnuegen der Regierung gedient zu haben... Beehren Sie mich bald wieder... hehehe!",3078)
		SETGLOBALTRIGGER("talked_sk_aw",2)
		ENDDIALOG()

	NODE(5)
		GIVEITEM(714)	
		--079
		SAYSPEECH("Schon gut... wenn es so dringend ist, dann nehmen Sie den Kanister. Weiss zwar nicht, wofuer sie das Zeug brauchen, aber ich wuensch Ihnen viel Glueck damit...",3079)
		SETGLOBALTRIGGER("talked_sk_aw",2)
		SHOWTUTORIALTEXT(1232,1)	
		ENDDIALOG()

end


