--new
--Diamond Real Estate
--
--Trigger
--Triggernumber,Type,Person
--0,D,Foster, 50
--1,D, Foster, 200
--2,D, Hontoka, 250
--3,D, Human Resource, 300
--
--Startnode, Person
--0, Human Resource Director
--50, Foster 1632
--100, Hontoka 1627
--150, Pat, Tawkeen Village 1642
--200, Foster
--250, Hontoka
--300, Human Resource Director
--
--Items
-- Schlüssel für Pepper Park Appartement 1570
-- Bündnisvorschlag 9353

function DIALOG()
--------------------------------------------------------------------
--Human Resource Director
--0
	
	NODE(0)
		SAY("Da sie ja anscheinend ein Naturtalent sind, wollen wir sie gerne wieder für einen Auftrag. Mit den Verlusten, die uns die BlackDragon jeden Tag zufügen, können wir es uns einfach nicht erlauben, noch mehr Leute zu verlieren. Viele Angestellte hier fürchten schon um ihren Arbeitsplatz und ich bin da keine Ausnahme.")

		ANSWER("Ist es wirklich schon so schlimm? Ich habe in der letzten Zeit überhaupt nicht viel davon mitbekommen.",1)
		ANSWER("Ich habe noch dringend andere Dinge zu erledigen.",7)
	NODE(1)
		SAY("Dann gehören sie zu den wenigen Glücklichen, die von diesen Übergriffen noch nicht betroffen worden sind. Die Black Dragon versuchen mit einer Kombination von Drohungen und tatsächlicher Gewalt unsere Kunden abzuwerben. Inzwischen wissen wir auch, was für eine Taktik sie verfolgen.")

		ANSWER("Warum ist es dann so schwer, dem ganzen einen Riegel vorzuschieben?",2)
	NODE(2)
		SAY("Die Twilight Guardian erledigen all die Drecksarbeit für die Black Dragon. Das ist auch der Grund, warum die Spuren nie zu den Black Dragon zurückführen. Aber es gibt keinerlei Beweise dafür. Abgesehen davon unternimmt die NCPD eh schon alles, was in ihrer Macht steht. ")

		ANSWER("Ich hoffe es sind noch nicht zu viele Leute abgewandert.",3)
	NODE(3)
		SAY("Das ist unser grosses Problem. Im Vertrauen gesagt, bricht hier alles langsam in sich zusammen. Die Kunden fliehen Scharenweise und niemand möchte mehr Diamond Immobilien kaufen. Ich möchte sie nicht erschrecken, aber genau deswegen brauchen wir auch alle Hilfe, die wir bekommen können.")

		ANSWER("Aber was ist mit dem Vertrag mit den CityMercs?",4)
	NODE(4)
		SAY("Wenn der endlich in Aktion treten würde, wären wir auf der sicheren Seite. Aber wegen einer Klausel im Vertrag kann dieser noch nicht in Kraft treten. Deshalb werden hier alle Kräfte mobilisiert um die Zeit bis dahin überleben zu können.")

		ANSWER("Es scheint, ich sollte wirklich meinen Teil für diese Sache tun. Was ist überhaupt meine Aufgabe dabei?",5)
	NODE(5)
		SAY("Sie sollen Foster in ViaRosso 03 besuchen. Ich habe hier in meinen Akten eine Notiz, dass sie diese Person schon kennen, richtig?")

		ANSWER("Ja, aber er hat seinen Vertrag mit Diamond ja schon gekündigt. Er hatte ein paar schreckliche Erlebnisse.",6)
	NODE(6)
		SAY("Gut, gut., dass sie ihn schon kennen. Wir wollen nämlich, dass sie ihm einen Anreiz geben, wieder einen Vertrag bei uns aufzunehmen. Tun sie, was immer sie für notwendig halten. Denken sie daran, Diamond benötigt sie dringend.")
		SETNEXTDIALOGSTATE(300)
		STARTMISSION()
		ENDDIALOG()
	NODE(7)
		SAY("Kommen sie wieder, wenn sie genug Interesse dafür aufbringen.")
		ENDDIALOG()
	
