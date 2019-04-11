
--new
function DIALOG()

--Human Resource Director
	NODE(0)
		SAY("Wie ich sehe, hast Du hart gearbeitet, um uns Deine Loyalit�t zum Orden zu beweisen. Im Namen des heiligen Crahns danke ich Dir f�r Deinen Einsatz. Wenn du dem Orden weiterhin dienen willst, w�ren wir bereit, dich von nun an mit etwas komplexeren Missionen zu beauftragen. Bist du bereit f�r diese Herausforderung?")

		ANSWER("Ja, Schwester. Ich unterstelle meinen K�rper und meinen Geist vollkommen dem Wohle Crahn's.",1)
		ANSWER("Es tut mir leid, aber ich f�hle mich noch nicht bereit f�r eine solche Aufgabe.",8)

	NODE(1)
		SAY("Nun denn... Mark Cole, ein ehemaliges Mitglied der Fallen Angels, hat uns mitgeteilt, dass er angeblich im Besitz eines sehr wertvollen Gegenstandes sei. Er hat uns jedoch nicht gesagt, um was f�r einen Gegenstand es sich dabei handelt. Der Orden ist sich nicht sicher, was er von Cole's Glaubw�rdigkeit halten soll und wir m�chten nicht, dass Cole sich selbst zu wichtig nimmt.")

		ANSWER("Aber das kann man doch nicht so leicht verhindern, oder?",2)
	NODE(2)		
		SAY("Richtig. Daher hat der Orden beschlossen, keinen hohen Bruder zu ihm zu schicken. Da wir der Sache aber trotzdem auf den Grund gehen muessen, wuerde ich Dich gern bitten, den Gegenstand abzuholen und dann zu Pater Manus hier in der Kathedrale Crahns zu bringen, damit dieser den Gegenstand begutachten kann.")

		ANSWER("Wer genau ist dieser Mark Cole und wer sind die Fallen Angels?",3)
	NODE(3)
		SAY("Cole hat lange f�r die Fallen Angels gearbeitet. Die Fallen Angels sind eine Vereinigung von Wissenschaftlern, die im Exil der Wastelands lebten. Ihre Basis, ein Mekka der S�nde, hiess Tech Haven. Aber nun haben auch sie sich ein St�ckchen von dem abgeschnitten was von Dome of York �brig ist. Das Verh�ltnis zwischen der Bruderschaft und den Fallen Angels ist aufgrund einiger unangenehmer Ereignisse in der Vergangenheit getr�bt und wir sind nun sehr an der Kooperation mit ehemaligen Tech Haven Wissenschaftlern interessiert.")

		ANSWER("Ehemalige Mitarbeiter? Arbeitet Cole nun nicht mehr f�r sie?",4) 
	NODE(4)
		SAY("Entgegen seiner Aussage, ist Cole von den Fallen Angels verstossen worden, nachdem er versucht hat wissenschaftliche Geheimprojekte der Angels zu verkaufen.")

		ANSWER("Wo genau finde ich Cole?",5)
	NODE(5)
		SAY("Du solltest deine Suche im Sektor 06 hier im dome starten. Dort gibt es einen Waffenumschlagsplatz, den keine Fraktion f�r sich beansprucht und der f�r alle Fraktionen etwas bietet.")

		ANSWER("Ich hoffe er h�lt sich nicht zu sehr im Verborgenen.",6)
	NODE(6) 
		SAY("Wenn alles wie geplant l�uft, �berbringe Pater Manus meine Gl�ckw�nsche. Seine Arbeit ist eine Inspiration f�r uns alle. Moechtest Du den Auftrag annehmen?")

		ANSWER("Ja,... ich werde Crahn nicht entt�uschen.",7)
	NODE(7)
		SAY("So gehe denn hin, im Schutze Crahns. Gesegnet sei Deine Mission.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(150)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()


	NODE(8)
		SAY("Dann kehre zur�ck, wenn du dich der Aufgabe gewachsen f�hlst.")
		ENDDIALOG()

-----------------------------------------------------------------
--Mark Cole
	NODE(50)
		ACTIVATEDIALOGTRIGGER(0)
			SAY("Sie sind also der junge M�nch, der mir von der Br�derschaft angek�ndigt wurde? Warum kommt Pater Manus nicht selbst?")

			ANSWER("Bitte Cole... ich habe nur wenig Zeit. Geben Sie mir den Gegenstand, der angeblich so wertvoll sein soll.",51)


	NODE(51)
		SAY("Nicht so hastig mein junger Freund...  Seit ich nicht mehr bei den Fallen Angels bin, ist das Leben gef�hrlich f�r mich geworden. Die Angels wollen mich anscheinend umbringen lassen, weil sie davon ausgehen, dass ich Forschungsgeheimnisse aus meiner Zeit im Tech Haven Labor verkaufen k�nnte.")

		ANSWER("Was gehen mich Ihre Probleme an? Ich dachte, sie wollten mir einen angeblich wertvollen Gegenstand �bergeben? Alles andere interessiert mich nicht.",52)

	NODE(52)
		SAY("So haben sie doch Verst�ndnis... ich bin total pleite und kann mir nicht einmal eine einfache Waffe leisten. Der Gegenstand, den ich hier f�r sie habe ist f�r die Bruderschaft sehr wertvoll, f�r mich aber absolut nutzlos. Besorgen sie mir eine einfache Waffe... ein Stiletto... dann gebe ich Ihnen den Gegenstand.")

		ANSWER("Nun gut... ich werde Ihnen Ihr Stiletto besorgen. Warten Sie hier auf mich.",53)

	NODE(53)
		SAY("Wohin sollte ich schon gehen? Die Killer der Angels lauern �berall. Nur in der Dunkelheit dieses Marktes f�hle ich mich halbwegs sicher.")
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
			SAY("Her mit dem Messer...  Hier nehmen sie das ramschige Teil. Und jetzt hauen sie ab... sonst sieht man sie wohm�glich noch mit mir. Bin gespannt was ihr toller Pater Manus aus diesem Sperrm�ll rausholen will.")

			ANSWER("Sieh an, sieh an... kaum haben sie was sie wollen, �ndert sich ihr Tonfall. Wenn sie sich einbilden mit dem Stiletto gegen die Fallen Angels zu kaempfen, ziehen sie sich lieber warm an. Ich jedenfalls werde es nicht bedauern, wenn ihr totes Fleisch in den Wastelands verwest.",55)
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
			SAY("Ich habe nicht die Zeit mit jungen M�nchen zu sprechen.")
			ENDDIALOG()
		else
			SAY("Willkommen in unserer bescheidenen Kathedrale, junger M�nch. Der Orden hat sie schon angek�ndigt. Haben sie sich mit Cole getroffen?")
		
			ANSWER("Ja, aber ich habe noch etwas wichtiges zu tun, es tut mir leid.",109)
			ANSWER("Das kann man wohl sagen... ein sehr unangenehmer Zeitgenosse.",101)
		end
	NODE(101)
		SAY("Ja, er ist ein Narr... und ein Ver�ter... Hat er ihnen den omin�sen Gegenstand gegeben?")
	
		ANSWER("Ja Pater. Ich werde allerdings nicht schlau daraus. Er ist aus Metall und f�hlt sich irgendwie warm an.",103)
	NODE(103)
		SAY("Zeigen sie mal her.")

		ANSWER("Gern, hier ist er. Nehmen sie ihn.",104)

	NODE(104)
		TAKEITEM(9000)
		if(result==0)then
			SAY("Aber, wo ist denn der Gegenstand? Ohne diesen Gegenstand k�nnen wir leider nichts machen.")
			ENDDIALOG()
		else
			SAY("Interessant... Dieser Gegenstand ist aus Tacholytium. Ein warmes, leicht radioaktives Metall. Wenn sie es sich im dunkeln anschauen, werden Sie feststellen, dass es sogar ganz schwach gl�ht. Das ist auch der Hauptgrund, warum unsere Vorfahren den Werkstoff gern verwendet haben,...")

			ANSWER("WEITER",105)
		end
	NODE(105)
		SAY("...in der Zeit, als wir nach dem grossen Licht f�r Generationen unter der Erde lebten. Viele merkw�rdige Ger�te der alten Psi M�nche wurden aus Tacholytium hergestellt. Ich werde wohl ein paar der alten Aufzeichnungen studieren m�ssen, um die Bedeutung dieses Gegenstandes richtig einordnen zu k�nnen.")

		ANSWER("Soll das heissen, dass der Gegenstand wom�glich doch etwas wert ist?",106)
	NODE(106)
		SAY("Geduld, mein junger M�nch, ist eine Tugend. Ich werde mich f�r eine Weile ins Archiv zur�ckziehen, um deine Frage endg�ltig beantworten zu k�nnen. Bis dahin belasse ich den Gegenstand in der Obhut der Abtei. Es ist durchaus m�glich, dass er der Schl�ssel zu etwas sehr grossem ist.")

		ANSWER("So sei es. Vielen Dank Pater.",107)
	NODE(107)
		SAY("Geh jetzt zur�ck zum Hauptquartier. Dort erwartet man dich schon. M�ge Crahn deinen Weg segnen.")
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
			SAY("Willkommen daheim, junger M�nch. Pater Manus hat mir bereits von deiner erfolgreichen Mission und dem seltsamen Gegenstand berichtet. Das war sehr gute Arbeit. Auch wie du dich gegen�ber Cole verhalten hast... Ich weiss, dass er ein schwieriger und unversch�mter Mann ist.")

			ANSWER("WEITER",151)
		end
	NODE(151)
		SAY("Als Belohnung erh�lst Du von mir  2000 Neocron Credits. Ich w�rde Dir empfehlen, dass Geld in Deine PSI Ausr�stung zu investieren.")

		ANSWER("Danke, Schwester. Ich werde Ihren Ratschlag bedenken.",152)
	NODE(152)
		SAY("Wenn du deine F�higkeiten weiter trainierst, habe ich vielleicht schon bald einen neuen Special Run f�r dich. Crahn segne dich und deinen Weg. Du musst hinaus zu den Menschen gehen, um dich im Umgang mit deinen PSI-Kr�ften zu �ben.(n�chste Mission Level 20)")
		GIVEMONEY(2000)
		EPICRUNFINISHED(10,0)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
end