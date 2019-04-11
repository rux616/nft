--new

function DIALOG()
NODE(0)
--CANDOEPICRUN(factionid, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(1,0)
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Sie gehören leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn, sie würden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier, ich würde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein, kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(1,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(1,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(1,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(1,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(1,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(1,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(1,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(1,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie später wieder. (nächste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(1,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige Möglichkeit wie sie uns noch helfen könnten ist, einen Clan zu gründen, der uns unterstützt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet

	SAY("Die Ermittlungen scheinen wohl länger zu dauern als geplant, was? Zumindest gab es im Moment keine neuen Mordfälle, aber bleiben sie am Ball.")
	
	ANSWER("Keine Sorge, ich werde mich jetzt sofort um den Aufenthaltsort dieses gestohlenen CopBots kümmern.",251)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
	SAY("Ich habe jetzt eine Bestätigung von der NCPD. Es gibt nur zwei mögliche Zielpersonen, die als Hacker in Frage kommen. Sie wurden anhand eurer Liste indentifiziert. ")
	
	ANSWER("WEITER",201)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
	SAY("Es sind Probleme aufgetaucht. Probleme, die leider direkt mit ihnen verbunden sind. Es wurde ein Datacube gefunden, ein Datacube mit Propagandamaterial von den Twilight Guardian.")
	
	ANSWER("WEITER",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
	SAY("Die NCPD hat im Moment immer noch alle Hände voll zu tun, diese myteriösen Morde genauer unter die Lupe zu nehmen. Aber unterdessen können wir die Sicherheit von Neocron natürlich auch nicht ganz vergessen. ")
	
	ANSWER("WEITER",101)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
	SAY("Es hat sich wieder etwas getan. Erinnern sie sich noch an den Mord an Defris? Nun, es scheint so, als ob da noch nicht das Ende der Fahnenstange erreicht war. Es ist ein weiterer Mord geschehen. Wieder ein CityAdmin Angestellter, vom Rang her nur knapp unter Defris.")
	
	ANSWER("WEITER",51)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
	SAY("Willkommen bei der CityAdmin. Das war womöglich die beste Wahl in ihrem Leben, dass sie uns beigetreten sind. Die CityAdmin ist die grösste öffentliche Einrichtung zum Schutz der Bürger und für Neocron. Ja, das alles haben die Bürger Lion Reza zu verdanken.")
	
	ANSWER("Da ich ja nun zu der CityAdmin gehöre, dachte ich, dass diese auch Beschäftigung für mich hat.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
NODE(11)
	SAY("Darauf wollte ich gerade zu sprechen kommen. Als loyales Mitglied in der CityAdmin wird von ihnen erwartet, dass sie gegen ein entsprechendes Entgeld auch bestimmte Aufgaben übernehmen. Es steht ihnen zwar frei, aber wer schlägt schon der Hand, die einen füttert einen Gefallen aus?")
	
	ANSWER("WEITER",12)
NODE(12)
	SAY("Ausserdem arbeitet die CityAdmin ja für die Bürger, nicht so wie damals die Diktatur der Psimönche. Da war jeder Gedanke unter Kontrolle und die Leute lebten praktisch in Sklaverei. Viele Leute vergessen, wer sie von all dem befreit hat.")
	
	ANSWER("Aber, ist es denn jetzt so viel anders? Ich meine, man wird für ein einfaches loses Wort gleich hingerichtet...",13)

NODE(13)
	SAY("Redet nicht weiter. Ich gebe ihnen einen guten Rat. Und selbst dies tue ich nur, weil sie neu hier sind. Über die CityAdmin stellt man keine Vermutungen an, man akzeptiert sie so wie sie ist. Selbiges gilt für Mr Reza. Falls ihr nicht auf meine Warnung hört, so wird man euch mit dem Tode bestrafen. Und das alles nur wegen eurem loosen Mundwerk.")
	
	ANSWER("Ich verstehe. Ich werde ihren Rat bedenken. Dann erzählen sie mir, was die CityAdmin so ausmacht.",14)
NODE(14)
	SAY("Gut. Wie schon gesagt, hat Reza die Bürger Neocrons vor der grausamen Diktatur der Crahn befreit. Nach über hundert Jahren war Neocron befreit. Das geschah im Jahre 2724 so weit ich mich entsinne. Das war auch der Beginn einer neuen Ära der Freiheit.")
	
	ANSWER("WEITER",15)
NODE(15)
	SAY("Lioon Rezas Großzügigkeit haben die Crahn es zu verdanken, dass sie noch immer in der Stadt geduldet werden. Es wurden viele sinnvolle Neuerungen umgesetzt, damit es die Bürger einfacher haben. So wurde die Rechtsprechung beispielsweise vereinfacht. ")
	
	ANSWER("WEITER",16)
NODE(16)
	SAY("Nun weiss jeder, was er darf und was nicht. Den Erfolg kann man im Plaza und in ViaRosso sehen, die Kriminalität ist gleich null. ")
	
	ANSWER("WEITER",17)
NODE(17)
	SAY("Dies alles trotz der grossen Schwierigkeiten, nachdem so viele Leute sich dem grossen Trek angeschlossen haben um nach Irata II zu fliegen. Damals hatte die Kriminalität explosionsartig zugenommen. Den CopBots von der CityAdmin ist es zu verdanken, dass hier immer noch Ordnung herrscht.")
	
	ANSWER("Wisst ihr, was aus den Teilnehmern am grossen Trek geschehen ist? Ich meine, nachdem der Kontakt zu Irata III abgebrochen ist.",18)
NODE(18)
	SAY("Das ist leicht zu beantworten, denn der grosse Trek ist noch lange nicht bei Irata III angekommen. Die CityAdmin konzentriert sich momentan einzig und allein auf die Sicherheit und um das Wohlergehen der Bürger von Neocron.")
	
	ANSWER("WEITER",19)
NODE(19)
	SAY("Aber genug von diesen alten Geschichten. Es gilt, eine kleine Lieferung zur NCPD zu bringen. Es mag auch sein, dass ihr der NCPD etwas unter die Arme greifen könnt. Neocron ist gross und es gibt immer etwas zu tun.")
	
	ANSWER("Gut, ich werde dieses Paket ausliefern. Was enthält es, wenn ich fragen darf?",20)
	ANSWER("Ich glaube ich bin für so etwas noch nicht bereit.",21)
NODE(20)
	GIVEITEM(9052)
	SAY("Es enthält ein paar sichergestellte Drogen, die im Zusammenhang mit einem Verbrechen registriert worden sind. Möglich, dass ihr bei der NCPD mehr davon erfahrt. Viel Spass bei eurem ersten Auftrag für die CityAdmin.")
	STARTMISSION(3564)
	SETNEXTDIALOGSTATE(200)
	ENDDIALOG()
	
NODE(21)
	SAY("Wie sie meinen. Kommen sie zurück, wenn sie bereit sind.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
NODE(51)
	SAY("Ich hoffe doch nicht, dass sich das noch weiter ausbreitet. Auf jeden Fall hat die NCPD alle verfügbaren Kräfte nun zur Lösung dieses Falles abgestellt. ")
	
	ANSWER("WEITER",52)
NODE(52)
	SAY("Es scheint aber nicht so leicht zu sein, da die ganzen Ermittlungen ziemlich schwammig ausgehen. Also wirklich, so viele Feinde der CityAdmin kann es doch gar nicht geben, dass sich das so in die Länge zieht..")
	
	ANSWER("Ich denke das unterschätzt ihr.",53)
NODE(53)
	SAY("Es gibt als Hauptfeind die Twilight Guardian. Sie versuchen ständig die Authorität der CityAdmin zu untergraben, aber das ist nichts neues. Ausser den Twilight Guardian kann ich nur noch die Crahn, Tsunami und die Black Dragon nennen.")
	
	ANSWER("WEITER",54)
NODE(54)
	SAY("Wobei Tsunami und Black Dragon aber eher ihren eigenen Geschäften nachgehen und die Crahn noch ihrer ehemaligen Grösse nachtrauern.")
	
	ANSWER("Aber ihr unterschätzt, was Menschen für persönliche Motive haben können, die CityAdmin zu verachten.",55)
NODE(55)
	SAY("Ich denke da irrt ihr euch, die CityAdmin wird vollstens von den Bürgern Neocrons unterstützt. Manche Bürger kontrollieren die Stadt sogar mit Reza zusammen. Aber deswegen wollte ich auch nicht mit ihnen sprechen. Die NCPD ist zur Zeit etwas strapaziert.")
	
	ANSWER("WEITER",56)
NODE(56)
	SAY("Daher hat die CityAdmin beschlossen auch Runner als Ermittler einzusetzen und so der NCPD zu helfen. Es wurden Informationen über verschiedene Kontakte an mich weitergeleitet und ich habe vielen Runnern schon Aufgaben diesbezüglich verteilt. ")
	
	ANSWER("WEITER",57)
NODE(57)
	SAY("Leider gehen mir langsam die Runner aus. Es meldet sich keiner freiwillig und es ist keiner mehr qualifiziert genug um diese Aufgabe zu übernehmen. Deshalb habe ich an sie gedacht.")
	
	ANSWER("Das ist ja wohl die Höhe! Mir zu unterstellen, ich sei nicht qualifiziert genug! Und nun denken sie an mich, da ihnen die anderen Runner ausgehen?",58)
NODE(58)
	SAY("Meine Überlegungen stehen nicht zur Debatte und ob es ihnen gefällt oder nicht, es gibt bessere Leute für einen solchen Job. Ich wollte es natürlich nicht so hart ausdrücken, wie sie es jetzt vielleicht verstanden haben.")
	
	ANSWER("WEITER",59)
NODE(59)
	SAY("Falls ihr Interesse sie nun urplötzlich verlassen haben sollte, so werde ich das natürlich in ihrer Akte vermerken. Sie sollten inzwischen gelernt haben, ihr Temperament etwas zu zügeln.")
	
	ANSWER("Ist ja gut, ich bin ganz ruhig. Was soll ich denn tun?",60)
	ANSWER("Ich bin noch nicht wieder bereit für einen weiteren Auftrag.",63)
NODE(60)
	SAY("Die NCPD hat uns darüber informiert, dass ein gewisser Hontoka von den Tsunamis daran interessiert ist, uns Informationen zu verkaufen. Diese könnten unter Umständen wichtig für diesen Mordfall sein. Da aber dieses Subjekt ein Tsunami ist, bezweifle ich, dass er etwas sinnvolles von sich geben wird.")
	
	ANSWER("WEITER",61)
NODE(61)
	SAY("Aber die CityAdmin wäre nicht dort, wo sie heute ist, wenn sie nicht alle Möglichkeiten ausschöpfen würde. Sie können ihn in dem Industrial Sector 02 finden. Wenn sie genug Informationen haben, reden sie mit Officer Jenna. Sie sollten sie ja schon kennengelernt haben.")
	STARTMISSION(3565)
	SETNEXTDIALOGSTATE(12)
	ENDDIALOG()	

NODE(62)
	SAY("Kümmern sie sich doch weiter um die Mission. Hontoka wartet auf sie im Industrial Sektor 02. Falls sie was neues erfahren gehen sie damit zur NCPD.")
	ENDDIALOG()

NODE(63)
	SAY("Dann ruhen sie sich doch noch etwas aus und kommen wieder, sobald sie sich bereit fühlen.")
	ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
NODE(101)
	SAY("Deshalb haben wir beschlossen einen jungen dynamischen Runner mit einem Auftrag zu betrauen. Ich denke, dass sie die CopBots schon ausführlich auf den Strassen von Neocron beobachten konnten, nicht wahr?")
	
	ANSWER("Ja, in der Tat. Sie sind recht beeindruckend.",102)
NODE(102)
	SAY("Ja, und doch gibt es etwas, was viele Leute nicht wissen. Es gibt eine Dunkelziffer von CopBots, die einfach von den Strassen verschwinden. In den Wastelands gibt es sogar Berichte von CopBots, die Amok laufen.")
	
	ANSWER("Nicht vorstellbar, falls ein CopBot innerhalb von Neocron anfangen würde Amok zu laufen.",103)
NODE(103)
	SAY("Keine Angst. Das CopBot System ist darauf ausgelegt so etwas abzufangen. Aber es gibt da auch noch andere Fälle. Fälle von CopBots, die noch vor der Aktivierung geklaut werden. So etwas kommt höchst selten vor und wird normalerweise in null komma nichts aufgeklärt. ")
	
	ANSWER("WEITER",104)
NODE(104)
	SAY("Doch... in diesem Fall wurde das Fehlen des CopBots erst entdeckt, als er aktiviert werden sollte. Das ist jetzt nun schon zwei Monate her und es gibt nicht den Hauch einer Spur.")
	
	ANSWER("Wie werden denn solche Sachen normalerweise zrurückverfolgt?",105)
NODE(105)
	SAY("Es gibt einen Mikrosender, der gut in den CopBots versteckt ist. Dieser sendet ein Signal an die Zentrale sobald der CopBot aktiviert wird. Aber dieses Mal ist er entweder nicht aktiviert worden, oder der Sender wurde entfernt. ")
	
	ANSWER("WEITER",106)
NODE(106)
	SAY("Falls letzteres der Fall ist, so muss an dieser Sache ein ziemliches Hacker Genie arbeiten. Selbst unsere Hacker können so etwas nur mit Hilfe von speziellem Equipment knacken.")
	
	ANSWER("Tja, aber wo findet man einen solchen Hacker? ...vielleicht ...  Die Fallen Angels!!",107)
NODE(107)
	SAY("Ja genau, ihre Scharfsinnigkeit ist genau das, was wir hier brauchen. Ihr Auftrag ist es, einen gewissen Elias in Tech Haven aufzusuchen und ihn über eine mögliche Verbindung zwischen den Fallen Angels und dem geklauten CopBot zu befragen. ")
	
	ANSWER("Erzählen sie ruhig weiter.",108)
	ANSWER("Ich bin noch nicht bereit für einen weiteren Auftrag.",109)
NODE(108)
	SAY("Ihren Bericht sollten sie dann, wie üblich, Officer Jenna vorlegen. CityAdmin dankt ihnen schon jetzt, viel Glück. Die Fallen Angels stehen neutral zu uns und sollten sich deshalb wohl kooperativ zeigen.")
	STARTMISSION(3566)
	SETNEXTDIALOGSTATE(10)
	ENDDIALOG()	


NODE(109)
	SAY("Dann kehren sie zurück, wenn sie sich ausreichend vorbereitet haben.")
	ENDDIALOG()
	
NODE(110)
	SAY("Ich dachte sie wollten sich um diese Sache mit dem verschwundenen CopBot kümmern? Treffen sie Elias bei den Fallen Angels, Ergebnisse geben sie an Jenn im NCPD HQ.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
NODE(151)
	SAY("An und für sich nichts aussergewöhnliches. Aber dieser Datacube befand sich zuletzt in ihrem Besitz und sie wissen was das bedeutet?")
	
	ANSWER("Aber das kann nicht sein! Ich würde doch niemals...",152)
NODE(152)
	SAY("Bleiben sie ruhig. Ich habe noch keinen CopBot verständigt. Aber sie verstehen sicherlich, dass auf so etwas normalerweise auch die Todesstrafe steht?")
	
	ANSWER("WEITER",153)
NODE(153)
	SAY("Propaganda der Twilight Guardian ist innerhalb von Neocron verboten.")
	
	ANSWER("Ja, aber dieser Datacube ist ein Trick! Das ist doch Sonnenklar. Ich habe nur einer Person einen Datacube gegeben in der letzten Zeit. Der muss es gewesen sein...",154)
NODE(154)
	SAY("Wir sind uns in solchen Fällen durchaus bewusst, dass jemand unserem Mitarbeiter eine Falle stellen könnte. Die Standardprozedur ist es, dem betroffenen eine gewisse Frist zu setzen.")
	
	ANSWER("WEITER",155)
NODE(155)
	SAY("Ich weiss, dass sie sich in der letzten Zeit sehr bemüht haben und ich gebe ihnen deshalb noch zusätzlich Zeit, ihre Unschuld zu beweisen. Aber sie fangen besser gleich damit an, diese Frist hält nicht ewig an.")
	
	ANSWER("Aber wie soll ich das?Ich wüsste doch nicht wo ich anfangen kann!",156)
NODE(156)
	SAY("Sie fangen am besten dort an, wo sie diesen Datacube verloren oder weitergegeben haben. Hier ist ihr Datacube.")
	
	ANSWER("Das muss dieser Hontoka im Industrial Sektor 02 gewesen sein, dem habe ich so einenCube gegeben.",157)
NODE(157)
	SAY("Das ist nun ihre Sache. CityAdmin kann es sich nicht leisten bei solchen Fällen eine Ermittlung einzuleiten. Falls sie ihre Unschuld nicht beweisen können, so sind sie schuldig. ")
	
	ANSWER("WEITER",158)

--Spieler bekommt Datacube 9054
NODE(158)
	GIVEITEM(9054)
	SAY("Gehen sie und sammeln sie Beweise für ihre Unschuld, oder tragen sie die Konsequenzen.")
	STARTMISSION(3567)
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	
NODE(159)
	SAY("Ich füchte dieses Mal bleibt ihnen keine Zeit für Pausen. Aber wie sie meinen.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
	SAY("Ich schlage vor, da sie diese Liste auch organisiert haben kümmern sie sich darum, diesen Hacker zu finden.")
	
	ANSWER("Na gut, was ich anfange, dass bringe ich auch zuende.",202)
	ANSWER("Da muss ich passen, ich bin wirklich noch nicht so weit.",207)
NODE(202)
	SAY("Das höre ich gerne, CityAdmin braucht immer willensstarke Runner von eurem Schlag. Ihr solltet mit dem Kontaktmann reden, der euch diese Liste gegeben hat. Er könnte euch vielleicht noch mehr über die einzelnen Personen sagen.")
	
	ANSWER("Sie meinen diesen lästigen Ethan Cole, nicht wahr?",203)
NODE(203)
	SAY("Schon möglich. Denkt daran, der Hacker wird nicht alleine gearbeitet haben. Ich habe auch noch andere unerfreuliche Nachrichten, fürchte ich.")
	
	ANSWER("WEITER",204)
NODE(204)
	SAY("Es wurde noch ein Mord begangen seit dem letzten Mal. Die Ermittlungen stecken zur Zeit fest, obwohl jede neue Fährte genauestens analysiert wird.")
	
	ANSWER("WEITER",205)
NODE(205)
	SAY("Vielleicht kümmern sie sich am besten aber erst einmal um diesen Hacker und finden den CopBot wieder.")
	
	ANSWER("Geht klar, lassen sie das mal meine Sorge sein.",206)
NODE(206)
	SAY("Viel Glück.")
	STARTMISSION(3568)
	SETNEXTDIALOGSTATE(8)
	ENDDIALOG()
	
NODE(207)
	SAY("Dann ruht euch aber nicht zu lange aus, bevor noch ein Mord geschieht.")
	
	ENDDIALOG()
NODE(208)
	SAY("Geht ihr schon der Spur nach? Viel Glück. Versuchen sie es doch bei diesem Cole in Outzone 01.")
	
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 6
NODE(251)
	SAY("Heisst das, sie haben eine Spur?")
	
	ANSWER("Ich denke schon, aber ich muss noch eine... ahem... Kontaktperson treffen, die mir den Aufenthaltsort preisgeben wird.",252)
NODE(252)
	SAY("Viel Erfolg")
	STARTMISSION(3569)
	SETNEXTDIALOGSTATE(3)	
	ENDDIALOG()
NODE(253)
	SAY("Ich dachte sie hätten eine Spur, der sie nachgehen wollten. Besuchen sie Jenna im NCPD HQ wenn sie mehr wissen.")
	
	ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann stören sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(1)
		if(result>49)then
			SAY("Das hören wir gerne. Laut unserer Daten haben sie auch eine reine Weste. Nun gut, die Aufnahmegebühr beträgt 300 000 Credits.")
	
			ANSWER("Das ist aber eine ganz schöne Summe.",302)
		else
			SAY("Verschwinden sie lieber, mit Abschaum wie ihnen möchten wir nichts zu tun haben.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Wenn es ihnen nicht so viel Wert ist, dann wissen wir zumindest, dass sie nicht wirklich vorhaben, längere Zeit bei uns zu verbringen.")

		ANSWER("Nun gut, ich bezahle es.",303)
		ANSWER("Das könnt ihr gleich vergessen, soviel Geld will ich dafür nicht ausgeben.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Beschämend, dass sie die finanziellen Mittel nicht aufbringen können, finden sie nicht?")
			ENDDIALOG()
		else
			CHANGEFACTION(1)
			SAY("Willkommen bei der CityAdmin.")
			ENDDIALOG()
		end

end