--------------------------------------------------------------------
-- Foster
--50
	NODE(50)
		SAY("Ja, ich habe mich dazu entschlossen, noch einmal mit ihnen zu reden. Fragen sie mich nicht warum. Aber jetzt wo sie endlich da sind, sagen sie mir was sich im Vergleich zu Früher geändert hat.")

		ANSWER("Ich kann ihnen sagen, dass hart daran gearbeitet wird.",51)
	NODE(51)
		SAY("Geben sie mir nicht denselben Mist. Ich möchte hören, ob sich definitiv etwas geändert hat. Geben sie mir nicht diese geschönte Firmenpropaganda.")

		ANSWER("Sie wollen also wissen, wie es wirklich steht? Diamond wird hart bedrängt und versucht sich so gut es geht gegen diese Übergriffe zu schützen.",52)
	NODE(52)
		SAY("Hab ich mir doch gedacht, dass nicht alles so schön ist wie es aussieht. Also haben sie gar keine Argumente, die mich überzeugen könnten?")

		ANSWER("Diamond hat einen Vertrag mit den CityMercs ausgehandelt. Nur ist dieser noch nicht in Kraft getreten. Es kann aber nicht mehr lange dauern.",53)
	NODE(53)
		SAY("Sie wollen mich doch wieder als Kunden von Diamond werben, habe ich recht? Dann werde ich ihnen ein Angebot machen. Ich habe ein paar Beziehungen zu den Tsunamis und wie sie vielleicht wissen sind diese nicht besonders gut auf die Black Dragon zu sprechen. Sie helfen mir und ich werde im Gegenzug ein anderes Appartement von Diamond erstehen.")

		ANSWER("Auch wenn sie noch nicht preisgegeben haben, worum es sich handelt, so klingt dieses Angebot doch sehr verlockend.",54)
	NODE(54)
		SAY("Ich bereite gerade etwas ausgesprochen seltenes für Tsunami vor.  Die Tsunamis versorgen mich dabei mit wichtigen oder seltenen Teilen und im Gegenzug lasse ich für sie meinen Erfindungsgeist ein bisschen spielen. Allerdings können sie mir nicht immer alle Gegenstände liefern und deshalb komme ich auf sie zurück. Sind sie bereit etwas spezielles für mich zu besorgen?")

		ANSWER("Falls sie danach wieder zu Diamond zurückkommen, klar.",55)
	NODE(55)
		SAY("Abgemacht. Besuchen sie einfach Hontoka im Industrial Sektor 02. Es sollte ihm möglich sein, den Gegenstand, den ich benötige an sie weiterzureichen. Bringen sie ihn dann sofort zu mir, klar?")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()

--------------------------------------------------------------------
-- Hontoka
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Du hast hier nichts zu suchen.")
			ENDDIALOG()
		else
			SAY("Das hier ist gefährliches Gebiet, Runner. Warum machst du nicht einfach die Fliege?")

			ANSWER("Ich lasse mir doch nichts vorschreiben. Ich komme von einem gewissen Foster. Ich nehme an sie kennen ihn.",101)
		end
	NODE(101)
		SAY("Foster? Ja, den Namen habe ich schon einmal gehört, warum?")

		ANSWER("Ich soll einen dringend benötigten Gegenstand für sein Projekt besorgen, er wollte wohl nicht alleine hierher kommen.",102)
	NODE(102)
		SAY("Und da denkt er sich er schickt einen Boten, was? Das hat er sich wohl so gedacht. Nur leider ist das ganze nicht so leicht wie unser lieber Freund sich das vorstellt.  Er hat dir sicher nichts davon gesagt, dass ich ihm nur sagen wollte, wo dieser Stoff sich befindet, oder?")

		ANSWER("Allerdings nicht. Ich soll ihm also dieses was auch immer es ist auch noch von irgendwoher besorgen?",103)
	NODE(103)
		SAY("Du bist ja einer der ganz cleveren Sorte. Richtig, von mir erfährst du nur, woher man es bekommen kann. In Tawkeen Village gibt es einen gewissen Händler, Pat ist ihr Name. Dort kannst du dir alles nötige besorgen. Falls sie sich nicht kooperativ zeigt, musst du sie wohl niederschlagen um das zu bekommen was du willst.")

		ANSWER("Klar so weit, aber um was für einen Gegenstand handelt es sich eigentlich?",104)
	NODE(104)
		SAY("Es geht um einen Wohnungsschlüssel von einem Pepper Park Appartement. Jetzt langweil mich nicht länger, geh. Und bring den Schlüssel zu Foster, klar?")
		SETNEXTDIALOGSTATE(250)
		ENDDIALOG()		

	
