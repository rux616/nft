function DIALOG()

	NODE(0)
		GETGLOBALTRIGGER("talked_storm_sec2")
		if result == 0 then
			--049
			SAYSPEECH("Hinter dieser Absperrung liegt die Kampfzone, Gefahrenstufe 3. Ich kann Sie nicht passieren lassen, Agent.",3049)
			--050
			ANSWERSPEECH("Warum stossen Sie nicht nach und vertreiben die Terroristen?",1,3050)
		else 
			if result == 1 then	

				GETGLOBALTRIGGER("talked_sk_aw")
				if result == 3 then
					--101
					SAYSPEECH("Ja?",3101)
					--084
					ANSWERSPEECH("Hier haben Sie 40 Einheiten RayGun-Munition... Wird das reichen?",10,3084)
				else
					--052
					SAYSPEECH("Die Munition fuer die RayGuns ging aus, wir hatten hohe Verluste. Wir halten Stellung und warten auf Verstaerkung und neue Munition.",3052)
					ENDDIALOG()
				end
			else
				--086
				SAYSPEECH("Sir, der Befehl zum Angriff wurde gegeben. Unsere Truppen werden umgehend in Sektor 2 vorruecken.",3086)
				ENDDIALOG()
			end
		end

	NODE(1)
		--052
		SAYSPEECH("Die Munition fuer die RayGuns ging aus, wir hatten hohe Verluste. Wir halten Stellung und warten auf Verstaerkung und neue Munition.",3052)
		--053
		ANSWERSPEECH("Der Anschlag war vor Stunden. Warum ist die Verstaerkung noch nicht da?",2,3053)
		--054
		ANSWERSPEECH("Warum holen Sie sich die Munition fuer ihre RayGuns nicht aus den Waffenshops dieses Sektors?",3,3054)

	NODE(2)
		--056
		SAYSPEECH("Wir wissen es nicht. Alle Nachschubwege scheinen abgeschnitten zu sein.",3056)
		--054
		ANSWERSPEECH("Warum holen Sie sich die Munition fuer ihre RayGuns nicht aus den Waffenshops dieses Sektors?",3,3054)

	NODE(3)
		--057
		SAYSPEECH("Die Terroristen haben waehrend des Anschlags saemtliche Geschaefte gepluendert. Es gibt keine Munition mehr in diesem Sektor. Wenn Sie uns helfen wollen, gehen Sie zu Archer & Wesson. Der Haendler ist ein Undercover-CityAdmin Agent. Moeglicherweise weiss er, wie man Munition besorgen kann.",3057)
		SETGLOBALTRIGGER("talked_storm_sec2",1)
		SHOWTUTORIALTEXT(1230,1)
		ENDDIALOG()

	NODE(10)
		TAKEITEM(1601)
		if result == 1 then

			--085
			SAYSPEECH("Das duerfte mehr als genug sein, Sir. Ich werde sofort den Angriff auf Sektor 2 befehlen. Wenn Sie mitkaempfen wollen - hier habe ich eine RayGun fuer Sie.",3085)
			SETGLOBALTRIGGER("talked_storm_sec2",2)
			GIVEITEM(3285)
			GIVEITEM(3285)
			GIVEITEM(15)
	
			SENDLEVELMSG("OPEN GATE");	

			ENDDIALOG()

		else

			--052
			SAYSPEECH("Die Munition fuer die RayGuns ging aus, wir hatten hohe Verluste. Wir halten Stellung und warten auf Verstaerkung und neue Munition.",3052)
			ENDDIALOG()
			
		end
end


