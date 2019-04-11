function DIALOG()

	NODE(0)

		GETGLOBALTRIGGER("deuth_given")
		if result == 0 then
			GETGLOBALTRIGGER("talked_storm_sec2")
			if result == 1 then
				GETGLOBALTRIGGER("talked_sk_aw")	
				if result == 0 then
					--103
					SAYSPEECH("Guten Tag.",3103)
					--058
					ANSWERSPEECH("Mein Name ist Parker. Ich bin Agent der CityAdmin… und ich weiss, dass auch Sie fuer die Regierung arbeiten. Die Situation ist extrem kritisch, Sir, wir sind auf Ihre Hilfe angewiesen. Wenn wir nicht bald Nachschub erhalten, wird der Twilight Guardian den Sektor zurueckerobern. Gibt es hier eine Art Geheimgang, den wir nutzen koennten?",1,3058)	
				else 
					if result == 1 then
						--063
						SAYSPEECH("Wenn Sie irgendwo radioaktives Deutrithium auftreibenwuerden, koennte ich den S.T.O.R.M.-Bots helfen...",3063)
						ENDDIALOG()

					else 
						if result == 2 then
							--103
							SAYSPEECH("Guten Tag.",3103 )
							--081
							ANSWERSPEECH("Ich habe das Deutrithium. Wie lange wird die Herstellung der Munition dauern?",10,3081)	
						else
							--048
							SAYSPEECH("Ich wuerde Ihnen gern etwas verkaufen, Sir, aber die Terroristen haben unser Lager gepluendert. Wir stehen vor einem Scherbenhaufen...",3048)
							TRADE()
							ENDDIALOG()
						end
					end
				end
			else
				--048
				SAYSPEECH("Ich wuerde Ihnen gern etwas verkaufen, Sir, aber die Terroristen haben unser Lager gepluendert. Wir stehen vor einem Scherbenhaufen...",3048)
				TRADE()
				ENDDIALOG()
			end
		else
			
			SAYSPEECH("Fantastisch... Warten Sie einen Moment. Ich kann die RayGun Munition gleich hier herstellen.",3082)
			ANSWER("Ok, machen sie schnell!", 11);	

		end

	NODE(1)
		--059
		SAYSPEECH("Die einzige Moeglichkeit fuer eine Lieferung waere das alte HoverCab System gewesen - aber das wurde vom Twilight Guardian blockiert. Mein Lieferant hat keine Chance, da lebend durchzukommen.",3059)
		--060
		ANSWERSPEECH("Gibt es keine andere Moeglichkeit an die Munition zu kommen? Koennte man sie nicht ... herstellen?",2,3060)	

	NODE(2)
		--062
		SAYSPEECH("Das waere schon moeglich - wir haben ein Syncrotron, mit dem wir Munition selbst herstellen koennen. Aber fuer RayGun Munition benoetige ich radioaktives Deutrithium... und das ist normalerweise noch schwerer zu bekommen als die Munition selbst...",3062)
		SETGLOBALTRIGGER("talked_sk_aw",1)
		SHOWTUTORIALTEXT(1231,1)
		ENDDIALOG()

	NODE(10)
		TAKEITEM(714)
		if result == 1 then
			
			SAYSPEECH("Fantastisch... Warten Sie einen Moment. Ich kann die RayGun Munition gleich hier herstellen.",3082)
			ANSWER("Ok, machen sie schnell!", 11);	
			SETGLOBALTRIGGER("deuth_given",1)

		else

			SAYSPEECH("Wenn Sie irgendwo radioaktives Deutrithium auftreiben wuerden, koennte ich den S.T.O.R.M.-Bots helfen...",3063)
			ENDDIALOG()

		end

	NODE(11)
		SENDLEVELMSG( "BUILD AMMO")

		SAY("")
		ANSWER("Was? Das war's schon?", 12);

	NODE(12)

		--082
		SAYSPEECH("Hier, ich denke das duerfte reichen. Bringen Sie die Munition zu dem S.T.O.R.M.-Bot, der den Durchgang bewacht.",3083)
		--Cutscene ***

		GIVEITEM(1601)
		SETGLOBALTRIGGER("deuth_given",0)		

		--083
		SETGLOBALTRIGGER("talked_sk_aw",3)
		SHOWTUTORIALTEXT(1233,1)
		ENDDIALOG();
end


