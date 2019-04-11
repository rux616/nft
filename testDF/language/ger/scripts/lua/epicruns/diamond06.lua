--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D, Gregory 100
--1,D, Fergusson 200
--2,Loot , Hontoka
--3,D, Human Resource 300
--
--Startnode, Person
--0, Human Resource Director
--50, HONTOKA 1627
--100, Gregory Parkins 1608
--150, Hontoka 
--200, Fergusson 1643
--250, Hontoka
--300, Human Resource
--(Garmont)
--Items
--Giftdroge 250 9354
--Synthetic Wine Plus 807

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Ich habe jetzt endlich eine definitive Meldung von Eric Danmund höchstpersönlich. Er hat dies anscheinend zu einem Ausnahmefall gemacht und ist zu einer temporären Zusammenarbeit mit den Tsunamis bereit. Das alles ist aber höchst geheim und sie erfahren es nur, weil sie gezeigt haben, dass sie unser Vertrauen verdient haben. Niemand ausserhalb der Organisation darf davon erfahren. Sollten Sie auffliegen werden wir unsere Verwicklung dementieren. Sind sie bereit, dabei zu helfen Diamond von dieser Plage der Black Dragon zu befreien?")

		ANSWER("Darauf können sie wetten.",1)
	NODE(1)
		SAY("Etwas anderes hatte ich von ihnen auch nicht erwartet. Sie sollen erst einmal diese Dokumente mit einer verschlüsselten Antwort zu ihrem Tsunami Kontaktmann bringen, ich hoffe sie wissen noch wer das war.")

		ANSWER("Aber natürlich, ich mache mich sofort auf den Weg.",2)
	NODE(2)
		GIVEITEM(9353)
--Dokumente
		SAY("Dann vergessen sie nicht, sie werden wohl nicht nur als Bote für uns eintreten müssen. Sie werden direkt daran beteiligt sein, uns hier zu helfen bis der Vertrag mit den CityMercs in Aktion tritt. Ganz Diamond drückt ihnen die Daumen, auch wenn dieses Unternehmen Top Secret ist.")
		SETNEXTDIALOGSTATE(300)
		STARTMISSION()
		ENDDIALOG()
		

--------------------------------------------------------------------
-- HONTOKA
--50
	NODE(50)
		TAKEITEM(9353)
		if(result==0)then
			SAY("Haben sie denn keine Zustimmung von Diamond erhalten?")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(51)
			SAY("Wen haben wir denn da? Hat sich der erhabene Danmund endlich zu einer Antwort herabgelassen? ")

			ANSWER("Sarkasmus steht ihnen nicht, aber ihr Vorschlag traf auf offene Ohren. Es wurde zugestimmt zusammenzuarbeiten.",51)
		end
	NODE(51)
		SAY("Das ist gut zu hören, denn ohne dieses besondere Zusamenarbeit wäre es wohl bald schon sehr eng für uns geworden. Und nicht nur für uns, auch Diamond wäre wahrscheinlich bald am Ende gewesen. Ich mag es einfach nicht, wenn ich von anderen Leuten abhängig bin. Es wurde schon ein Plan erarbeitet, allerdings wäre es gut wenn du uns dabei zur Hand gehst.")

		ANSWER("Darauf habe ich mich schon vorbereitet. Ich bin dabei wenn es sein muss.",52)
	NODE(52)
		SAY("Gut, gut. Foster hat die Drogenspuren analysiert und konnte die Komponenten für uns identifizieren. Es hat sich dabei herausgestellt, dass ProtoPharm einen Grossteil dieser Mittel herstellt. Wir haben zwar genug davon bei einem Angriff sicherstellen können, aber es sagt uns deswegen trotzdem nicht was sie mit all diesen Massen von dem Zeug vor haben.")

		ANSWER("Offensichtlich wollten sie es an unliebsame Kundschaft verhökern.",53)
	NODE(53)
		SAY("Das wäre zu einfach. Aber was genau sie planen weiss ich auch nicht. Deswegen brauchen wir dich. Die meisten Tsunamis sind in Neocron bekannt wie bunte Hunde. Du aber nicht und deswegen solltest du einfach mal in das ProtoPharm Labor hineinspazieren und dort ein paar unverbindliche Fragen an einen gewissen Gregory Parkins richten. Verstanden?")

		ANSWER("Ja, aber was für Fragen soll ich ihm genau stellen?",54)
	NODE(54)
		SAY("Frag danach, wie viel von diesem Stoff Neuralgon verkauft wurde und wo es hingeliefert worden ist. Falls er es nicht rausrücken will, müssen sie sich etwas einfallen lassen. Suchen sie irgendein Druckmittel oder tun sie ihm einen kleinen Gefallen. ")

		ANSWER("Na toll, das wird keine leichte Geschichte. Ich werde es aber versuchen.",55)
	NODE(55)
		SAY("Danach kannst du mich hier finden, ich sag dir dann wie es weitergeht. Unseren Teil des Plans verrat ich noch nicht.")
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		


