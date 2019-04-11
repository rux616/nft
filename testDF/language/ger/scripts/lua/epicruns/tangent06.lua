--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--6(0),kill Director of Operations BioTech,Andressa
--1,D,Mazzaro

--Startnode, Person
--0
--50, Andressa
--100, Mazzaro
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Sie sind schon sehr bekannt bei Tangent. Und nicht nur bei Tangent, das geht sogar schon soweit, dass ich jemanden auf offener Strasse von euch reden hörte.")

		ANSWER("Vielen Dank, aber ich tue nur meine Arbeit.",1)
	NODE(1)
		SAY("Bescheidenheit steht ihnen nicht. Sie können ruhig mal Stolz sein, auf das, was sie getan haben. Aber deswegen haben wir sie nicht angefordert.")

		ANSWER("So viel dachte ich mir schon, es gibt einen Notfall?",2)
	NODE(2)
		SAY("Nicht ganz. Es geht um die finale Testreihe der Strahlenwaffe. Dabei ist alles schon fertig und die letzten Messungen müssten bald gemacht sein. Allerdings hat BioTech es trotz unserer Bemühungen geschafft, ihre Waffe auch fast bis zur Fertigstellung zu entwickeln. ")

		ANSWER("WEITER",3)
	NODE(3)
		SAY("Tangent kann es sich nicht erlauben, in direkter Konkurrenz zu verlieren. Deshalb werden wir etwas dagegen unternehmen müssen. So klein diese Wahrscheinlichkeit auch ist zu verlieren.")

		ANSWER("Und dabei haben sie an mich gedacht? Nun gut, was stellt sich Tangent denn so vor?",4)
	NODE(4)
		SAY("Dieser finale Testlauf sollte am besten mit allen Mitteln unterbrochen werden. Hatten sie nicht auch belastendes Material von ihrem Kontakt bekommen? Falls sie dieses noch besitzen sollten sie es auch einsetzen.")

		ANSWER("Ja, ich habe belastendes Material von einer gewissen Andressa. Ich denke sie wird sich irgendwo in der Nähe des BioTech Hauptquartiers herum treiben.",5)
	NODE(5)
		SAY("Dann setzen sie es ein, alles was BioTech schadet ist gut für Tangent.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(6)
		ENDDIALOG()
		
	NODE(6)
		SAY("Beeilen sie sich, uns läuft die Zeit davon.")
		ENDDIALOG()


-----------------------------------------------------
--Andressa

	NODE(50)
		SAY("Hallo. Bitte gehen sie wieder, ich habe die Nacht durchgearbeitet und versuche gerade eine Pause zu machen. Diese verdammten Kopfschmerzen.")

		ANSWER("Keine Angst, Andressa, es wird nicht lange dauern.",51)
	NODE(51)
		SAY("Woher kennen sie meinen Namen? Kenne ich sie?")

		ANSWER("Das ist unwahrscheinlich. Aber ich kenne sie, oder zumindest das, was sie verbergen wollen.",52)
	NODE(52)
		SAY("Was wollen sie damit sagen? Ich habe nichts zu...")

		ANSWER("Ich bitte sie, diese Scharade können sie sich sparen. Ich habe hier alles in diesem Datacube. Ich sage nur Mutanten...",53)
	NODE(53)
		SAY("Was?! Ich, nein ... das bin nicht... ich, ach was solls. Wenn sie es eh schon wissen, warum gross leugnen? Was wollen sie damit bezwecken? Ich bin nicht besonders reich.")

		ANSWER("Nein, was halten sie von mir? Ich bin doch kein gewöhnlicher Strassenräuber.",54)
	NODE(54)
		SAY("Was wollen sie dann von mir? Ich verstehe nicht...")

		ANSWER("Oh, ich möchte nur, dass sie mir einen kleinen Gefallen tun. Dann nämlich würde diese Information nie im ganzen Neocron City Netzwerk verbreitung finden.",55)
	NODE(55)
		SAY("Wenn ich diesen Gefallen leicht tun kann, dann gerne. Aber ich kann nicht alles machen...")

		ANSWER("Dies können sie sicherlich machen... verzögern sie die finale Testreihe der neuentwickelten Strahlenkanone um ein oder zwei Tage, mehr nicht...",56)
	NODE(56)
		SAY("Woher wissen sie von der neuen Waffe? Das ist doch alles noch streng geheim...")

		ANSWER("Darüber möchte ich mich hier nicht auslassen...",57)
	NODE(57)
		SAY("Was wird dann mit mir geschehen? Ich kann nicht...")

		ANSWER("Es ist ihre Entscheidung. Entweder, sie verzögern die Testreihe, oder sie können ihre Geheimnisse im Netz wiederfinden.",58)
	NODE(58)
		SAY("Sie verstehen nicht, ich kann nicht! Die Testreihe wird ohne meine Unterstützung anlaufen! Nur der Director of Operations hat jetzt noch Kontrolle über die Tests.")

		ANSWER("Das ist bedauerlich. Und ich hatte gedacht, dass ich dieses Dokument nicht veröffentlichen müsste...",59)
	NODE(59)
		SAY("Nein, bitte nicht !! Ich... es muss einen anderen Weg geben.")

		ANSWER("Ich lausche gespannt. Lassen sie sich lieber etwas einfallen...",60)
	NODE(60)
		SAY("Ich habs! Ihr könntet den Director of Operations umbringen! Er hat zwar ein Genrep, aber das würde die Testreihe sicher stoppen.")

		ANSWER("Ich? Hören sie, eure Geheimnisse stehen hier auf dem Spiel.",61)
	NODE(61)
		SAY("Ich? Nein, ich kann ihn nicht umbringen, ich kenne ihn seit Jahren... nein, ich würde zwar viel tun um diese Geheimnisse geheim zu halten, aber das kann ich nicht. Dann müssen sie mir schon mein Leben ruinieren... ")

		ANSWER("WEITER",62)
	NODE(62)
		SAY("Aber bitte überlegen sie sich das noch einmal. Ach du lieber Himmel. Jetzt erkenne ich sie wieder! Sie haben eine BioTech Wache kürzlich getötet nicht wahr?? Ich dachte doch, ich hätte sie schon auf einem Überwachungsvideo gesehen...")

		ANSWER("Meine Berühmtheit eilt mir nun mal voraus...",63)
	NODE(63)
		TAKEITEM(9155)
		if(result==0)then
			SAY("Ich kann nicht, bitte! Sie haben doch schon mal getötet, warum dann nicht noch den Director?")
			ENDDIALOG()
	
		else
		SAY("Ich kann nicht, bitte! Sie haben doch schon mal getötet, warum dann nicht noch den Director?")

		ANSWER("Wenn es sein muss! Dann werde ich die Sache wieder in eigene Hände nehmen müssen. Was mit ihren Geheimnissen passiert, weiss ich noch nicht. Ach was solls, ich gebe sie ihnen zurück. Somit bleiben sie auch eure Geheimnisse.",64)
		end
	NODE(64)
		SAY("Vielen Dank, vielen dank, oh danke. Du kannst in in Viarosso Sektor 3 finden.")
		SETNEXTDIALOGSTATE(65)
		ENDDIALOG()
		
	NODE(65)
		SAY("Beeilen sie sich, bringen sie den Director in Viarosso sektor 3 um oder es wird zu spät sein.")

		ENDDIALOG()

--Spieler tötet BioTech Director of Operations 6

-----------------------------------------------------
--Mazzaro

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Dies ist eine kritische Situation, wir zählen dabei auf sie.")
			ENDDIALOG()
		else
			SAY("Unsere Testreihe war ein voller Erfolg!! Ich bin mir sicher, dass die CityAdmin nun uns den Auftrag erteilen wird. Wie sieht es bei BioTech aus?")

			ANSWER("Ihre Testreihe wurde jäh unterbrochen. Ich musste leider den dortigen Director of Operations aus dem Weg räumen.",101)
		end
	NODE(101)
--NEW		
		SAY("Mann, sie sind eiskalt! Marschieren in die Höhle des Löwen und knallen einfach den Director of Operations ab. Das gefällt mir. Das gefällt mir sehr gut. Tangent dankt ihnen. Ich habe mir überlegt, ihnen eine Testversion der neuen Waffe zu überlassen. Was für eine Art von Waffe wäre ihnen denn am liebsten?")

		ANSWER("Am liebsten etwas richtig schweres. Eine Art Cannon vielleicht.",102)
		ANSWER("Lieber etwas unauffälliges, wie wäre es mit einer Pistole? ",104)
		ANSWER("Wie wäre es denn mit einer Rifle?",106)
	NODE(102)
		SAY("Ich denke diese Waffe wird nach ihrem Geschmack sein. Tangent hat ihnen ausserdem noch einen Bonus von 100 000 Credits zugesagt. Nach allem was sie getan haben, ist dies ja wohl das mindeste.")

		ANSWER("Danke.",103)
	NODE(103)
		GIVEITEMWITHSLOTS(9156,255,1)
		GIVEMONEY(100000)
		SAY("Auf absehbare Zeit werden wir für sie wohl keinen gerechten Auftrag mehr haben. Wir würden ihnen jedoch ans Herz legen einen Clan zu eröffnen und damit Tangent auch weiterhin so tatkräftig zu unerstützen. Vielen Dank")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()	
	NODE(104)
		SAY("Ich denke diese Waffe wird nach ihrem Geschmack sein. Tangent hat ihnen ausserdem noch einen Bonus von 100 000 Credits zugesagt. Nach allem was sie getan haben, ist dies ja wohl das mindeste.")

		ANSWER("Danke.",105)
	NODE(105)
		GIVEITEMWITHSLOTS(9157,255,1)
		GIVEMONEY(100000)
		SAY("Auf absehbare Zeit werden wir für sie wohl keinen gerechten Auftrag mehr haben. Wir würden ihnen jedoch ans Herz legen einen Clan zu eröffnen und damit Tangent auch weiterhin so tatkräftig zu unerstützen. Vielen Dank")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()	
	NODE(106)
		SAY("Ich denke diese Waffe wird nach ihrem Geschmack sein. Tangent hat ihnen ausserdem noch einen Bonus von 100 000 Credits zugesagt. Nach allem was sie getan haben, ist dies ja wohl das mindeste.")

		ANSWER("Danke.",107)
	NODE(107)
		GIVEITEMWITHSLOTS(9158,255,1)
		GIVEMONEY(100000)
		SAY("Auf absehbare Zeit werden wir für sie wohl keinen gerechten Auftrag mehr haben. Wir würden ihnen jedoch ans Herz legen einen Clan zu eröffnen und damit Tangent auch weiterhin so tatkräftig zu unerstützen. Vielen Dank")
		EPICRUNFINISHED(4,5)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()		
--NEWEND

end