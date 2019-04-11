--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Hontoka
--
--1,D,McMillan
--


--Startnode, Person
--0 Human Resource
--50 Hontoka
--100 Black Lily
--150 McMillan

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Ich habe schon von ihren ehrgeizigen Bemühungen gehört, sich bei BioTech beliebt zu machen. Nun, bis jetzt scheint es ja zu funktionieren. Ich darf ihnen einen weiteren Auftrag übergeben. Erinnern sie sich daran, dass Gerüchte über BioTech in Neocron kursiert sind?")
		
		ANSWER("WEITER",1)
	NODE(1)
		SAY("Nun, dieses Mal sind sie auch im Netz aufgetaucht und machen harte Anschuldigungen gegen zwei BioTech Direktoren. Es ist unbekannt, woher diese Gerüchte stammen und daher brauchen wir mehr Informationen.")
		
		ANSWER("Ich verstehe, dass soll also meine Aufgabe sein. Habe ich recht?",2)
		ANSWER("Wenn das auf einen Auftrag hinausläuft, muss ich leider passen.",5)
	NODE(2)
		SAY("Ja, oder zumindest nicht alleine. Wir haben in ganz Neocron schon Runner mit dem Auftrag losgeschickt Nachforschungen anzustellen. Und genau diesen Auftrag bekommen sie auch. Solche Informationen sind natürlich nicht einfach zu finden, daher müssen ein paar eher ungewöhnliche Methoden angewandt werden.")
		
		ANSWER("WEITER",3)
	NODE(3)
		SAY("Es gibt eine Kontaktperson der Tsunamis, die zugestimmt hat, Auskunft zu erteilen. Allerdings ist es nicht sicher, ob die Tsunami überhaupt etwas davon wissen. Falls sie etwas nützliches erfahren, so berichten sie es am besten McMillan. Er ist ein Director of Operations hier bei BioTech und wurde über alles informiert. ")
		
		ANSWER("Gut, so weit habe ich alles verstanden. Wo kann ich ihn genau treffen, diesen Tsunami Kontaktmann?",4)
	NODE(4)
		SAY("Gut, dass sie fragen. Er ist im Industrial Sektor 02 zu finden. Aber vorsichtig, diese Zonen da draussen sind gefährlich. Sein Name ist Hontoka.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()		

	NODE(5)
		SAY("Überlegen sie es sich noch einmal. Sie können jederzeit wieder hierher kommen.")
		ENDDIALOG()
		
	NODE(6)
		SAY("Besuchen sie Hontoka im Industrial Sektor 02. Wenn sie etwas in Erfahrung bringen, gehen sie zu McMillan im Hauptquartier.")
		ENDDIALOG()

-----------------------------------------------------
--Hontoka

	NODE(50)
		SAY("Ho, Runner. Was ist los?")
		
		ANSWER("Einen produktiven Tag, ich komme von BioTech. Das ist vielleicht ein verwahrlostes Gebiet hier.",51)

	NODE(51)
		SAY("Das passt dir wohl nicht, was? Tja, es gibt solche die ihr ganzes Leben hier fristen müssen. Ich selbst bin aber auch nur zu Besuch. Manche haben halt mehr Glück als andere.")
		
		ANSWER("Kommen wir zum Geschäft. Sie wissen worum es geht?",52)
	NODE(52)
		SAY("Ja, schemenhafte Geister erschrecken BioTech. Dabei zeigen sie doch nur ein Spiegelbild von dem, was im Inneren vor sich geht, oder nicht?")
		
		ANSWER("Das wage ich zu bezweifeln, BioTech ist eine ehrbare Firma und hat nichts zu verbergen.",53)

	NODE(53)
		SAY("Nur ein Narr würde so über Dinge reden, die er nicht sehen kann. Wer kann schon sagen, ob diese Geschichten wahr sind, oder nicht? Ich werde mir da kein Urteil erlauben, aber ich stelle mich auf eure Seite. Diese Gerüchte sind nicht produktiv für gewisse ... Geschäfte.")
		
		ANSWER("So? Nun, dann können sie mir ja sicher verraten, was sie über diese Gerüchte wissen.",54)
	NODE(54)
		SAY("Ich weiss, das manche dieser Geschichten frei erfunden sind um Unruhe zu stiften. So hat es auf jeden Fall den Anschein. Ich weiss aber auch, dass jedes beschriebene Blatt zwei Seiten hat. ")
		
		ANSWER("WEITER",55)

	NODE(55)
		SAY("So sind manche Geschichten über Verbindungen von BioTech zur Unterwelt oder über geheime Versuche an Menschen wohl nicht ganz so frei erfunden.")
		
		ANSWER("Ihr beliebt zu scherzen, BioTech würde doch solche Versuche nie machen.",56)
	NODE(56)
		SAY("Oh, BioTech selbst würde so etwas nie tun, das ist wahr. So etwas tun ja auch immer nur Angestellte von BioTech. Meist haben sie ihre eigenen Motive. Die Suche nach Macht, Habgier und Ehrgeiz oder auch Angst sind starke Motivationen. Nein, es ist niemals die Firma.")
		
		ANSWER("WEITER",57)

	NODE(57)
		SAY("Es sind immer Individuen, die so etwas tun. So gibt es Kontakte zu den Tsunamis, die sporadisch auch mal zu einer Zusammenarbeit führen. Auch wenn eine solche Verbindung offiziell abgestritten wird. Genauso gibt es Menschenverachtende Versuche. Manche von denen sind von der CityAdmin sogar indirekt durch die bestehenden Gesetze legalisiert worden.")
		
		ANSWER("Das mag ja alles sein, es gibt überall schwarze Schafe. Ich will auch nicht mehr darüber hören. Ich möchte wissen, ob es einen Hinweis gibt, wer diese Gerüchte verbreitet.",58)
	NODE(58)
		SAY("Sie sind zielstrebig, Runner, aber sie haben keinen Blick für die Blume am Rande des Weges. Wie wollen sie ans Ziel kommen, wenn sie nicht alles im Blick haben? Nein, mehr weiss ich auch nicht. Denken sie aber mal nach, wer würde so etwas wollen? Wer würde BioTech schaden wollen?")
		
		ANSWER("Das ist eine gute Frage. Im Moment weiss ich es noch nicht, aber ich finde es schon heraus.",59)

	NODE(59)
		SAY("Das ist eine lobenswerte Einstellung. Ich schlage vor, sie treffen sich mit Black Lily im Pepper Park 02. Sie ist sehr nah an den Quellen der Gerüchte. Sie könnte mehr wissen, als ich, oder zumindest anderes. Gehen sie jetzt. Wenn sie ihre Informationen haben, gehen sie zurück zu ihrem Vorgesetzten.")
		SETNEXTDIALOGSTATE(60)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
		
	NODE(60)
		SAY("Von mir werden sie nicht mehr erfahren können, als ich ihnen schon gesagt habe.")
		ENDDIALOG()
		

-----------------------------------------------------
--Black Lily

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Na, wie wäre es mit uns? Aber sie sehen ziemlich gehetzt aus. Haben wahrscheinlich schon was anderes vor, was?")
			ENDDIALOG()
		else
			SAY("Ich könnte mir schon vorstellen, was sie wollen. Vielleicht kann ich aber auch noch mehr bieten?")
		
			ANSWER("Nein, danke. Nicht jetzt. Ich habe gerade mit Hontoka gesprochen. Er riet mir sie nach Gerüchten zu befragen.",101)
		end
	NODE(101)
		SAY("Gerüchte, Gerüchte... sehr faszinierend, nicht wahr?")
		
		ANSWER("Das bleibt jedem selbst überlassen, dies zu entscheiden. Wissen sie vielleicht wer hinter diesen Gerüchten steckt, die im Netz über BioTech verbreitet worden sind?",102)
	NODE(102)
		SAY("Oh, diese Anschuldigungen meinen sie? Vielleicht weiss ich was. Diese Geschichten sind sehr kurzweilig. Man kann Tage nur damit verbringen, sich die ganzen irren Geschichten aus dem Netz zu laden.")
		
		ANSWER("Heisst das, sie wissen etwas und verwschweigen es mir. Wollen sie etwas von mir im Gegenzug, oder wollen sie es mir nur nicht sagen?",103)
	NODE(103)
		SAY("Wer wird denn gleich so empfindlich sein, natürlich weiss ich etwas darüber. Es ist schwer im Netz so viele Gerüchte zu verbreiten und keinerlei Absenderadresse zu hinterlassen. Aber sie haben es schon erraten, ich möchte, dass sie mir einen kleinen Gefallen tun.")
		
		ANSWER("Sofern es nicht zu viel ist, bin ich gerne dazu bereit euch im Austausch etwas zu geben.",104)
	NODE(104)
		SAY("Dann werden wir uns sicher einig werden. Ich möchte, dass sie mir ein paar spezielle Drogen bringen. Wissen sie, es ist nicht ganz einfach, bei dem Job den ich mache. Oft will man sich am liebsten irgendwo zusammenkauern und sterben.")
		
		ANSWER("WEITER",105)
	NODE(105)
		SAY("Aber Drogen helfen einem dann wenigstens eine Zeit lang und stumpfen die Gefühle ab. Ich weiss jetzt schon, was sie von mir denken ... so denken nämlich alle Leute.")
		
		ANSWER("Das ist nicht fair, dass sie so darunter leiden. Aber das Leben war noch nie fair... ich werde ihnen die Drogen besorgen.",106)
	NODE(106)
		TAKEITEM(722)
 		if (result~=0) then
 			TAKEITEM(722)
 			if (result~=0) then
 				TAKEITEM(722)
 				if (result~=0) then
 					-- Player has already the drugs with him (no need to let him open dialog again
 					GIVEITEM(9201)
 					SAY("Danke. Hier ist, wie abgemacht, der Datacube. Vielleicht kann ihn ja jemand bei ihrer Firma gebrauchen.")
 					SETNEXTDIALOGSTATE(108)
 					ENDDIALOG()
 				else
 					GIVEITEM(722)
 					GIVEITEM(722)
					SAY("Danke, bringen sie mir drei von den Paratemol forte Drogen, sie wissen schon, die Zylinder mit den roten Pillen drin. Im Austausch gebe ich ihnen einen Datacube mit den Informationen die sie haben wollten.")
 				end
 			else
 				GIVEITEM(722)
				SAY("Danke, bringen sie mir drei von den Paratemol forte Drogen, sie wissen schon, die Zylinder mit den roten Pillen drin. Im Austausch gebe ich ihnen einen Datacube mit den Informationen die sie haben wollten.")
 			end
 		end
		SETNEXTDIALOGSTATE(107)
		ENDDIALOG()

--Spieler organisiert Forte Drogen Paratemol forte 722		

	NODE(107)
 		TAKEITEM(722)
 		if (result==0) then
 			SAY("Kommen sie schon, ich brauche diese Pillen.")
 			ENDDIALOG()
 		else
 			TAKEITEM(722)
 			if (result==0) then
 				GIVEITEM(722)
 				SAY("Kommen sie schon, sie können doch bis 3 zählen, oder ?.")
 				ENDDIALOG()
 			else
 				TAKEITEM(722)
 				if(result==0)then
 					GIVEITEM(722)
 					GIVEITEM(722)
 					SAY("Kommen sie schon, sie können doch bis 3 zählen, oder ?.")
 					ENDDIALOG()
 				else
 					GIVEITEM(9201)
 					SAY("Danke. Hier ist, wie abgemacht, der Datacube. Vielleicht kann ihn ja jemand bei ihrer Firma gebrauchen.")
 					SETNEXTDIALOGSTATE(108)
 					ENDDIALOG()
 				end
 			end
 		end
	NODE(108)
		SAY("Was denn noch? Ich habe ihnen schon die Informationen gegeben. Ihre Firma sollte daran interessiert sein.")
		ENDDIALOG()
		


-----------------------------------------------------
--McMillan

	NODE(150)
		TAKEITEM(9201)
		if(result==0)then
			SAY("Ich habe im Moment keine Zeit für sie, es tut mir leid. Aber wenden sie sich doch an einen anderen Angestellten. Kommen sie zu mir, wenn sie wichtige Informationen haben.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(151)
			SAY("Ah, ein neues Gesicht. Es ist immer wieder gut, einen neuen ehrgeizigen Runner in den eigenen Reihen zu begrüssen. Ich hoffe sie sind zufrieden mit allem, was sie bisher bei uns erlebt haben.")
		
			ANSWER("Natürlich, alles passt sehr gut zusammen und ist professionell aufgezogen. Aber...",151)
		end
	NODE(151)
		SAY("Ja, ich wusste, dass sie zufrieden sein werden. Bisher hat es noch nie jemand bereut, der besten Firma in Neocron beizutreten. Ich wurde übrigens über diese Schmierereien im Netz informiert. ")
		
		ANSWER("WEITER",152)
	NODE(152)
		SAY("Grausam, solche Lügen und Verleumdungen überhaupt in die Welt zu setzen. Diese Leute haben offensichtlich keinen blassen Schimmer, wie sehr uns das alles schadet.")
		
		ANSWER("Ich glaube sehr wohl, dass diese Leute genau wissen, was sie tun. Offensichtlich wollen sie BioTech eins auswischen.",153)
	NODE(153)
		SAY("Da stecken doch sicher wieder diese Punks, diese Anarchy Breed dahinter! Oder diese Umstürzler, die Twilight Guardian. Ich mag sie beide nicht. Es ist eh schon längst überfällig, mal etwas gegen sie zu unternehmen. Haben sie etwas herausgefunden ?")
		
		ANSWER("Ja, das habe ich. Ich habe einen Datacube mit interessanten Informationen bekommen. Obwohl ich noch nicht die Gelegenheit hatte, die Daten durchzugehen.",154)
	NODE(154)
		SAY("Sie haben tatsächlich was? Sehr gut, geben sie es nur mir. Ich werde dem schon nachgehen und die Daten analysieren lassen. Gute Arbeit! Woher haben sie denn diese Information?")
		
		ANSWER("Ich... tja, ich habe sie von einigen Kontaktleuten im Pepper Park und der Umgebung.",155)
	NODE(155)
		SAY("Pepper Park? Dieser Sündenpfuhl? Na, werden ja sehen, ob die Information was taugt. Ich bin ja der Meinung, dass da nur Mist und Gewalt herkommt. Ich gebe ihnen den Rat, halten sie sich fern von dieser Gegend! Dort gibt es nur Ärger.")
		
		ANSWER("Ich werde es in Betracht ziehen.",156)
	NODE(156)
		GIVEMONEY(5000)
		SETNEXTDIALOGSTATE(157)
		SAY("Nun gut! Da sie ihre Aufgabe getan haben, gibt ihnen BioTech 5000 Credits als Bezahlung. Es wird wie immer auf ihr Konto überwiesen. Vielleicht haben wir wieder etwas, wenn diese Informationen durchgesehen wurden. Einen produktiven Tag noch.")
		EPICRUNFINISHED(5,1)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
NODE(157)
		SAY("Go away")
		ENDDIALOG()


end