--------------------------------------------------------------------
-- Gregory Parkins
--100
	NODE(100)
		SAY("Sie haben hier nichts zu suchen, verschwinden sie gefälligst.")

		ANSWER("Uups, tut mir leid, ich dachte das hier wäre das alljährliche Treffen der Wein Connaisseurs.",108)
		ANSWER("Ich würde gerne etwas über den Stoff Neuralgon erfahren.",107)
		ANSWER("Was können sie mir über Neuralgon sagen?",107)
	NODE(101)
		TAKEITEM(807)
--Synthetic Wine Plus
		if(result==0)then
			SAY("Habe ich nicht schon gesagt, dass dies Privatgelände ist?.")
			ENDDIALOG()
		else
			SAY("Ahh, natürlich ist das was anderes. Woher wussten sie, dass ich Wein so gerne mag? ")

			ANSWER("So was ist doch Allgemeinhin  bekannt von so einem grossartigen Forscher wie sie es sind.",102)
		end
	NODE(102)
		SAY("Das ehrt mich natürlich, vielen Dank dafür.")

		ANSWER("Bitte sehr, ich bin besonders daran interessiert, ob ich nicht auch etwas von diesem Neuralgon erstehen könnte.",103)
	NODE(103)
		SAY("Neuralgon? Das ist aber ein ungünstiger Zeitpunkt, die gesamten Lagerbestände wurden aufgekauft. Es ist nichts mehr übrig und es wird leider auch wieder etwas länger dauern, bis wir diesen Stoff nachproduzieren werden.")

		ANSWER("Ja, ich habe davon gehört, sie hatten ihn in die… ahhh… wie hiess dieser Ort noch einmal?",104)
	NODE(104)
		SAY("Ja, er wurde in die Industrial Area  01 geliefert, aber wozu diese Unmengen davon benötigt wurden ist mir unbekannt. Dieses Neuralgon wird oft als Katalysator verwendet, so dass Medikamente und andere Mittel schneller ins Blut kommen können.")

		ANSWER("Vielen Dank, das ist alles hoch interessant, aber nichts für ungut. Auf Wiedersehen.",105)
	NODE(105)
		SAY("Keine Ursache und danke für den Wein.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(106)
		ENDDIALOG()
		
	NODE(106)
		SAY("Danke noch einmal für den Wein.")
		ENDDIALOG()

	NODE(107)
		SAY("Was fällt ihnen ein? Dies hier ist Privatgelände, verlassen sie sofort das Labor.")
		ENDDIALOG()

	NODE(108)
		SAY("Oh, Mann, jedes Kind weiss doch, dass das treffen in ViaRosso stattfindet. Da ich mich selbst zu den Weinkennern zähle, sollte ich das wohl wissen. Ich freue mich besonders auf die neuen Synthetic Wine Plus des neuen Jahres. Ich kann es kaum erwarten, diesen vollmundigen Geschmack von Synthetic Wine Plus mal wieder zu schmecken. Aber gehen sie jetzt, bevor ich die Sicherheit informiere.")
		SETNEXTDIALOGSTATE(101)
		ENDDIALOG()

--------------------------------------------------------------------
--Hontoka
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Suchen sie Gregory im ProtoPharm Labor auf. Der Eingang ist in Plaza 02.")
			ENDDIALOG()
		else
			SAY("Dann erzählen sie mir mal, was sie herausgefunden haben.")

			ANSWER("Dieses Neuralgon wurde in grossen Mengen in die Industrial Area 01 geliefert. Und zwar in solchen Mengen,  dass ProtoPharm nichts mehr davon übrig hat.",151)
		end
	NODE(151)
		SAY("Wirklich? Das müssen ja Massen gewesen sein. Wofür braucht Black Dragon so viel von diesem Zeug? Sie können doch nicht so viele von diesen Drogen herstellen.")

		ANSWER("Es muss für irgendetwas anderes da sein, ich werde mal die Industrial Zone 01 absuchen, vielleicht finde ich ja etwas.",152)
	NODE(152)
		SAY("Tu das, ich bin im Moment eh sehr beschäftigt unseren Teil des Plans zu erfüllen. Diamond hat ja hauptsächlich dich und jede Menge Kohle gesponsort. Berichte mir, was du herausfinden konntest, ja? Du kannst dich ja nach einem Arbeiter dort umsehen, ich denke, die Wissen am meisten.")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()

		


--------------------------------------------------------------------
-- Fergusson
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)	
		if(result==0)then
			SAY("Rühr hier nichts an, hier wird hart gearbeitet.")
			ENDDIALOG()
		else
			SAY("Aye, was kann ich für dich tun, Runner?")

			ANSWER("Ich wollte mich hier nur etwas umsehen. Können sie mir vielleicht ein paar Fragen beantworten?",201)
		end
	NODE(201)
		SAY("Aye, das kann ich… willste mir armen Arbeiter keine Credits geben? Vielleicht verschluck ich sonst etwas wichtiges.")

		ANSWER("Ist in Ordnung, hier haben sie 1000 Credits. Was können sie mir über eine grössere Lieferung einer Substanz namens Neuralgon sagen?",202)
	NODE(202)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Sorry, aber mir fällt im Moment einfach nichts ein. Vielleicht würde es helfen, wenn du etwas Geld dabei hättest.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(203)
			SAY("Ich erinnere mich, ja, die wurde hier abgeliefert und dann aber auch wieder abgeholt. War ne ziemliche Menge. Das hat bestimmt ein hübsches Sümmchen gekostet. Habe ich schon erwähnt, dass auch ich sehr auf Credits bedacht bin?")

			ANSWER("Ist ja gut, hier sind noch mal 1000 Credits. Fahren sie fort.",203)
		end
	NODE(203)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Sorry, aber mir fällt im Moment einfach nichts ein. Vielleicht würde es helfen, wenn du etwas Geld dabei hättest.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(204)
			SAY("Die Lieferung wurde von ein paar verdächtigen Typen abgeholt und bei einem konnte ich am Hals eine Black Dragon Tätowierung erkennen. Einer von denen meinte hämisch, dass sie diese Lieferung an die ganze Stadt verteilen werden. Und soll ich dir noch was sagen? Macht aber noch mal 1000 auf die Hand.")

			ANSWER("Jetzt fahren sie endlich fort, hier sind noch mal 1000.",204)
