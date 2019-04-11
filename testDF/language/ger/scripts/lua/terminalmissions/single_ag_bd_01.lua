--************************
--name   : SINGLE_AG_BD_01.lua
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
			if (result==1) then
				SAY("Willkommen bei den Black Dragons. Kann ich helfen?")
				SAY("Guten Tag und Willkommen bei den Black Dragons. Wuenschen Sie etwas?")
				SAY("Die Black Dragons heissen Sie willkommen. Sind Sie wegen einem Job hier?")
				SAY("Gruesse, Sir. Was haben Sie fuer Geschaefte hier bei uns zu erledigen?")
				SAY("Sie haben gerade das Clanterritorium betreten, Sir. Nach wem oder was suchen Sie?")
				
				ANSWER("Oh, ich schau mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Hey. Was ist das hier?",1)
				ANSWER("Oh Entschuldigung, ich hab Sie mit jemandem verwechselt.",1)
				ANSWER("Ja, ich komme wegen dem Auftrag.",2)
				ANSWER("Ok, ich hoerte, Sie suchen einen kompetenten Shark.",2)
				ANSWER("Genau, ich komme wegen dem Auftrag aus dem Black Dragon Terminal.",2)

			else    
				SAY("Willkommen bei den Black Dragons, Miss...")
				SAY("Guten Tag, Miss. Die Black Dragons heissen Sie willkommen. Kann ich behilflich sein?")
				SAY("Sind Sie wegen einem Job hier, Miss?")
				SAY("Sie befinden sich auf Clanterritorium, Miss. Was wollen Sie von den Back Dragons?")
				SAY("Der Clan heisst Sie willkommen. Nach wem oder was suchen Sie?")
				
				ANSWER("Ich schau mich nur um. Danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Es ist huebsch hier. Was machen Sie hier denn so?",1)
				ANSWER("Oh Entschuldigung, ich hab Sie mit jemandem verwechselt.",1)
				ANSWER("Ja, ich komme wegen dem Job.",2)
				ANSWER("Gruesse, dem Black Dragon Terminal war zu entnehmen, dass Sie jemanden fuer einen Job suchen.",2)

			end
		
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Wenn Sie keine Geschaefte mit den Black Dragons zu erledigen haben, sollten Sie besser gehen, bevor ich Sie rauswerfen lasse.")
				SAY("Wenn Sie nicht fuer Geschaefte hier sind, sollten Sie gehen, Sir. Strapazieren Sie nicht unsere Gedult.")
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
			SAY("Leute, die unter unserem Schutz stehen, berichten ueber aggressive %TARGET_NPCNAME(0) in unserem Territorium. Es wuerde uns sehr helfen, wenn Sie %TARGET_VALUE(0,1) Stueck davon toeten. Ich warte hier auf Sie, bis Sie damit fertig sind.")
			SAY("Einer unserer ...Klienten... hat ein Problem mit %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) in unserem Fraktionsterritorium. Toeten Sie alle und dann koennen wir ueber die Bezahlung reden.")
			SAY("Gut, kommen wir gleich zum Geschaeft. Wir wurden ueber %TARGET_NPCNAME(0) informiert, die in unserem Gebiet Aerger machen. Vernichten Sie mindestens %TARGET_VALUE(0,1) davon und holen Sie dann hier Ihren Lohn ab.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
	
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Der Job ist noch nicht beendet. Es gibt immer noch ein paar %TARGET_NPCNAME(0). Versagen wird nicht toleriert...")
				SAY("Hey Shark, Du hast noch nicht getan, wozu wir Dich engagiert haben. Vernichte endlich diese %TARGET_NPCNAME(0) oder Du zahlst den Preis fuer Dein Versagen.")
				SAY("Ich hab Dich fuer einen Job angeheuert. Versagen wird nicht akzeptiert. Erst recht nicht Faulheit. Mach den Job oder fang an zu rennen...weit weg.")
				SAY("Du weisst, was zu tun ist, also los.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Meine Soldaten berichten, dass Sie Erfolg hatten. Gut. Die Bezahlung in Hoehe von %REWARD_MONEY() Credits wird auf Ihr Konto ueberwiesen. Ich hoffe, das ist akzeptabel?")
				SAY("Gut gemacht, wirklich gut gemacht. Alle %TARGET_NPCNAME() wurden vernichtet. %REWARD_MONEY() Credits wurden Ihnen überwiesen. Wenn Sie mehr Arbeit suchen, sollten Sie unsere Terminals nutzen.")
				SAY("Nicht sehr aesthetisch aber effizient, Shark. Die %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Die Black Dragons koennen Leute wie Sie gut gebrauchen.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			
