--************************
--name   : SINGLE_AS_FA_02.lua
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
				SAY("Hallo Sir, kann ich Ihnen helfen?")
				SAY("Guten Tag Sir, kann ich Ihnen behilflich sein?")
				SAY("Kann ich Ihnen helfen?")
				SAY("Hallo Sir, wenn Sie Fragen haben, fragen Sie.")
				
				ANSWER("Ich schaue mich nur etwas um, danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Ich brauche mehr Informationen, diese Mission betreffend.",2)
				ANSWER("Ja, ich bin an einer Ihrer Missionen interessiert, die Sie im Terminal ausgeschrieben haben.",2)
				ANSWER("Ich sollte mich wegen der Mission, die ich angenommen habe, bei Ihnen melden.",2)
				ANSWER("Nette Gegend, gibt es hier etwas fuer mich zu tun?",1)
			else
				SAY("Guten Tag Madam, was kann ich fuer Sie tun?")
				SAY("Hallo Madam, kann ich Ihnen helfen?")
				SAY("Guten Tag Madam, kann ich Ihnen behilflich sein?")
				SAY("Kann ich Ihnen helfen?")
				SAY("Hallo Madam, wenn Sie Fragen haben, fragen Sie.")
				
				ANSWER("Ich schaue mich nur etwas um, danke.",1)
				ANSWER("Was koennen Sie mir ueber diesen Ort sagen?",1)
				ANSWER("Ich brauche mehr Informationen, diese Mission betreffend.",2)
				ANSWER("Ja, ich bin an einer Ihrer Missionen interessiert, die Sie im Terminal ausgeschrieben haben.",2)
				ANSWER("Ich sollte mich wegen der Mission, die ich angenommen habe, bei Ihnen melden.",2)
				ANSWER("Nette Gegend, gibt es hier etwas fuer mich zu tun?",1)
			end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Sir, wenn Sie allgemeine Fragen haben, fragen Sie besser jemand anderen.")
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
				SAY("Vor kurzem verursachten ein Hacker namens %NPC_NAME(1) einen Stromausfall in einer unserer medizinischen Forschungsanlagen. Als Folge davon konnten einige unserer Probanden kurzzeitig nicht adequat versorgt werden und einige von ihnen mussten sterben. Die Forschungsprojekte haben sich dadurch ebenfalls verzoegert. Die medizinischen Forschungsergebnisse dieser Anlage kommen jedem zugute und dieser dreiste Angriff wird das Leiden vieler verlängern. Eine solche Tat koennen wir nich tolerieren. Dieses kriminelle Subjekt muss eliminiert werden um die Stabilität unseres Netzwerkes aufrechtzuerhalten. Der Taeter haelt sich vermutlich in %NPC_WORLD(1) auf. Sie muessen diese Mission so schnell wie moeglich erledigen, denn wir wissen nicht, wann und wo der Taeter wieder zuschlagen wird.")
				SAY("Ein Hacker namens %NPC_NAME(1) verursachte kuerzlich einen Stromausfall in einer unserer Verteilerstationen. Dadurch verzoegerten sich unsere Forschungsarbeiten und einige unserer Verteidigungsanlangen in der Outzone waren kurzzeitig offline. Die Sicherheit unserer Leute sowie unserer Projekte muss wiederhergestellt werden. Unnötig zu erwaehnen, dass diese Person eliminiert werden muss. An diesem Punkt kommen Sie ins Spiel. Kommen Sie wieder hierher zurueck, sobald Sie das Ziel beseitigt haben. Wir konnten das Ziel in %NPC_WORLD(1) aufspueren.")
				SAY("Waehrend eines Stromausfalls, welcher von %NPC_NAME(1) verursacht wurde, wurde der Strahlungsschild einer unserer Anlagen zeitweilig deaktiviert. Ungluecklicherweise war es dem Personal unmoeglich, zu entkommen. Bei einigen von ihnen setzte der Mutationsprozess ein... Ihr Vertrag sieht vor, das verantwortliche kriminelle Subjekt zu eliminieren. Wir konnten ihn in %NPC_WORLD(1) aufspueren.")
				SETNEXTDIALOGSTATE(3)
				ENDDIALOG()
	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Ich habe Ihnen alles gesagt, was Sie wissen muessen. Kehren Sie nach Ausfuehrung des Jobs wieder hierher zurueck.")
				SAY("Sie sind nicht berechtigt, weitere Informationen bezueglich dieser Mission zu erhalten. Ich habe meinen Job, Sie haben den Ihren. Gehen Sie und erledigen Sie ihn.")
				SAY("Die Eliminierung des Ziels wurde noch nicht von unseren Informanten bestaetigt. Sie muessen Ihr Ziel erreichen, bevor noch ein Unglueck geschieht")
				SAY("Sie haben alle Informationen, die Sie brauchen, um den Auftrag zu erfuellen. Besorgen Sie sich alles, was Sie brauchen und erledigen Sie dann das Ziel.")
				ENDDIALOG()
			else
				SAY("Gute Arbeit. Der Tod des Ziels wurde durch unabhaengige Quellen bestaetigt. Die Belohnung in Hoehe von %REWARD_MONEY() Credits wurde auf Ihr Konto ueberwiesen. Wir sind immer bestrebt, unsere Forschungen vor der Aussenwelt zu schuetzen. Ihre Hilfe dabei ist uns jederzeit willkommen. Informieren Sie sich an den Terminals ueber neue Missionen.")
				SAY("Gute Arbeit. Dank Ihrer Arbeit weiss nun jeder potenzielle Hacker, dass wir derlei Aktionen nicht tolerieren und hart bestrafen. %REWARD_MONEY() Credits wurden auf Ihr Konto ueberwiesen. Ueber die Terminals koennen Sie weitere Missionen von uns annehmen.")
				SAY("Dank Ihrer Leistung wird uns dieses kriminelle Subjekt nie wieder belaestigen. Ihr Beitrag zu unserem Erfolg wird nicht unbelohnt bleiben. Sie werden den entprechenden Betrag von %REWARD_MONEY() Credits auf Ihrem Konto finden. Wenn Sie jemals einen weiteren Job fuer uns ausfuehren wollen, informieren Sie sich bitte an einem Terminal.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
end
						
		
			