end
	NODE(204)
		TAKEMONEY(1000)
		if(result==0)then
			SAY("Sorry, aber mir fällt im Moment einfach nichts ein. Vielleicht würde es helfen, wenn du etwas Geld dabei hättest.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(205)
			SAY("Ich glaube die führen was ganz grosses im Schilde.")

			ANSWER("Na toll, diesen Kommentar hätten sie sich sparen können. Auf Wiedersehen.",205)
		end
	NODE(205)
		SAY("Viel Spass noch und einen produktiven Tag.")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(206)
		ENDDIALOG()		

	NODE(206)
		SAY("Ich hab schon alles gesagt, was es zu sagen gibt. Ich muss jetzt weiter arbeiten.")
		ENDDIALOG()	
--------------------------------------------------------------------
-- Hontoka
--250
	
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Suche Fergusson im Industrial Sektor auf. Wir sind hier nicht im Urlaub, die Black Dragon werden uns keinen Fehler verzeihen.")
			ENDDIALOG()
		else

			SAY("Gut, du musst sofort weiter, oder die Black Dragon werden ihren Plan erfüllen können. Wir wissen nun endlich, was sie planen.")

			ANSWER("Dann sagt es mir. Ich konnte nur herausbekommen, dass die Black Dragon dieses Neuralgon an die ganze Stadt verteilen wollen.",251)
		end
	NODE(251)
		SAY("Das ist zum Teil richtig, sie wollen nämlich diese vergifteten Drogen in das Trinkwasser der Stadt mischen. Und zwar nur dem Trinkwasser, dass von Black Dragon feindlichen Fraktionen genutzt wird. Wir wissen, dass eine Hauptleitung  unter dem Pepper Park 03 verläuft. Es gibt einen geheimen Zugang dorthin vom Bump Asylum und vom Secret Black Dragon HQ aus. Beeile dich, unsere anderen Leute bewachen die anderen Leitungen überall in der Stadt. Falls du dort jemanden antriffst, nimm ihm diese verdammte Droge ab.")

		ANSWER("Und sie machen gar nichts? Sie stehen hier nur so rum?",252)
	NODE(252)
		SAY("Jetzt werd mal nicht frech, wenn ich nicht gewesen wäre hätten wir uns nie im Leben gegen die Black Dragon zusammengeschlossen. Also mach dich auf den Weg. Ich stehe hier natürlich nicht einfach nur herum, irgendjemand muss unsere Leute ja koordinieren. Meld dich wieder bei mir wenn du etwas herausgefunden hast und diese Droge sichergestellt hast.")
		SETNEXTDIALOGSTATE(253)
		ENDDIALOG()

--Spieler stellt Black Dragon unter dem Bump Asylum

	NODE(253)
		TAKEITEM(9354)
		if(result==0)then
			SAY("Es eilt, die Black Dragon werden uns vergiften, wenn wir nicht aufpassen. Es gibt einen geheimen Zugang zu den Trinkwasser Leitungen vom Bump Asylum und vom Secret Black Dragon HQ aus.")
			ENDDIALOG()
		else
			SAY("Das war sehr gute Arbeit, hätte ich so einem Diamond Weichling gar nicht zugetraut. Unsere Trupps haben allen Black Dragon die Drogen abgenommen und es ist meines Wissens nach nichts ins Trinkwasser gelangt. Den Rest können wir auch ohne deine Hilfe schaffen. Du kannst Diamond ja jetzt Bericht erstatten. Falls du jemals die Nase voll von der Firma hast, wir können immer einen guten Mann gebrauchen.")
			SETNEXTDIALOGSTATE(254)
			ENDDIALOG()
		end

	NODE(254)
		SAY("Es ist alles unter Kontrolle. Es war knapp, aber am Ende haben die besseren doch gesiegt. Viel Glück weiterhin noch für deine Karriere.")
		ENDDIALOG()
--------------------------------------------------------------------
-- HUMAN rESOUORCE 
--300
	NODE(300)
--NEW
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Es ist dringend. Wir können nicht erlauben, dass diese Black Dragons uns noch mehr Ärger machen. Suchen sie Hontoka im Industrial Sektor 02 auf.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Es ist dringend. Wir können nicht erlauben, dass diese Black Dragons uns noch mehr Ärger machen. Suchen sie Hontoka im Industrial Sektor 02 auf.")
				ENDDIALOG()
			else 
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("Es ist dringend. Wir können nicht erlauben, dass diese Black Dragons uns noch mehr Ärger machen. Suchen sie Hontoka im Industrial Sektor 02 auf.")
					ENDDIALOG()
				else
					GIVEMONEY(100000)
					GIVEITEM(1574)
					SETNEXTDIALOGSTATE(301)
					SAY("Wir haben schon von dem Erfolg gehört. Das war sehr gute Arbeit von ihnen. Die Tsunamis heizen den Black Dragon im Moment sehr stark ein und schon morgen tritt der Vertrag mit den CityMercs in Kraft. Dann werden wir diese inoffizielle Verbindung zu den Tsunamis auch lösen können. Sie haben Diamond in dieser Krise einen grossen Dienst erwiesen und ich würde mich freuen, wenn sie Diamond in Zukunft auch mit einem Clan unterstützen würden. Als eine Belohnung würden wir ihnen gerne 100 000 Credits übergeben. Ausserdem können wir ihnen die Schlüssel zu einem Diamond Lagerraum aushändigen, wo sie ihre vielen Waren einlagern können.")
					EPICRUNFINISHED(2,5)
					ACTIVATEDIALOGTRIGGER(3)
					ENDDIALOG()
				end
			end
		end

	NODE(301)
		SAY("Go away")
		ENDDIALOG()

--NEWEND
--------
--Garmont
--350

	NODE(350)
		SAY("Ich hab hier ne wichtige Chemikalie, die noch ins Trinkwasser muss. Und du Wurm wirst mich davon nicht abhalten.")
		ATTACK()
		ENDDIALOG()


end