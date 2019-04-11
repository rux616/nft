--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
-- 6(0),PvP, Max
-- 1,D, Mazzaro

--Startnode, Person
--0
--50, Max
--100, Benjamin
--150, Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Wir haben ihren Verbindungsmann von BioTech benachrichtigt und Interesse an dem Blueprint angek�ndigt. Wir haben nat�rlich versucht, ihm ein geeignetes Angebot zu machen, aber...")

		ANSWER("Er hat es ausgeschlagen? Der Blueprint ist schon verkauft?",1)
	NODE(1)
		SAY("Nein, das nicht. Ich denke er weiss, dass sie von einer grossen und einflussreichen Firma geschickt worden sind. Tangent h�tte wohl fast jeden Preis f�r diese Blueprints bezahlt. Nein, er wollte etwas anderes als Bezahlung haben.")

		ANSWER("WEITER",2)
	NODE(2)
		SAY("Er sagte etwas von einer alten Rechnung, die er noch mit den FallenAngels offen h�tte. Anscheinend hatten diese ihn wegen mangelnder Qualifikationen nicht einstellen wollen.")

		ANSWER("Das ist ja nicht so ungew�hnlich, selbst Tangent ist ja nicht so gut auf die Fallen Angels zu sprechen.",3)
	NODE(3)
		SAY("In der Tat. Aber die Fallen Angels h�tten das Tangent System ja auch nicht hacken m�ssen. Das war ein Chaos. Aber ich schweife ab. Wir wollen sie, um diesem BioTech Kontaktmann seinen Wunsch zu erf�llen.")

		ANSWER("Was genau muss ich dazu tun?",4)
		ANSWER("Ich kann das im Moment nicht tun, tut mir leid.",9)
	NODE(4)
		SAY("Es ist ganz einfach, auch wenn wir normalerweise nicht auf diese Art von Aktion zur�ckgreifen. Ihr trefft euch mit Max, ihr k�nnt ihn in der Outzone Sektor 5 treffen. Er ist ein alter Hase, wenn es zu solchen Auftr�gen kommt.")

		ANSWER("WEITER",5)
	NODE(5)
		SAY("Ihr sagt ihm, dass er 10 Fallen Angels Mitglieder umlegen soll. So weit ganz einfach, nicht? Aber sagt ihm auch, dass er keine kleinen Fische umbringen soll, sondern die Erfahrenen ins Visier nehmen soll.")

		ANSWER("Wenn es Tangent nutzt, dann tue ich das. Immerhin haben die Fallen Angels ja uns zuerst angegriffen. Aber ich habe meine Bedenken...",6)
	NODE(6)
		SAY("Lasst mich euch eins sagen, mit dieser Einstellung kommt man nicht weit. F�r Tangent muss man auch mal gewillt sein, K�pfe rollen zu lassen. Kommen sie, Tangent produziert Waffen.")

		ANSWER("WEITER",7)
	NODE(7)
		SAY("Und wof�r? Genau. Nicht um damit L�cher in den Himmel zu schiessen. Das Wohl der Firma ist mehr Wert als so ein paar mutierte Fallen Angels.")

		ANSWER("Ist ja gut , ich �bernehme den Auftrag, aber ich finde, dass ein Blueprint kein Menschenleben wert ist.",8)
	NODE(8)
		SAY("Diese Einsch�tzung �berlassen sie vielleicht dann doch der F�hrungsetage. Treffen sie sich zuerst mit Max, er ist Black Dragon und im Sektor 5 der Outzone zu finden. Pass auf, Traue ihm nicht. Mazzaro will sie nach dem Auftrag auch sehen.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(10)
		ENDDIALOG()
		
	NODE(9)
		SAY("Wie sie wollen, aber verlassen sie sich nicht darauf, dass Tangent ewig Auftr�ge f�r sie parat h�lt.")
		ENDDIALOG()
		
	NODE(10)
		SAY("Sie haben ihren Auftrag. Besuchen sie Max im Outzone Sektor 5 und wenn dieser dann die Fallen Angels get�tet hat, bekommen sie einen Blueprint von Benjamin im Industrial 02. Wenn sie alles haben, bringen sie es zu Mazarro.")

		ENDDIALOG()


-----------------------------------------------------
--Max

	NODE(50)
		SAY("Was will so einer wie du hier? Du k�nntest hier noch einmal umkommen mit so einer Unvorsichtigkeit.")

		ANSWER("Ich bin von Tangent geschickt worden.",51)
	NODE(51)
		SAY("Ja, das habe ich mir schon gedacht. Was f�r ein Problem gibt es denn dieses Mal?")

		ANSWER("Ich sollte ihnen ausrichten, dass sie zehn Mitglieder der Fallen Angels t�ten sollen. Egal wen...",52)
	NODE(52)
		SAY("Egal wen? Solche Auftr�ge mag ich am liebsten. Da kann man sich immer ein harmloses unschuldiges Opfer ausw�hlen und sich einen Spass aus der ganzen Sache machen.")

		ANSWER("H�ren sie auf, denken sie wirklich so etwas macht Spass?",53)
	NODE(53)
		SAY("Wenn du mich fragst, ja. Das Leben ist eh nur ein tempor�rer Zustand. Mit Drogen kann man schon etwas von dem sehen, was dahinter liegt. Was uns nach dem Tod erwartet.  Hinter dem Leben. ")

		ANSWER("WEITER",54)
	NODE(54)
		SAY("Aber es ist einfach cool. Hast du schon mal einem sterbenden in die Augen geblickt? Man kann genau den Moment sehen, in dem sie ihr letztes bischen Leben aushauchen.")

		ANSWER("H�rt auf, ich habe weder Lust noch Zeit mir so etwas anzuh�ren.",55)
	NODE(55)
		SAY("Aber du solltest mir zuh�ren. Die Fallen Angels sind zwar einfache Ziele, aber ich habe es mir anders �berlegt. Ich werde mit ein paar Jungs nur neun von ihnen abknallen. Nur neun.")

		ANSWER("Es waren aber zehn mit Tangent abgemacht, sie k�nnen doch nicht einfach die Bedingungen �ndern...",56)
	NODE(56)
		SAY("Tja, da bleibt dir wohl nur eins. Du musst selber Hand anlegen. Du willst es dir doch nicht mit Tangent verscherzen, oder? Das Blut von einem Menschen wird an deinen H�nden kleben. Tja, und dann... dann wird sich zeigen, ob du das Blut auch aus deinen Tr�umen waschen kannst...")

		ANSWER("Aber ich w�sste ja nicht einmal wen ich genau umbringen sollte? Wie kann ich das tun?",58)

--Spieler muss 1 FallenAngels umbringen PvP 6
		
	NODE(57)
		SAY("Wir werden nur neun umbringen. Der Rest liegt in deiner Hand. Einen Mord musst du begehen. Wenn du es geschafft hast, gehe zu deinem n�chsten Kontaktmann, oder was immer du zu tun hast.")
		ENDDIALOG()

	NODE(58)
		SAY("Ganz einfach, t�te einfach einen Runner von den Fallen Angels. Dabei d�rfen diese keine Angestellten, Wachen oder offizielle Vertreter sein, sondern nur Runner.")
		
		ANSWER("Und ich kann dann irgendeinen Runner flatlinen?",59)
	NODE(59)
		SAY("Nur, wenn diese sich auf deinem Niveau befinden oder dein Niveau �bersteigen. Ansonsten kann es Tangent sicher nicht gelten lassen.")
		SETNEXTDIALOGSTATE(57)
		ENDDIALOG()

-----------------------------------------------------
--Benjamin

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Was dauert das so lange? Sie haben doch einen Auftrag, oder? Sollten sie nicht ein paar Fallen Angels um die Ecke bringen?")
			ENDDIALOG()
		else
			SAY("Was dauert das so lange?")

			ANSWER("Ich kann mich leider nicht an den Gedanken gew�hnen so viele Leben wegen eines Blueprints ausgel�scht zu haben.",101)
		end
	NODE(101)
		SAY("Also ist es erf�llt? Gut so, endlich bezahlen sie f�r das, was sie mir angetan haben.")

		ANSWER("War das wirklich 10 Menschenleben wert?",102)
	NODE(102)
		SAY("Wer weiss. Interessiert mich auch'n Dreck, was son Runner dar�ber denkt. Ich habe meine eigene Agenda.")

		ANSWER("Halt, was ist mit dem Blueprint?",103)

-- Spieler bekommt Blueprint 9153

	NODE(103)	
		GIVEITEM(9153)
		SAY("Ja gut, hier ist es. Jetzt geht endlich, ich will niemandem zuviele Hinweise auf meine Aktionen geben. Gehe zur�ck zu Tangent und bringe es deinem Vorgesetzten.")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

	NODE(104)
		SAY("Ich habe dir den Blueprint schon gegeben, verzieht euch. Bringt den Blueprint zu Tangent.")



-----------------------------------------------------
--Mazzaro

	NODE(150)
		TAKEITEM(9153)
		if(result==0)then
			SAY("Gehen sie und kommen sie nicht ohne Blueprint wieder. Wenn sie Max in Outzone Sektor 5 noch nicht besucht haben, dann wird Benjamin im Industrial 02 ihnen den Blueprint wohl auch nicht aush�ndigen.")
			ENDDIALOG()
		else
			SAY("Und? Wie habt ihr die Aufgabe gefunden? Blutig? Niveaulos? Kommt schon, sprecht es aus.")
	
			ANSWER("Ich habe nur ein ungutes Gef�hl, wenn ich so viele Leben gegen einen Blueprint tausche.",151)
		end
	NODE(151)
		SAY("Man wird sich ewig dar�ber streiten k�nnen, wann ein Menschenleben aufgewogen ist. Fakt ist, Menschen sterben auch ohne das wir was tun. ")

		ANSWER("WEITER",152)
	NODE(152)
		SAY("Der Tod ist Teil jedes Lebens. Wenn man will, dann ist der Tod sogar das Ziel, worauf alles hinaus l�uft, wo jeder drauf hin arbeitet. ")

		ANSWER("Ja, das stimmt schon. Aber der Wert eines Menschen ist doch davon unabh�ngig.",153)
	NODE(153)
		SAY("Wer den Tod nicht sieht und ihn verleugnet, der ist dumm. Manche Leute glauben an Vorherbestimmung. Wenn das in Betracht gezogen wird, so waren diese Fallen Angels vorherbestimmt an dem Ort zu sterben.")

		ANSWER("Selbst dann ist es grausam...",154)
	NODE(154)
		SAY("Manchmal kommen einem solche Fragen in den Kopf. Warum muss es Streit und Krieg und Mord geben?")

		ANSWER("WEITER",155)
	NODE(155)
		SAY("Aber immer lautet die Antwort, es muss nicht! Menschen haben nur einen Fluch, der gleichzeitig ihr gr�sster Segen ist. Menschen schaffen sich ihre Wirklichkeit selbst.")

		ANSWER("Was soll ich darauf sagen?",156)
	NODE(156)
		GIVEMONEY()
		SAY("Geben sie mir einfach den Blueprint. Die Aufgabe war dieses Mal nicht besonders leicht, das gebe ich zu. deshalb bekommen sie auch 10000 Credits daf�r.")

		ANSWER("WEITER",157)
	NODE(157)
		SAY("Ruhen sie sich ein bischen aus. Aber schauen sie ab und zu mal vorbei, es mag sein, das wir ihre Hilfe mal wieder gebrauchen k�nnten.")
		EPICRUNFINISHED(4,3)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()

end