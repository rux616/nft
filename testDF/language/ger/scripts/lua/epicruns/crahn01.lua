
--new
function DIALOG()

--Human Resource Director
	NODE(0)
		SAY("Wie ich sehe, hast Du hart gearbeitet, um uns Deine Loyalität zum Orden zu beweisen. Im Namen des heiligen Crahns danke ich Dir für Deinen Einsatz. Wenn du dem Orden weiterhin dienen willst, wären wir bereit, dich von nun an mit etwas komplexeren Missionen zu beauftragen. Bist du bereit für diese Herausforderung?")

		ANSWER("Ja, Schwester. Ich unterstelle meinen Körper und meinen Geist vollkommen dem Wohle Crahn's.",1)
		ANSWER("Es tut mir leid, aber ich fühle mich noch nicht bereit für eine solche Aufgabe.",8)

	NODE(1)
		SAY("Nun denn... Mark Cole, ein ehemaliges Mitglied der Fallen Angels, hat uns mitgeteilt, dass er angeblich im Besitz eines sehr wertvollen Gegenstandes sei. Er hat uns jedoch nicht gesagt, um was für einen Gegenstand es sich dabei handelt. Der Orden ist sich nicht sicher, was er von Cole's Glaubwürdigkeit halten soll und wir möchten nicht, dass Cole sich selbst zu wichtig nimmt.")

		ANSWER("Aber das kann man doch nicht so leicht verhindern, oder?",2)
	NODE(2)		
		SAY("Richtig. Daher hat der Orden beschlossen, keinen hohen Bruder zu ihm zu schicken. Da wir der Sache aber trotzdem auf den Grund gehen muessen, wuerde ich Dich gern bitten, den Gegenstand abzuholen und dann zu Pater Manus hier in der Kathedrale Crahns zu bringen, damit dieser den Gegenstand begutachten kann.")

		ANSWER("Wer genau ist dieser Mark Cole und wer sind die Fallen Angels?",3)
	NODE(3)
		SAY("Cole hat lange für die Fallen Angels gearbeitet. Die Fallen Angels sind eine Vereinigung von Wissenschaftlern, die im Exil der Wastelands lebten. Ihre Basis, ein Mekka der Sünde, hiess Tech Haven. Aber nun haben auch sie sich ein Stückchen von dem abgeschnitten was von Dome of York übrig ist. Das Verhältnis zwischen der Bruderschaft und den Fallen Angels ist aufgrund einiger unangenehmer Ereignisse in der Vergangenheit getrübt und wir sind nun sehr an der Kooperation mit ehemaligen Tech Haven Wissenschaftlern interessiert.")

		ANSWER("Ehemalige Mitarbeiter? Arbeitet Cole nun nicht mehr für sie?",4) 
	NODE(4)
		SAY("Entgegen seiner Aussage, ist Cole von den Fallen Angels verstossen worden, nachdem er versucht hat wissenschaftliche Geheimprojekte der Angels zu verkaufen.")

		ANSWER("Wo genau finde ich Cole?",5)
	NODE(5)
		SAY("Du solltest deine Suche im Sektor 06 hier im dome starten. Dort gibt es einen Waffenumschlagsplatz, den keine Fraktion für sich beansprucht und der für alle Fraktionen etwas bietet.")

		ANSWER("Ich hoffe er hält sich nicht zu sehr im Verborgenen.",6)
	NODE(6) 
		SAY("Wenn alles wie geplant läuft, überbringe Pater Manus meine Glückwünsche. Seine Arbeit ist eine Inspiration für uns alle. Moechtest Du den Auftrag annehmen?")

		ANSWER("Ja,... ich werde Crahn nicht enttäuschen.",7)
	NODE(7)
		SAY("So gehe denn hin, im Schutze Crahns. Gesegnet sei Deine Mission.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()


	NODE(8)
		SAY("Dann kehre zurück, wenn du dich der Aufgabe gewachsen fühlst.")
		ENDDIALOG()

-----------------------------------------------------------------
--Mark Cole
	NODE(50)
		ACTIVATEDIALOGTRIGGER(0)
			SAY("Sie sind also der junge Mönch, der mir von der Brüderschaft angekündigt wurde? Warum kommt Pater Manus nicht selbst?")

			ANSWER("Bitte Cole... ich habe nur wenig Zeit. Geben Sie mir den Gegenstand, der angeblich so wertvoll sein soll.",51)


	NODE(51)
		SAY("Nicht so hastig mein junger Freund...  Seit ich nicht mehr bei den Fallen Angels bin, ist das Leben gefährlich für mich geworden. Die Angels wollen mich anscheinend umbringen lassen, weil sie davon ausgehen, dass ich Forschungsgeheimnisse aus meiner Zeit im Tech Haven Labor verkaufen könnte.")

		ANSWER("Was gehen mich Ihre Probleme an? Ich dachte, sie wollten mir einen angeblich wertvollen Gegenstand übergeben? Alles andere interessiert mich nicht.",52)

	NODE(52)
		SAY("So haben sie doch Verständnis... ich bin total pleite und kann mir nicht einmal eine einfache Waffe leisten. Der Gegenstand, den ich hier für sie habe ist für die Bruderschaft sehr wertvoll, für mich aber absolut nutzlos. Besorgen sie mir eine einfache Waffe... ein Stiletto... dann gebe ich Ihnen den Gegenstand.")

		ANSWER("Nun gut... ich werde Ihnen Ihr Stiletto besorgen. Warten Sie hier auf mich.",53)

	NODE(53)
		SAY("Wohin sollte ich schon gehen? Die Killer der Angels lauern überall. Nur in der Dunkelheit dieses Marktes fühle ich mich halbwegs sicher.")
		SETNEXTDIALOGSTATE(54)
		ENDDIALOG()

	NODE(54)
		--Spieler gibt Mark das Messer

		TAKEITEM(19)
		if(result==0)then
			SAY("Besorgen sie mir schon das Messer...los.")
			ENDDIALOG()
		else
			GIVEITEM(9000)
			SETNEXTDIALOGSTATE(55)
			SAY("Her mit dem Messer...  Hier nehmen sie das ramschige Teil. Und jetzt hauen sie ab... sonst sieht man sie wohmöglich noch mit mir. Bin gespannt was ihr toller Pater Manus aus diesem Sperrmüll rausholen will.")

			ANSWER("Sieh an, sieh an... kaum haben sie was sie wollen, ändert sich ihr Tonfall. Wenn sie sich einbilden mit dem Stiletto gegen die Fallen Angels zu kaempfen, ziehen sie sich lieber warm an. Ich jedenfalls werde es nicht bedauern, wenn ihr totes Fleisch in den Wastelands verwest.",55)
		end

	NODE(55)
		SAY("Ja, ja, ja... und jetzt hauen sie endlich ab.")

		SETNEXTDIALOGSTATE(56)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
	NODE(56)
		SAY("Hauen sie ab. Ich habe keine Lust mit ihnen gesehen zu werden. Sollen sie nicht vielleicht jemanden das Teil bringen?")
		ENDDIALOG()


-----------------------------------------------------------------
--Pater Manus
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Ich habe nicht die Zeit mit jungen Mönchen zu sprechen.")
			ENDDIALOG()
		else
			SAY("Willkommen in unserer bescheidenen Kathedrale, junger Mönch. Der Orden hat sie schon angekündigt. Haben sie sich mit Cole getroffen?")
		
			ANSWER("Ja, aber ich habe noch etwas wichtiges zu tun, es tut mir leid.",109)
			ANSWER("Das kann man wohl sagen... ein sehr unangenehmer Zeitgenosse.",101)
		end
	NODE(101)
		SAY("Ja, er ist ein Narr... und ein Veräter... Hat er ihnen den ominösen Gegenstand gegeben?")
	
		ANSWER("Ja Pater. Ich werde allerdings nicht schlau daraus. Er ist aus Metall und fühlt sich irgendwie warm an.",103)
	NODE(103)
		SAY("Zeigen sie mal her.")

		ANSWER("Gern, hier ist er. Nehmen sie ihn.",104)

	NODE(104)
		TAKEITEM(9000)
		if(result==0)then
			SAY("Aber, wo ist denn der Gegenstand? Ohne diesen Gegenstand können wir leider nichts machen.")
			ENDDIALOG()
		else
			SAY("Interessant... Dieser Gegenstand ist aus Tacholytium. Ein warmes, leicht radioaktives Metall. Wenn sie es sich im dunkeln anschauen, werden Sie feststellen, dass es sogar ganz schwach glüht. Das ist auch der Hauptgrund, warum unsere Vorfahren den Werkstoff gern verwendet haben,...")

			ANSWER("WEITER",105)
		end
	NODE(105)
		SAY("...in der Zeit, als wir nach dem grossen Licht für Generationen unter der Erde lebten. Viele merkwürdige Geräte der alten Psi Mönche wurden aus Tacholytium hergestellt. Ich werde wohl ein paar der alten Aufzeichnungen studieren müssen, um die Bedeutung dieses Gegenstandes richtig einordnen zu können.")

		ANSWER("Soll das heissen, dass der Gegenstand womöglich doch etwas wert ist?",106)
	NODE(106)
		SAY("Geduld, mein junger Mönch, ist eine Tugend. Ich werde mich für eine Weile ins Archiv zurückziehen, um deine Frage endgültig beantworten zu können. Bis dahin belasse ich den Gegenstand in der Obhut der Abtei. Es ist durchaus möglich, dass er der Schlüssel zu etwas sehr grossem ist.")

		ANSWER("So sei es. Vielen Dank Pater.",107)
	NODE(107)
		SAY("Geh jetzt zurück zum Hauptquartier. Dort erwartet man dich schon. Möge Crahn deinen Weg segnen.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()
	NODE(108)
		SAY("Es tut mir leid, aber ich bin schon auf dem Sprung ins Archiv. Geh zum Hauptquartier zurueck.")
		ENDDIALOG()
	NODE(109)
		SAY("Vergesst nicht euch mit Cole zu treffen.")
		ENDDIALOG()

-----------------------------------------------------------------
--Official Resources Director
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Ich darf dich auf die Aufgabe aufmerksam machen. Das Ziel ist noch nicht erreicht. Mark Cole wartet noch immer im Sektor 06 auf dich. Pater Manus kann man in unserer Kathedrale hier finden.")
			ENDDIALOG()
		else
			SAY("Willkommen daheim, junger Mönch. Pater Manus hat mir bereits von deiner erfolgreichen Mission und dem seltsamen Gegenstand berichtet. Das war sehr gute Arbeit. Auch wie du dich gegenüber Cole verhalten hast... Ich weiss, dass er ein schwieriger und unverschämter Mann ist.")

			ANSWER("WEITER",151)
		end
	NODE(151)
		SAY("Als Belohnung erhälst Du von mir  2000 Neocron Credits. Ich würde Dir empfehlen, dass Geld in Deine PSI Ausrüstung zu investieren.")

		ANSWER("Danke, Schwester. Ich werde Ihren Ratschlag bedenken.",152)
	NODE(152)
		SAY("Wenn du deine Fähigkeiten weiter trainierst, habe ich vielleicht schon bald einen neuen Special Run für dich. Crahn segne dich und deinen Weg. Du musst hinaus zu den Menschen gehen, um dich im Umgang mit deinen PSI-Kräften zu üben.(nächste Mission Level 20)")
		GIVEMONEY(2000)
		EPICRUNFINISHED(10,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
end