--------------------------------------------------------------------
-- Pat
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ahh, es tut mir sehr leid, aber ich habe momentan keine Waren. Der Lieferbescheid müsste allerdings bald kommen.")
			ENDDIALOG()
		else
			SAY("Ein neuer Käufer, was kann ich für sie tun? Wissen sie, ich bekomme hier nicht wirklich oft Kundschaft, aber wenn doch, dann kaufen diese zumeist sehr viel ein.")

			ANSWER("In den Wastelands muss es wohl so sein. Ich suche nach einer Pepper Park Wohnung.",151)
		end
	NODE(151)
		SAY("Heute ist ihr Glückstag, ich habe nur eine einzige Wohnung im Angebot und es ist rein zufällig eine Pepper Park Wohnung. Allerdings ist so etwas hier draussen ganz schön teuer. So was hat hier Seltenheitswert. Ich habe gehört, dass diese Wohnung einmal den Black Dragon gehört hat, aber das ist natürlich nur ein Gerücht.")

		ANSWER("Wissen sie noch mehr darüber? Und vor allen Dingen wie viel kostet es?",152)
	NODE(152)
		SAY("Es war Schauplatz von einem Mord, Die Black Dragon haben bis zu diesem Ereignis dort drinnen einen Teil ihrer Drogen produziert. Das Appartement ist noch immer voll von Drogenstaub und hinterlassenen Pillen. Das ist wohl auch der Grund, warum es so begehrt ist. Allerdings ist der Zugang versperrt, da das Gebäude bei einem Tsunami Angriff stark beschädigt wurde.")

		ANSWER("Kann man das denn dann überhaupt noch benutzen?",153)
	NODE(153)
		SAY("Aber natürlich. Das Appartement selbst ist gut in Schuss. Deswegen möchte ich auch nur die Kleinigkeit von 30 000 dafür.")

		ANSWER("30 000 ?! Sind sie noch zu retten? Dafür bekommt man doch schon eine angemessene Plaza Wohnung.",154)
		ANSWER("Gut, ich nehme es, auch wenn es viel zu teuer ist.",156)
	NODE(154)
		SAY("Nun, meine Preise ändern sich nicht, auch nicht, wenn sie hier noch so herumschreien. Entweder sie kaufen es oder eben nicht, ich gebe es auf jeden Fall nicht umsonst weg. Da müssten sie mich schon niederschlagen und so viel Mumm haben sie sicher nicht.")
		SETNEXTDIALOGSTATE(155)
		ENDDIALOG()

-- Spieler killt oder bezahlt Pat
		
	NODE(155)
		SAY("Verschwindet! Oder wollen sie doch das Appartment kaufen?")

		ANSWER("Ja, auch wenn es ganz schön überteuert ist.",156)
		ANSWER("Nein, das ist viel zu teuer. Das ist reinster Wucher!",154)
	NODE(156)
		TAKEMONEY(30000)
		if(result==0)then
			SAY("Ohne Credits gibts bei mir aber gar nichts, damit das klar ist.")
			ENDDIALOG()
		else
