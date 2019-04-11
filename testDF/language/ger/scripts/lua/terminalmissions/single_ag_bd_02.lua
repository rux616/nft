--************************
--name   : SINGLE_AG_BD_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission BD
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Player is Man:
				SAY("Willkommen bei den Black Dragons. Kann ich helfen?")
				SAY("Guten Tag und Willkommen bei den Black Dragons. Wuenschen Sie etwas?")
				SAY("Die Black Dragons heissen Sie willkommen. Sind Sie wegen einem Job hier")
				SAY("Gruesse, Sir. Was haben Sie fuer Geschaefte hier bei uns zu erledigen?")
				SAY("Sie haben gerade das Clanterritorium betreten, Sir. Nach wem oder was suchen Sie?")
				
				ANSWER("Oh, ich schau mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Hey. Was ist das hier?",1)
				ANSWER("Oh Entschuldigung, ich hab Sie mit jemandem verwechselt.",1)
				ANSWER("Ja, ich komme wegen dem Auftrag.",2)
				ANSWER("Ok, ich hoerte, Sie suchen einen kompetenten Shark.",2)
				ANSWER("Genau, ich komme wegen dem Auftrag aus dem Black Dragon Terminal.",2)

			else    -- Player is a Woman:
				SAY("Willkommen bei den Black Dragons, Miss...")
				SAY("Guten Tag, Miss. Die Black Dragons heissen Sie willkommen. Kann ich behilflich sein?")
				SAY("Sind Sie wegen einem Job hier, Miss?")
				SAY("Sie befinden sich auf Clanterritorium, Miss. Was wollen Sie von den Back Dragons?")
				SAY("Der Clan heisst Sie willkommen. Nach wem oder was suchen Sie?")
				
				ANSWER("Ich schau mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Es ist huebsch hier. Was machen Sie hier denn so?",1)
				ANSWER("Oh Entschuldigung, ich hab sie mit jemandem verwechselt.",1)
				ANSWER("Ja, ich komme wegen dem Job.",2)
				ANSWER("Gruesse, dem Black Dragon Terminal war zu entnehmen, dass Sie jemanden fuer einen Job suchen.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Wenn Sie keine Geschaefte mit den Black Dragons zu erledigen haben, sollten Sie besser gehen, bevor ich Sie rauswerfen lasse.")
				SAY("Wenn Sie nicht fuer Geschaefte hier sind, sollten Sie gehen, Sir. Strapazieren Sie nicht unsere Geduld.")
				SAY("Allgemeine Informationen ueber den Clan erhalten Sie auf den Terminals.")
				SAY("Danke fuer Ihren Besuch, Sir. Nun gehen Sie bitte.")
				ENDDIALOG()
			else
				SAY("Wenn Sie keine Geschaefte mit den Black Dragons zu erledigen haben, sollten Sie besser gehen, bevor ich Sie rauswerfen lasse.")
				SAY("Wenn Sie nicht fuer Geschaefte hier sind, sollten Sie gehen, Miss. Strapazieren Sie nicht unsere Gastfreundschaft.")
				SAY("Allgemeine Informationen ueber den Clan erhalten Sie auf den Terminals.")
				SAY("Danke fuer Ihren Besuch, Miss. Nun gehen Sie bitte.")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Wir brauchen eine Machtdemonstration, ein Zeichen unserer Staerke. Es gibt ein paar %TARGET_NPCNAME(0) in unserem Territorium. Es waere wirklich von großem Wert, wenn Sie %TARGET_VALUE(0,1) davon ueber den Jordan schicken. Kommen Sie zurueck, wenn Sie fertig sind.")
			SAY("Der Clan will ein Zeichen setzen, ein Zeichen der Staerke. Wir wollen, dass Sie %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) in unserem Territorium erledigen. Kommen Sie danach zu mir zurueck, dann regeln wir die Bezahlung.")
			SAY("Aus Gruenden, die vollkommen irrelevant fuer Sie sind, ist es notwendig geworden, dass der Clan seine Macht demonstriert. Toeten Sie mindestens %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) in unserem Territorium. Ich werde Sie dann entsprechend entlohnen.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Shark, es gibt immer noch ein paar %TARGET_NPCNAME(0). Versagen wird nicht tolleriert...")
				SAY("Shark, Du haelst Dich nicht an Deine Anweisungen. Vernichte die %TARGET_NPCNAME(0) oder mach Dich auf was gefasst...")
				SAY("Shark, ich hab Dich fuer einen Job angeheuert. Toete die %TARGET_NPCNAME(0) oder Du wirst das Schicksal dieser Viecher teilen.")
				SAY("Du weisst, was zu tun ist, Shark. Also mach es endlich.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Meine Truppen informierten mich, dass Sie Erfolg hatten. Die %REWARD_MONEY() Credits wurden bereits auf Ihr Konto überwiesen. Ich denke, diese Summe ist angemessen.")
				SAY("Gut gemacht, Shark. Alle %TARGET_NPCNAME(0) sind tot. %REWARD_MONEY() Credits wurden soeben Ihrem Konto gutgeschrieben. Auf unseren Terminals finden Sie jederzeit mehr Auftraege.")
				SAY("Beeindruckend, junger Shark. Die %REWARD_MONEY() Credits wurden überwiesen. Die Black Dragons wissen diesen Einsatz zu schaetzen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
