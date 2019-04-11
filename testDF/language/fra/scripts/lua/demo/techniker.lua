function DIALOG()

	NODE(0)
		GETGLOBALTRIGGER("talked_tech")
		if result == 0 then
		
			-- 015
			SAYSPEECH("Wer sind Sie? Was wollen Sie? Der Wartungsbereich ist nur fuer Angestellte der HoverCab Incorporated zugaenglich. Verschwinden Sie!",3015)
			-- 016
			ANSWERSPEECH("Wuerde ich ja gern, aber ich komme nicht durch den Ausgang zur Plaza-Station.",1,3016)
			-- 019
			ANSWERSPEECH("Oh - sicher, Entschuldigung, ich wollte Sie nicht stoeren...",1,3019)		

			-- 017
			ANSWERSPEECH("Mein Name ist Parker. Ich bin Agent der CityAdmin. Sie wissen, dass der Ausgang des Wartungskorridors zur Plaza-Station durch ein Codeschloss gesichert ist. Bitte kooperieren Sie und oeffnen Sie das Schloss.",10,3017)
			-- 018
			ANSWERSPEECH("Neocron CityAdmin! Wenn Sie nicht sofort das Tor zur Plaza-Station oeffnen, ist das ein Verstoss gegen NCA-Verordnung 17-33-C, Behinderung eines NCA-Agenten im Dienst. Das gibt mir die Berechtigung, Sie auf der Stelle zu exekutieren. Ich gebe Ihnen 30 Sekunden, um das Schloss zu oeffnen.",20,3018)
		else
		
			-- 020
			SAYSPEECH("Mir doch egal! Lassen Sie mich in Ruhe.",3020)
			ENDDIALOG()

		end

	NODE(1)
		-- 020
		SAYSPEECH("Mir doch egal! Lassen Sie mich in Ruhe.",3020)
		-- 023
		ANSWERSPEECH("Hey, nicht frech werden, Freundchen...",20,3023)	


	NODE(10)
		-- 021
		SAYSPEECH("Ihr Jungs habt hier unten nichts zu melden. Ohne ein Hacktool werden Sie die Tuer kaum aufbekommen... Ich wuerde meins gegen einen Raketenwerfer eintauschen. Interesse?",3021)
		-- 026
		ANSWERSPEECH("Hmm... Gut, tauschen wir." ,11,3026)
		-- 027
		ANSWERSPEECH("Was will ein HoverCab-Techniker mit einem Raketenwerfer?" ,20,3027)		

	NODE(11)
		TAKEITEM("5")
		if result == 1 then
			SETGLOBALTRIGGER("talked_tech", 1)
			GIVEITEM("85")
			-- 028
			SAYSPEECH("Hier haben Sie mein Hacktool. Es macht doch immer wieder Spass, mit der CityAdmin Geschaefte zu machen...",3028)
			ENDDIALOG()		
		else
			-- 020
			SAYSPEECH("Mir doch egal! Lassen Sie mich in Ruhe.",3020)
			ENDDIALOG()		
		end

	NODE(20)
		-- 022
		SAYSPEECH("Ihr Idioten von der CityAdmin werdet es nie kapieren... Erst wenn wir den letzten von euch getoetet haben, wird wieder Frieden und Ordnung in Neocron herrschen... Lang lebe der Twilight Guardian...!!!",3022)
		ATTACK()
		ENDDIALOG()

end