--Schlüssel
			GIVEITEM(9356)
			SAY("Gut, hier ist der Schlüssel. Ich hab auch extra noch einmal ein bischen vom Preis heruntergenommen.")
			SETNEXTDIALOGSTATE(157)
			ENDDIALOG()
		end
	NODE(157)
		SAY("Ich habe ihnen schon alles gegeben, was ich zum Verkauf hatte.")

		ENDDIALOG()


--------------------------------------------------------------------
-- Foster
--200
	NODE(200)
--Schlüssel
		TAKEITEM(9356)
		if(result==0)then
			SAY("Sie sollten doch zu Hontoka in den Industrial Sektor 02 gehen und dort einen Schlüssel holen.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(201)
			SAY("Ahh, ich hatte nicht gedacht, dass sie es fertig bringen. Sie waren immerhin schon recht lange fort.")

			ANSWER("Ja, es hat eine Weile gedauert. Aber jetzt würde ich gerne wissen, was es mit diesem Appartement auf sich hat.",201)
		end
	NODE(201)
		SAY("Es tut mir leid, der einzige, der ihnen was dazu sagen könnte wäre Hontoka. Ich werde mich nun auf jeden Fall wie abgemacht wieder an ein Diamond Appartement halten. Wenn sie möchten, kann ich noch ein treffen mit Hontoka arrangieren. Ich denke er wird verblüfft sein, dass sie den Schlüssel besorgen konnten")
		ACTIVATEDIALOGTRIGGER(1)
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
	NODE(202)
		SAY("Danke für die Hilfe, sie können Diamond jetzt sagen, dass ich wieder mit dabei bin. Besuchen sie Hontoka doch noch einmal.")

		ENDDIALOG()

--------------------------------------------------------------------
-- Hontoka
--250
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Wollten sie nicht den Appartement Schlüssel für Foster besorgen? Fragen sie doch mal Pat in der Tawkeen Village.")
			ENDDIALOG()
		else
			SAY("Foster hat mich genauer über dich informiert. Jetzt ist auch einiges klarer. Sie arbeiten schon länger für Diamond, richtig?")

			ANSWER("Ja, erzählen sie mir nun, was es mit diesem Appartement auf sich hat? Pat hatte noch etwas erwähnt, aber ich wüsste es gerne genauer.",251)
		end
	NODE(251)
		SAY("Nun gut, ich erzähle es dir. Dieses Appartement von dem die Rede ist war ein Produktionsort für ganz spezielle Drogen der Black Dragons. Diese machten die Konsumenten hochgradig süchtig und waren gleichzeitig als Gift konzipiert worden. Damit versuchten sie viele Tsunami Tänzerinnen zu locken und wenn diese dann süchtig nach dem Zeug wären, nun, dann würde das Gift ihnen den Rest geben")

		ANSWER("Diese Black Dragon haben anscheinend überall ihre Finger im Spiel.",252)
	NODE(252)
		SAY("Ja, allerdings. Wir konnten das Problem letztendlich nur lösen, indem wir einen Angriff auf das Gebäude starteten. Es gab Verluste auf beiden Seiten, aber als sich der Rauch verzogen hatte stand Tsunami als Sieger da. Der Schlüssel war allerdings verloren, du hast ihn ja eben erst wiedergeholt. ")

		ANSWER("Was hat Foster mit der ganzen Sache zu tun?",253)
	NODE(253)
		SAY("Er wird die Drogenreste in diesem Appartement untersuchen und uns die Zusammensetzung mitteilen. Mehr will ich darüber noch nicht preisgeben. ")

		ANSWER("Nun gut, sie haben aber doch noch etwas von einem Vorschlag erwähnt. ",254)
	NODE(254)
		SAY("Die Black Dragon waren in der letzten Zeit sehr aktiv und ich denke nicht, dass sie schon am Ende ihrer Ressourcen stehen. Sie reiben ihre Gegner durch konstanten Druck langsam auf. Diamond bildet da keine Ausnahme. Ich weiss, wie ihre Lage ist, jeden Tag kann man wieder davon hören. Diamond wird zurückgedrängt.")

		ANSWER("Woher wissen sie das? Ist es wirklich schon so weit verbreitet?",255)
	NODE(255)
		SAY("Wenn du wüsstest, es ist sogar noch schlimmer. Wichtiger ist jedoch, dass Tsunami und Diamond ja nun einen gemeinsamen Feind haben. Und das macht uns zu … Verbündeten. Ich habe mit anderen Tsunamis und selbst Veronique selbst gesprochen. Mir wurde erlaubt eine Allianz mit Diamond vorzuschlagen für die Zeit bis die Black Dragon keine wirkliche Gefahr mehr darstellen.")

		ANSWER("Eine Allianz mit den Tsunamis!? Undenkbar! Ihr seid ja so etwas wie kriminelle…",256)
	NODE(256)
--Bündnisvorschlag
		GIVEITEM(9353)
		SAY("Denk drüber nach und du wirst zu dem Schluss kommen, dass es sehr gut für unsere beiden Parteien ist. Überbring dieses Paket an jemanden bei Diamond. Es enthält die Vorschläge, die ich dir gerade dargelegt habe. Das wird reichen denke ich. Viel Glück wünsche ich noch.")
		ACTIVATEDIALOGTRIGGER(2)
		SETNEXTDIALOGSTATE(257)
		ENDDIALOG()
		
	NODE(257)
		SAY("Überbringe diesen Vorschlag bitte an Diamond.")

		ENDDIALOG()

--------------------------------------------------------------------
-- Human Resource Director
--300
	NODE(300)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Sie sollten doch versuchen Foster in ViaRosso 03 davon überzeugen, wieder bei uns einen Vertrag zu unterschreiben.")
			ENDDIALOG()
		else
--Bündnisvorschlag
			TAKEITEM(9353)
			if(result==0)then
				SAY("Tut mir leid, aber die Dokumente für das Bündnis, dass die Tsunamis vorschlagen müssen sie schon vorweisen können, damit Diamond darauf eingehen kann.")
				ENDDIALOG()
			else
				SETNEXTDIALOGSTATE(301)
				SAY("Da haben sie sich wieder viel Zeit gelassen. Ist wenigstens etwas positives dabei herausgekommen?")

				ANSWER("Ich konnte Foster unter Mühen überzeugen wieder ein Diamond Appartement zu wählen. Aber es gibt noch mehr. Hier sind ein paar Dokumente der Tsunamis, sie haben uns ein Bündnis vorgeschlagen.",301)	
			end
		end
	NODE(301)
		SAY("Mit den Tsunamis? Lächerlich, wir sind hier eine renommierte Firma und nicht irgendwelche Kriminelle. ")

		ANSWER("Wäre es denn nicht besser, wenn man Kriminelle auf Kriminelle loslässt? Ich meine, es geht mich ja nichts an, aber die Sache sieht wirklich schlecht für uns aus.",302)
	NODE(302)
		GIVEMONEY(50000)
		SAY("Sind wir schon so tief gesunken? Kann es sein, dass diese Tsunamis unsere letzte Chance sind? Ach, ich weiss auch nicht mehr was ich glauben soll. Ich werde diesen Vorschlag nach oben weitergeben. Leider werde ich von den Tsunami Dokumenten eine Antwort erst in einiger Zeit erwarten können. Aber wir hätten sie dann gerne als Mittelsmann wenn es so weit ist. Halten sie sich dann mal in Form. Ihnen steht aber eine Belohnung von 20000 Credits zu, damit können sie sicherlich eine Weile auskommen. (nächste Mission Level 45)")
		EPICRUNFINISHED(2,4)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

	NODE(303)
		SAY("Go Away")
		ENDDIALOG()

end