--************************
--name   : SINGLE_AS_FA_01.lua
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
			if (result==1) then
				SAY("Guten Tag Sir, was kann ich fuer Sie tun?")
				SAY("Hallo Sir, kann ich Ihnen behilflich sein?")
				SAY("Guten Tag Sir, kann ich Ihnen helfen?")
				SAY("Brauchen Sie meine Hilfe?")
				SAY("Hallo Sir, haben Sie Fragen die ich vielleicht beantworten kann?")
				
				ANSWER("Nein, danke. Ich sehe mich nur etwas um.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Ich benoetige weitere Informationen, eine Mission betreffend.",2)
				ANSWER("Ja, ich bin an einer Mission interessiert, die ich an einem Terminal angenommen habe.",2)
				ANSWER("Mir wurde gesagt, ich soll mich bei Ihnen melden, um mehr ueber die Mission zu erfahren, die ich angenommen habe.",2)
				ANSWER("Nette Gegend. Gibt es hier etwas zu tun fuer mich?",1)
			else
				SAY("Guten Tag Madam, was kann ich fuer Sie tun?")
				SAY("Hallo Madam, kann ich Ihnen behilflich sein?")
				SAY("Guten Tag Madam, kann ich Ihnen helfen?")
				SAY("Brauchen Sie meine Hilfe?")
				SAY("Hallo Madam, haben Sie Fragen, die ich Ihnen eventuell beantworten kann?")
				
				ANSWER("Nein, danke. Ich sehe mich nur etwas um.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Ich benoetige weitere Informationen, eine Mission betreffend.",2)
				ANSWER("Ja, ich bin an einer Mission interessiert, die ich an einem Terminal angenommen habe.",2)
				ANSWER("Mir wurde gesagt, ich soll mich bei Ihnen melden, um mehr ueber die Mission zu erfahren, die ich angenommen habe.",2)
				ANSWER("Nette Gegend. Gibt es hier etwas zu tun fuer mich?",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Sir, wenn sie allgemeine Fragen haben, fragen Sie besser jemand anderen.")
				SAY("Dafuer habe ich jetzt keine Zeit, Sir. Sprechen Sie wieder mit mir, falls Sie nach Arbeit suchen.")
				SAY("Sir, ich habe zu tun. Ich habe nur fuer Leute Zeit, die mit uns zusammenarbeiten wollen.")
				ENDDIALOG()
			else
				SAY("Madam, wenn sie allgemeine Fragen haben, fragen Sie besser jemand anderen.")
				SAY("Dafuer habe ich jetzt keine Zeit, Madam. Sprechen Sie wieder mit mir, falls Sie nach Arbeit suchen.")
				SAY("Madam, ich habe zu tun. Ich habe nur fuer Leute Zeit, die mit uns zusammenarbeiten wollen.")
				ENDDIALOG()
			end
	NODE(2)
				SAY("Wir haben herausgefunden, dass %NPC_NAME(1) uns einige hochbrisante Forschungsdaten gestohlen hat um sie auf dem Schwarzmarkt zu verkaufen. Es ist von groesster Wichtigkeit, dass das Ziel aufgehalten wird, bevor noch mehr Forschungsdaten missbraucht werden. Das letzte Mal, als das Ziel versuchte, Daten von uns herunterzuladen, war es uns moeglich ein Spuerprogramm zu aktivieren und das Ziel in %NPC_WORLD(1) ausfindig zu machen. Nun brauchen wir Sie um den Job zu beenden. Es ist wichtig, dass Sie so schnell wie moeglich handeln, da das Ziel noch immer ueber wichtige Daten verfuegt, welche es jederzeit verkaufen kann.")
				SAY("Waehrend einer internen Untersuchung stiessen wir auf eine Schmuggeloperation, welche von %NPC_NAME(1) geleitet wurde. Sie stahlen uns sehr vertrauliche Forschungsdaten, welche sie an den Meistbietenden versteigern werden. Wir konnten ihre Operationen bis nach %NPC_WORLD(1) verfolgen. Beseitigen Sie das Ziel und kommen Sie dann wieder hierher zurueck.")
				SAY("Unsere Informanten aus dem Neocron Schwarzmarkt haben eine Schmuggeloperation unter der Fuehrung von %NPC_NAME(1) aufgedeckt. Das Ziel haelt sich derzeit in %NPC_WORLD(1) auf. Erledigen Sie das Ziel so schnell wie moeglich. Wir muessen sicherstellen, dass unsere Forschungsergebnisse nicht in die falschen Haende fallen. Melden Sie sich wieder bei mir, wenn der Job erledigt ist.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Ich habe Ihnen alles gesagt, was Sie wissen muessen. Kehren Sie nach Ausfuehrung des Jobs wieder hierher zurueck.")
				SAY("Sie sind nicht berechtigt, weitere Informationen bezueglich dieser Mission zu erhalten. Ich habe meinen Job, Sie haben den Ihren. Gehen Sie und erledigen Sie ihn.")
				SAY("Die Eliminierung des Ziels wurde noch nicht von unseren Informanten bestaetigt. Sie muessen Ihr Ziel erreichen, bevor noch mehr Daten verkauft werden.")
				SAY("Sie haben alle Informationen, die Sie brauchen, um den Auftrag zu erfuellen. Besorgen Sie sich alles, was Sie brauchen und erledigen Sie dann das Ziel.")
				ENDDIALOG()
			else
				SAY("Gute Arbeit. Der Tod des Ziels wurde durch unabhaengige Quellen bestaetigt. Die Belohnung in Hoehe von %REWARD_MONEY() Credits wurde auf Ihr Konto ueberwiesen. Wir sind immer bestrebt, unsere Forschungen vor der Aussenwelt zu schuetzen. Ihre Hilfe dabei ist uns jederzeit willkommen. Informieren Sie sich an den Terminals ueber neue Missionen.")
				SAY("Gute Arbeit. Diebe, die hinter unseren Forschungsergebnissen her sind wissen nun, dass wir derlei Aktionen nicht tolerieren und hart bestrafen. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Ueber die Terminals koennen Sie weitere Missionen von uns annehmen.")
				SAY("Dank Ihrer Leistung wird uns dieses kriminelle Subjekt nie wieder belaestigen. Ihr Beitrag zu unserem Erfolg wird nicht unbelohnt bleiben. Sie werden den entprechenden Betrag von %REWARD_MONEY() Credits auf Ihrem Konto finden. Wenn Sie jemals einen weiteren Job fuer uns ausfuehren wollen, informieren Sie sich bitte an einem Terminal.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
end
						
		
			