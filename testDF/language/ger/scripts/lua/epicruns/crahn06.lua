--new
function DIALOG()
--Trigger
--50, 150 Dialog
--6, 66 Kill Multiple
-----------------------------------------------------------------
--Resource officer
	NODE(0)
		SAY("Seid gegr�sst, oh Pater des schwarzen Zirkels. Pater Agnus hat mir mitgeteilt, dass ihr euch mittlerweile im Besitz der 5 Tacholytium Relikte befindet.")

		ANSWER("Das war nur m�glich durch die Hilfe von Pater Agnus und Pater Manus.",1)
	NODE(1)
		SAY("Da f�llt mir ein, Pater Agnus ist sich sicher, dass der alte Kev Critter einen Bauplan besitzen d�rfte, der es euch erlaubt, euren Gaya Psi Amplifier aus den Fragmenten zusammenzubauen.")

		ANSWER("Das sind wahrlich gute Nachrichten. Wo finde ich diesen Kev?",2)
	NODE(2)
		SAY("Kev betreibt einen Altmetallhandel in den Wastelands, am Blakkmist Creek. Offiziell ist sein Gesch�ft eine M�lldeponie. Ihr trefft ihn an der Blakkmist Garbage Dump.")

		ANSWER("Gibt es noch etwas, was ihr mir dar�ber sagen k�nnt?",3)
	NODE(3)
		SAY("Critter ist ein n�rrischer alter Mann, der sich jedoch schnell in einen kleveren Fuchs verwandelt, wenn er ein Gesch�ft wittert. ")

		ANSWER("Er w�re nicht der erste.",4)
	NODE(4)
		SAY("Seid also auf der Hut und lasst ihn nicht sp�ren, wie sehr ihr den Bauplan haben wollt. Ihr treibt den Preis sonst nur unn�tig in die H�he. Pater Agnus hilft euch sicherlich weiter, sobald ihr den Blueprint habt.")

		ANSWER("Danke, ich werde euren Ratschlag beachten. Crahns Segen sei mit euch.",5)
	NODE(5)
		SAY("Danke Pater. Ich w�nsche euch viel Erfolg auf eurer Mission.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()	
		
	NODE(6)
		SAY("Wolltet ihr nicht Kev Critter beim Blakkmist Garbage Dump besuchen? Sobald ihr alles beisammen habt k�nnt ihr Pater Agnus um Hilfe beim zusammensetzen des Artefakts bitten.")

		ENDDIALOG()	

-----------------------------------------------------------------
--kEV cRITTER

	NODE(50)
		SAY("Oh, oh... ein Pater des schwarzen Zirkels. Das bedeutet nichts Gutes.")

		ANSWER("Sei gegr�sst und f�rchte dich nicht.",51)
	NODE(51)
		SAY("Das letzte mal, als eine Gruppe von hohen Br�dern des Ordens hier einfiel, haben sie alles durchw�hlt und durcheinander gebracht. ")

		ANSWER("Haben sie etwas gefunden?",52)
	NODE(52)
		SAY("Der F�hrer der Gruppe, ich glaube sein Name war Bruder Harkon, wurde richtig ungem�tlich, als sie das was sie suchten bei mir nicht fanden.")

		ANSWER("Bruder Harkon war hier? Ich nehme an, er hat nach einem Gegenstand aus Tacholytium gesucht?",53)
	NODE(53)
		SAY("Tacholytium... ja genau. Scheint eine rege Nachfrage nach dem Zeug zu existieren. Wie ich h�rte ist die Gruppe von Bruder Harkon von einer Gang des Tsunami Syndikats angegriffen wurden.")

		ANSWER("Diese Heiden kann man heutzutage an allen Ecken der Welt finden.",54)
	NODE(54)
		SAY("Scheint fast so, als wenn die Tsunamis auch hinter dem Zeug her w�ren.")

		ANSWER("Die Angelegenheit mit dem Tsunami Syndikat wurde mittlerweile bereinigt.",55)
	NODE(55)
		SAY("Ja, ich h�rte auch davon. Und genau das ist es auch, was ich nicht verstehe. Was seid ihr f�r ein heiliger Orden, wenn euch jedes Mittel recht ist, um eure Pl�ne durchzusetzen?")

		ANSWER("Schweig! H�te dich davor, den Orden zu beleidigen. Ich bin nicht zu dir gekommen, um die Mittel und Wege des Ordens mit dir zu diskutieren.",56)
	NODE(56)
		SAY("Das hatte ich mir schon fast gedacht. Aber sagt, warum seid ihr denn zu mir gekommen, Pater?")

		ANSWER("Ich ben�tige einen Blueprint von dir. Man sagte mir, dass ich bei dir den Bauplan f�r einen Gaya PSI Amplifier bekommen k�nnte?",57)
	NODE(57)
		SAY("Bisher konnte ich noch jeden Bauplan aus meinen alten MicroDisks extrahieren. Aber Geld m�chte ich von Euch nicht haben.")

		ANSWER("Das ist sehr grossz�gig von dir. Ich werde deine Grossherzigkeit lobend erw�hnen. So gib mir denn den Blueprint.",58)
	NODE(58)
		SAY("Nein, nein, nein... ich sagte nur, dass ich von Euch kein Geld haben m�chte. Besorgt mir etwas anderes.")

		ANSWER("Nach all dem, was ich �ber dich geh�rt habe, w�re ich auch �usserst �berrascht gewesen, wenn du mir den Blueprint umsonst �berlassen h�ttet. Also, was soll ich dir besorgen?",59)
	NODE(59)
		SAY("Nun, hier draussen in den Wastelands ist es sehr einsam und die N�chte sind lang. Von Zeit zu Zeit mixe ich mir ein paar Drogen, um mir die Zeit etwas angenehmer zu gestalten.")

		ANSWER("Sprich, Mann! Was ist dein Preis?",60)
	NODE(60)
		SAY("Einige der wertvollsten Zutaten sind jedoch extrem schwer zu beschaffen. Aber f�r einen m�chtigen M�nch des schwarzen Zirkels d�rfte es wohl kein Problem sein, mir etwas aus den gef�hrlicheren Winkeln der Wastelands zu bringen.")

		ANSWER("Nun sag schon, was du haben willst. Ich habe nicht den ganzen Tag Zeit mit dir zu schwatzen.",61)
	NODE(61)
		SAY("F�r einen Tearson Halu Booster ben�tige ich die blaue poison gland der PSI-Spinne Latekulus.")

		ANSWER("Sag mir, wo ich diese Spinne finde und ich besorge sie dir.",62)
	NODE(62)
		SAY("Die PSI Spinne treibt sich h�ufig in der N�he des Point Red rum.")

		ANSWER("Gut und du wirst dich nicht vom Fleck r�hren.",63)
	NODE(63)
		SAY("Bring mir diesen Gegenstand und ich gebe dir daf�r deinen Blueprint.")

		ANSWER("Etwas schwierigeres ist dir wohl nicht eingefallen?",64)
	NODE(64)
		SAY("Das ist nun einmal die Zutat, die ich f�r einen Tearson Booster ben�tige. Ausserdem seid ihr ein erfahrener Pater des schwarzen Zirkels. Die Beschaffung der Zutat in den Wastelands d�rfte euch also nicht allzu schwer fallen.")

		ANSWER("Wenn es so einfach w�re, h�ttest du es dir doch sowieso schon angeeignet.",65)
	NODE(65)
		SAY("Lasst Euch nicht einfallen, mit mir zu verhandeln oder den Blueprint ohne diese spezielle Zutat zu verlangen. Ich verhandele nicht. Also zieht los und kehrt erst zu mir zur�ck, wenn ihr die Zutat f�r mich habt")
		SETNEXTDIALOGSTATE(66)
		ENDDIALOG()
--Spieler besorgt Drogen Zutaten
	NODE(66)

		TAKEITEM(9012)
		if(result==0)then
				SAY("Sie wollten mir doch etwas liefern, Pater...")
				ENDDIALOG()
		else
				SETNEXTDIALOGSTATE(67)
				SAY("Ihr ward lange fort, Pater. Ich war mir eigentlich sicher, dass euch etwas zugestossen sei und ich euch nicht wiedersehen w�rde.")

				ANSWER("Was soll das heissen? Ich habe hier die Zutat f�r deine Droge.",67)
		end
		NODE(67)
		SAY("Es ist zu sp�t. Ich habe den einzigen Blueprint und die dazugeh�rige MicroDisk bereits an jemand anderes verkauft. Vielleicht solltet ihr beim n�chsten mal etwas schneller arbeiten?")

		ANSWER("Du machst wohl Witze, alter Mann. Ein Schuss aus meinen Waffen wird dich lehren, dich an deine Zusagen zu halten.",68)
	NODE(68)
		SAY("Nicht so hastig... vielleicht k�nnt ihr ja eine Kopie von dem Blueprint von dem K�ufer der MicroDisk bekommen.")

		ANSWER("Wer hat die Disk gekauft? Sprich.",69)
	NODE(69)
		SAY("Gebt mir erst die Zutat f�r die Droge ...und versprecht mir bei der Ehre des schwarzen Zirkels, dass ihr mir kein Haar kr�mmen werdet.")

		ANSWER("Ich gebe dir die Zutat, ja,  aber wenn ich es nicht schaffen sollte, an den Blueprint zu kommen, werde ich dich noch einmal besuchen... und dich und deine verdammte M�llhalde in Staub verwandeln.",70)
	NODE(70)
		SAY("Scheint als h�tte ich keine Wahl. Also... der K�ufer war ein Mann namens Mark Cole.")

		ANSWER("Mark! Diese verdammte Schlange...",71)
	NODE(71)
		SAY("Ihr kennt ihn?")

		ANSWER("Und ob. Ein guter, alter Bekannter des Ordens.",72)
	NODE(72)
		SAY("Dann wisst ihr ja auch, wo ihr ihn finden werdet. Geht jetzt... und ich hoffe, dass wir uns nie wieder sehen werden.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(73)
		ENDDIALOG()
	NODE(73)
		SAY("Ich habe schon mehr preis gegeben als ich wollte. Verschwinden sie.")
		ENDDIALOG()

-----------------------------------------------------------------
--Mark cOLE

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
		SAY("Das ist ja eine �berraschung. Verschwinde schnell, sonst sieht man uns zusammen.")
		ENDDIALOG()	
		else
		SAY("Nein, das glaub ich ja nicht. Wie lange haben wir uns schon nicht mehr gesehen, alter Freund.")

		ANSWER("Wir waren nie Freunde, Mark. Ich denke, Du verwechselst mich mit Deinen Schlangen.",101)
		end
	NODE(101)
		SAY("Wie ich sehe, bist Du mittlerweile in den schwarzen Zirkel aufgenommen worden. Herzlichen Gl�ckwunsch! Die T�towierung des Zirkels ist beeindruckend.")

		ANSWER("Reden wir nicht lange drum herum. Du hast von Kev Critter einen Blueprint und eine MicroDisk gekauft. Gib mir den Blueprint und ich verschwinde. Gib ihn mir nicht... und du verschwindest. Und zwar f�r immer.",102)
	NODE(102)
		SAY("Du drohst mir? Wie �berfl�ssig. Du solltest mich mittlerweile besser kennen. Denkst du, ich habe mir den Blueprint besorgt, um ihn mir �ber das Bett zu h�ngen? Es war eine Auftragsarbeit f�r das Tsunami Syndikat.")

		ANSWER("Du weisst also nicht, dass ich hinter diesem Blueprint her bin?",103)
	NODE(103)
		SAY("Ich weiss nicht, was es mit diesem Ding auf sich hat, aber gemessen an dem Preis, den mir das Syndikat daf�r bezahlt hat, scheint es sich dabei um etwas sehr, sehr wertvolles zu handeln.")

		ANSWER("Mark, das war das letzte mal, dass ich mir von dir hab ins Handswerk pfuschen lassen. Bereite dich auf deinen Tod vor.",104)
	NODE(104)
		SAY("Wenn du mir auch nur ein einziges Haar kr�mmst, hat Pater Agnus morgen das Stiletto auf dem Tisch liegen, mit dem Bruder Gabriel niedergestochen wurde. Ich habe entsprechende Vorkehrungen getroffen.")

		ANSWER("Bruder Agnus ist im roten Zirkel des Ordens und ich im schwarzen. Sie werden ihm nicht glauben, wenn er mich anklagen w�rde. Aber da ich keine Unannehmlichkeiten gebrauchen kann, werde ich dich davonkommen lassen, wenn du mir sagst, wo ich den Blueprint finde?",105)
	NODE(105)
		SAY("Hmmmm... du wirkst recht entschlossen in dieser Angelegenheit. Nun gut. Ich habe den Blueprint an Taylor Gomez weitergegeben. Ich weiss nicht, ob er ihn noch hat, aber das ist deine einzige Chance, noch an den Blueprint zu gelangen.")

		ANSWER("Wo finde ich diesen Wurm?",106)
	NODE(106)
		SAY("Taylor arbeitet im geheimen Neocron Hauptquartier des Syndikats. Deine Besten Chancen werden wohl sein ihn in der Secret Passage 2 aufzulauern und ihm den Blueprint zu entreissen.")

		ANSWER("So sei es. Mark, ich hoffe, dass du dich in Zukunft aus meinen Angelegenheiten raush�lst. Sollten sich unsere Wege noch einmal kreuzen, so werde ich erst schiessen und mich danach mit dir unterhalten. Haben wir uns verstanden?",107)
	NODE(107)
		SAY("Ja. Ich m�chte schliesslich nicht so enden wie die Drakkhan Helios oder Calvin Grimwood. Und nun beeil dich. Ich weiss nicht, wie lange Gomez die Disk bei sich behalten wird oder wie lange du ihn in dem secret Tsunami Hauptquartier antreffen kannst.")
		SETNEXTDIALOGSTATE(108)
		ENDDIALOG()
	NODE(108)
		SAY("Ich habe doch schon gesagt, dass du Taylor Gomez in dem secret Tsunami Hauptquartier finden und umbringen musst, damit du ihm den Blueprint abnehmen kannst.")
		ENDDIALOG()

--Spieler killt Taylor Gomez Trigger 66
-----------------------------------------------------------------
--Pater Agnus
	
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
		SAY("Es tut mir leid, Pater, aber ich habe im Moment keine Zeit.")
		ENDDIALOG()
		else
		SAY("Man hat mir schon mitgeteilt, dass ihr dem Blueprint des Psi Amplifiers auf der Spur seid.")

		ANSWER("Ja, und ich habe ihn auch schon in der Tasche. Nun brauche ich nur noch eure Hilfe beim Zusammensetzen.",151)
		end
	NODE(151)
		TAKEITEM(9010)
		if(result==0)then
		SAY("Aber was ist das? Ihr habt ja den Blueprint gar nicht. Schande �ber euch jemanden so �ber das Ohr zu hauen.")
		ENDDIALOG()
		else
		SETNEXTDIALOGSTATE(152)
		SAY("Wirklich?! Ihr habt den Blueprint, Bruder? Das ist eine erstaunliche Leistung.")

		ANSWER("Ja hier, seht ihn euch an.",152)
		end
	NODE(152)
		SAY("Dann l�sst sich daraus mit Leichtigkeit einen fertigen Psi Amplifier herstellen. ")

		ANSWER("Vielen Dank schon jetzt f�r eure Hilfe.",153)
	NODE(153)
		GIVEMONEY(50000)
		GIVEITEM(9014,255)
		SAY("Ich helfe doch gerne einem so bekannten Pater wie ihr es einer seit. Hier ist der Psi Amplifier! Nehmt ihn und geht im Lichte des Crahn.")
		EPICRUNFINISHED(10,5)
		ACTIVATEDIALOGTRIGGER(0)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()

--Taylor
	NODE(200)
		SAY("Verschwinde! Das ist unser Grund und Boden!")
		ENDDIALOG()

end