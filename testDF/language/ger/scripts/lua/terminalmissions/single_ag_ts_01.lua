--************************
--name   : SINGLE_AG_TS_01.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
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
				SAY("Was haben Sie geschaeftlich hier zu erledigen, Mister?")
				SAY("Hey-o, Mister. Womit kann ich Ihnen helfen?")
				SAY("Ja? Was wollen Sie hier, Runner?")
				SAY("Willkommen in meinem Buero. Wie kann ich behilflich sein, Mister...?")
				SAY("Hey-o Runner, kommen Sie vielleicht wegen dem Job?")
				
				ANSWER("Oh, ich schau mich nur um. Danke.",1)
				ANSWER("Was gibt es ueber diesen Ort hier zu erfahren?",1)
				ANSWER("Hey. Wo bin ich hier?",1)
				ANSWER("Oh sorry, ich dachte, Sie waeren jemand anderes.",1)
				ANSWER("Ja, ich komme wegen der Saeuberungsaktion.",2)
				ANSWER("Ok, ich hoerte, Sie brauchen einen faehigen Cleaner.",2)
				ANSWER("Also, ich komme wegen dem Auftrag aus dem Tsunami Terminal.",2)

			else    -- Player is a Woman:
				SAY("Hey-o, Suesse! Was fuer eine nette Ueberraschung. Was kann ich fuer Sie tun?")
				SAY("Willkommen! Kommen Sie ruhig in mein Buero. Wie kann ich Ihnen helfen, Kleines?")
				SAY("Hey-o. Kommen Sie wegen dem Job, Runner?")
				SAY("Hey Suesse, was kann ich fue Sie tun?")
				SAY("Sicher, dass Sie im richtigen Buero gelandet sind? Die Bewerbungen von Taenzerinnen werden den Gang runter bearbeitet...")
				
				ANSWER("Ich schau mich nur um. Danke.",1)
				ANSWER("Koennen Sie mir etwas ueber diesen Ort erzaehlen?",1)
				ANSWER("Schoen hier. Was machen Sie denn so?",1)
				ANSWER("Pardon, ich hab Sie verwechselt.",1)
				ANSWER("Ja, ich komme wegen der Saeuberungsaktion.",2)
				ANSWER("Gruesse. Dem Tsunami Terminal war zu entnehmen, dass ich mich hier wegen dem Job melden soll.",2)

			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Hoeren Sie, wenn Sie nur herumstehen wollen, machen Sie das bitte in einem unserer Clubs, ok?")
				SAY("Entweder wir reden uebers Geschaeft oder Sie muessen gehen. Ich hab hier zu tun.")
				SAY("Fuer Informationen ueber Tsunami sollten Sie besser die Terminals benutzen. Verstehen Sie, was ich meine?")
				SAY("Auf Wiedersehen, Runner.")
				ENDDIALOG()
			else
				SAY("Hoeren Sie, wenn Sie nur herumstehen wollen, machen Sie das bitte in einem unserer Clubs, ok?")
				SAY("Sind Sie gekommen, um mich anzustarren? Ich weiss, dass ich gut aussehe, aber das wird mir langsam laestig...Bye.")
				SAY("Fuer Informationen ueber Tsunami sollten Sie besser die Terminals benutzen. Wir sehen uns, Suesse.")
				SAY("Schoen, Sie hiergehabt zu haben. Bis zum naechsten Mal...")
				ENDDIALOG()
			end
	NODE(2) -- Giving Mission
			SAY("Unsere Ladys wurden vor kurzem von aggressiven %TARGET_NPCNAME(0) belaestigt. Wir brauchen einen Strassen-Samurai wie Sie, um die Sache zu bereinigen. Erlegen Sie mindestens %TARGET_VALUE(0,1) Stueck. Kommen Sie wieder, wenn Sie fertig sind.")
			SAY("Einige unserer Taenzerinnen weigern sich weiter zu arbeiten, solange das Gebiet nicht von den %TARGET_VALUE(0,1) %TARGET_NPCNAME(0) befreit wurde. Kommen Sie zu mir, wenn Sie fertig sind.")
			SAY("Es sieht so aus, als braeuchten wir aeusserst dringend einen Strassen-Samurai wie Sie, um unser Territorium zu saeubern. Es gibt da leider ein paar %TARGET_NPCNAME(0) um die Sie sich kuemmern muessen. Genauer gesagt sollen Sie %TARGET_VALUE(0,1) davon ausrotten. Kommen Sie wieder, wenn Sie die erledigt haben.")
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then  -- Mission is not accomplished
				SAY("Hey-o, ich hoffe, Sie haben nicht Ihren Saeuberungsauftrag vergessen. Tsunami geht nicht sehr freundlich mit faulen Ronins um.")
				SAY("Hey Runner, beeilen Sie sich besser mit der Vernichtung der %TARGET_NPCNAME(0). Die Viecher nerven.")
				SAY("Ich bin zu beschaeftigt, um zu reden. Das erinnert mich daran, dass Sie sich doch um die %TARGET_NPCNAME(0) kuemmern sollten.")
				SAY("Besser, Sie erledigeb diesen Job oder Sie erleben den naechsten Tag nicht.")
				ENDDIALOG()
			else -- Mission was accomplished
				SAY("Hey-o, Samurai. Ich hab erfahren, dass Sie den Dreck beseitigt haben. %REWARD_MONEY() Credits wurden Ihrem Konto gutgeschrieben. Tsunami schaetzt loyale Freunde, wir haben sicher auch in Zukunft genug Arbeit fuer Sie.")
				SAY("Mir wurde mitgeteilt, dass Sie den Job gut gemacht haben. Man sagt, dass Sie genau der Richtige dafuer waren, Runner. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Benutzen Sie die Terminals, um weitere Jobs zu erhalten.")
				SAY("Gute Arbeit, Runner. Die %REWARD_MONEY() Credits wurden bereits auf Ihr Konto ueberwiesen. Wir von Tsunami danken Ihnen fuer die Unterstuetzung.")	
				ACTIVATEDIALOGTRIGGER(1)	
				ENDDIALOG()
			end
end
						
		
			

