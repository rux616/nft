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
-- Fraktion wird �berpr�ft
		if(result==-1)then 
			SAY("Sie geh�ren leider nicht unserer Fraktion an. Bitte verschwenden sie nicht weiter meine Zeit. Es sei denn, sie w�rden gerne unserer Fraktion beitreten?")
			
			ANSWER("Genau deswegen bin ich hier, ich w�rde gerne ihrer Fraktion beitreten.",301)
			ANSWER("Nein, kein Interesse. Bis dann...",300)
		else
-- Alle Missionen erf�llt? wird gepr�ft
			CANDOEPICRUN(1,0)
			if(result==-2)then
				SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erf�llt wurde
				CANDOEPICRUN(1,0)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(1,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(1,1)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(1,2)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(1,3)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(1,4)
						if(result==-5)then
							SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(1,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(1,5)
				if(result==-5)then
					SAY("Sie sind im Moment nicht erfahren genug, kommen sie sp�ter wieder. (n�chste Mission Level 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(1,5)
				        if(result==-4)then
						SAY("Es tut mir leid, aber die einzige M�glichkeit wie sie uns noch helfen k�nnten ist, einen Clan zu gr�nden, der uns unterst�tzt.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet

	SAY("Die Ermittlungen scheinen wohl l�nger zu dauern als geplant, was? Zumindest gab es im Moment keine neuen Mordf�lle, aber bleiben sie am Ball.")
	
	ANSWER("Keine Sorge, ich werde mich jetzt sofort um den Aufenthaltsort dieses gestohlenen CopBots k�mmern.",251)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
	SAY("Ich habe jetzt eine Best�tigung von der NCPD. Es gibt nur zwei m�gliche Zielpersonen, die als Hacker in Frage kommen. Sie wurden anhand eurer Liste indentifiziert. ")
	
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
	SAY("Die NCPD hat im Moment immer noch alle H�nde voll zu tun, diese myteri�sen Morde genauer unter die Lupe zu nehmen. Aber unterdessen k�nnen wir die Sicherheit von Neocron nat�rlich auch nicht ganz vergessen. ")
	
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
	SAY("Willkommen bei der CityAdmin. Das war wom�glich die beste Wahl in ihrem Leben, dass sie uns beigetreten sind. Die CityAdmin ist die gr�sste �ffentliche Einrichtung zum Schutz der B�rger und f�r Neocron. Ja, das alles haben die B�rger Lion Reza zu verdanken.")
	
	ANSWER("Da ich ja nun zu der CityAdmin geh�re, dachte ich, dass diese auch Besch�ftigung f�r mich hat.",11)

						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 1
NODE(11)
	SAY("Darauf wollte ich gerade zu sprechen kommen. Als loyales Mitglied in der CityAdmin wird von ihnen erwartet, dass sie gegen ein entsprechendes Entgeld auch bestimmte Aufgaben �bernehmen. Es steht ihnen zwar frei, aber wer schl�gt schon der Hand, die einen f�ttert einen Gefallen aus?")
	
	ANSWER("WEITER",12)
NODE(12)
	SAY("Ausserdem arbeitet die CityAdmin ja f�r die B�rger, nicht so wie damals die Diktatur der Psim�nche. Da war jeder Gedanke unter Kontrolle und die Leute lebten praktisch in Sklaverei. Viele Leute vergessen, wer sie von all dem befreit hat.")
	
	ANSWER("Aber, ist es denn jetzt so viel anders? Ich meine, man wird f�r ein einfaches loses Wort gleich hingerichtet...",13)

NODE(13)
	SAY("Redet nicht weiter. Ich gebe ihnen einen guten Rat. Und selbst dies tue ich nur, weil sie neu hier sind. �ber die CityAdmin stellt man keine Vermutungen an, man akzeptiert sie so wie sie ist. Selbiges gilt f�r Mr Reza. Falls ihr nicht auf meine Warnung h�rt, so wird man euch mit dem Tode bestrafen. Und das alles nur wegen eurem loosen Mundwerk.")
	
	ANSWER("Ich verstehe. Ich werde ihren Rat bedenken. Dann erz�hlen sie mir, was die CityAdmin so ausmacht.",14)
NODE(14)
	SAY("Gut. Wie schon gesagt, hat Reza die B�rger Neocrons vor der grausamen Diktatur der Crahn befreit. Nach �ber hundert Jahren war Neocron befreit. Das geschah im Jahre 2724 so weit ich mich entsinne. Das war auch der Beginn einer neuen �ra der Freiheit.")
	
	ANSWER("WEITER",15)
NODE(15)
	SAY("Lioon Rezas Gro�z�gigkeit haben die Crahn es zu verdanken, dass sie noch immer in der Stadt geduldet werden. Es wurden viele sinnvolle Neuerungen umgesetzt, damit es die B�rger einfacher haben. So wurde die Rechtsprechung beispielsweise vereinfacht. ")
	
	ANSWER("WEITER",16)
NODE(16)
	SAY("Nun weiss jeder, was er darf und was nicht. Den Erfolg kann man im Plaza und in ViaRosso sehen, die Kriminalit�t ist gleich null. ")
	
	ANSWER("WEITER",17)
NODE(17)
	SAY("Dies alles trotz der grossen Schwierigkeiten, nachdem so viele Leute sich dem grossen Trek angeschlossen haben um nach Irata II zu fliegen. Damals hatte die Kriminalit�t explosionsartig zugenommen. Den CopBots von der CityAdmin ist es zu verdanken, dass hier immer noch Ordnung herrscht.")
	
	ANSWER("Wisst ihr, was aus den Teilnehmern am grossen Trek geschehen ist? Ich meine, nachdem der Kontakt zu Irata III abgebrochen ist.",18)
NODE(18)
	SAY("Das ist leicht zu beantworten, denn der grosse Trek ist noch lange nicht bei Irata III angekommen. Die CityAdmin konzentriert sich momentan einzig und allein auf die Sicherheit und um das Wohlergehen der B�rger von Neocron.")
	
	ANSWER("WEITER",19)
NODE(19)
	SAY("Aber genug von diesen alten Geschichten. Es gilt, eine kleine Lieferung zur NCPD zu bringen. Es mag auch sein, dass ihr der NCPD etwas unter die Arme greifen k�nnt. Neocron ist gross und es gibt immer etwas zu tun.")
	
	ANSWER("Gut, ich werde dieses Paket ausliefern. Was enth�lt es, wenn ich fragen darf?",20)
	ANSWER("Ich glaube ich bin f�r so etwas noch nicht bereit.",21)
NODE(20)
	GIVEITEM(9052)
	SAY("Es enth�lt ein paar sichergestellte Drogen, die im Zusammenhang mit einem Verbrechen registriert worden sind. M�glich, dass ihr bei der NCPD mehr davon erfahrt. Viel Spass bei eurem ersten Auftrag f�r die CityAdmin.")
	STARTMISSION(3564)
	SETNEXTDIALOGSTATE(200)
	ENDDIALOG()
	
NODE(21)
	SAY("Wie sie meinen. Kommen sie zur�ck, wenn sie bereit sind.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 2
NODE(51)
	SAY("Ich hoffe doch nicht, dass sich das noch weiter ausbreitet. Auf jeden Fall hat die NCPD alle verf�gbaren Kr�fte nun zur L�sung dieses Falles abgestellt. ")
	
	ANSWER("WEITER",52)
NODE(52)
	SAY("Es scheint aber nicht so leicht zu sein, da die ganzen Ermittlungen ziemlich schwammig ausgehen. Also wirklich, so viele Feinde der CityAdmin kann es doch gar nicht geben, dass sich das so in die L�nge zieht..")
	
	ANSWER("Ich denke das untersch�tzt ihr.",53)
NODE(53)
	SAY("Es gibt als Hauptfeind die Twilight Guardian. Sie versuchen st�ndig die Authorit�t der CityAdmin zu untergraben, aber das ist nichts neues. Ausser den Twilight Guardian kann ich nur noch die Crahn, Tsunami und die Black Dragon nennen.")
	
	ANSWER("WEITER",54)
NODE(54)
	SAY("Wobei Tsunami und Black Dragon aber eher ihren eigenen Gesch�ften nachgehen und die Crahn noch ihrer ehemaligen Gr�sse nachtrauern.")
	
	ANSWER("Aber ihr untersch�tzt, was Menschen f�r pers�nliche Motive haben k�nnen, die CityAdmin zu verachten.",55)
NODE(55)
	SAY("Ich denke da irrt ihr euch, die CityAdmin wird vollstens von den B�rgern Neocrons unterst�tzt. Manche B�rger kontrollieren die Stadt sogar mit Reza zusammen. Aber deswegen wollte ich auch nicht mit ihnen sprechen. Die NCPD ist zur Zeit etwas strapaziert.")
	
	ANSWER("WEITER",56)
NODE(56)
	SAY("Daher hat die CityAdmin beschlossen auch Runner als Ermittler einzusetzen und so der NCPD zu helfen. Es wurden Informationen �ber verschiedene Kontakte an mich weitergeleitet und ich habe vielen Runnern schon Aufgaben diesbez�glich verteilt. ")
	
	ANSWER("WEITER",57)
NODE(57)
	SAY("Leider gehen mir langsam die Runner aus. Es meldet sich keiner freiwillig und es ist keiner mehr qualifiziert genug um diese Aufgabe zu �bernehmen. Deshalb habe ich an sie gedacht.")
	
	ANSWER("Das ist ja wohl die H�he! Mir zu unterstellen, ich sei nicht qualifiziert genug! Und nun denken sie an mich, da ihnen die anderen Runner ausgehen?",58)
NODE(58)
	SAY("Meine �berlegungen stehen nicht zur Debatte und ob es ihnen gef�llt oder nicht, es gibt bessere Leute f�r einen solchen Job. Ich wollte es nat�rlich nicht so hart ausdr�cken, wie sie es jetzt vielleicht verstanden haben.")
	
	ANSWER("WEITER",59)
NODE(59)
	SAY("Falls ihr Interesse sie nun urpl�tzlich verlassen haben sollte, so werde ich das nat�rlich in ihrer Akte vermerken. Sie sollten inzwischen gelernt haben, ihr Temperament etwas zu z�geln.")
	
	ANSWER("Ist ja gut, ich bin ganz ruhig. Was soll ich denn tun?",60)
	ANSWER("Ich bin noch nicht wieder bereit f�r einen weiteren Auftrag.",63)
NODE(60)
	SAY("Die NCPD hat uns dar�ber informiert, dass ein gewisser Hontoka von den Tsunamis daran interessiert ist, uns Informationen zu verkaufen. Diese k�nnten unter Umst�nden wichtig f�r diesen Mordfall sein. Da aber dieses Subjekt ein Tsunami ist, bezweifle ich, dass er etwas sinnvolles von sich geben wird.")
	
	ANSWER("WEITER",61)
NODE(61)
	SAY("Aber die CityAdmin w�re nicht dort, wo sie heute ist, wenn sie nicht alle M�glichkeiten aussch�pfen w�rde. Sie k�nnen ihn in dem Industrial Sector 02 finden. Wenn sie genug Informationen haben, reden sie mit Officer Jenna. Sie sollten sie ja schon kennengelernt haben.")
	STARTMISSION(3565)
	SETNEXTDIALOGSTATE(12)
	ENDDIALOG()	

NODE(62)
	SAY("K�mmern sie sich doch weiter um die Mission. Hontoka wartet auf sie im Industrial Sektor 02. Falls sie was neues erfahren gehen sie damit zur NCPD.")
	ENDDIALOG()

NODE(63)
	SAY("Dann ruhen sie sich doch noch etwas aus und kommen wieder, sobald sie sich bereit f�hlen.")
	ENDDIALOG()		
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 3
NODE(101)
	SAY("Deshalb haben wir beschlossen einen jungen dynamischen Runner mit einem Auftrag zu betrauen. Ich denke, dass sie die CopBots schon ausf�hrlich auf den Strassen von Neocron beobachten konnten, nicht wahr?")
	
	ANSWER("Ja, in der Tat. Sie sind recht beeindruckend.",102)
NODE(102)
	SAY("Ja, und doch gibt es etwas, was viele Leute nicht wissen. Es gibt eine Dunkelziffer von CopBots, die einfach von den Strassen verschwinden. In den Wastelands gibt es sogar Berichte von CopBots, die Amok laufen.")
	
	ANSWER("Nicht vorstellbar, falls ein CopBot innerhalb von Neocron anfangen w�rde Amok zu laufen.",103)
NODE(103)
	SAY("Keine Angst. Das CopBot System ist darauf ausgelegt so etwas abzufangen. Aber es gibt da auch noch andere F�lle. F�lle von CopBots, die noch vor der Aktivierung geklaut werden. So etwas kommt h�chst selten vor und wird normalerweise in null komma nichts aufgekl�rt. ")
	
	ANSWER("WEITER",104)
NODE(104)
	SAY("Doch... in diesem Fall wurde das Fehlen des CopBots erst entdeckt, als er aktiviert werden sollte. Das ist jetzt nun schon zwei Monate her und es gibt nicht den Hauch einer Spur.")
	
	ANSWER("Wie werden denn solche Sachen normalerweise zrur�ckverfolgt?",105)
NODE(105)
	SAY("Es gibt einen Mikrosender, der gut in den CopBots versteckt ist. Dieser sendet ein Signal an die Zentrale sobald der CopBot aktiviert wird. Aber dieses Mal ist er entweder nicht aktiviert worden, oder der Sender wurde entfernt. ")
	
	ANSWER("WEITER",106)
NODE(106)
	SAY("Falls letzteres der Fall ist, so muss an dieser Sache ein ziemliches Hacker Genie arbeiten. Selbst unsere Hacker k�nnen so etwas nur mit Hilfe von speziellem Equipment knacken.")
	
	ANSWER("Tja, aber wo findet man einen solchen Hacker? ...vielleicht ...  Die Fallen Angels!!",107)
NODE(107)
	SAY("Ja genau, ihre Scharfsinnigkeit ist genau das, was wir hier brauchen. Ihr Auftrag ist es, einen gewissen Elias in Tech Haven aufzusuchen und ihn �ber eine m�gliche Verbindung zwischen den Fallen Angels und dem geklauten CopBot zu befragen. ")
	
	ANSWER("Erz�hlen sie ruhig weiter.",108)
	ANSWER("Ich bin noch nicht bereit f�r einen weiteren Auftrag.",109)
NODE(108)
	SAY("Ihren Bericht sollten sie dann, wie �blich, Officer Jenna vorlegen. CityAdmin dankt ihnen schon jetzt, viel Gl�ck. Die Fallen Angels stehen neutral zu uns und sollten sich deshalb wohl kooperativ zeigen.")
	STARTMISSION(3566)
	SETNEXTDIALOGSTATE(10)
	ENDDIALOG()	


NODE(109)
	SAY("Dann kehren sie zur�ck, wenn sie sich ausreichend vorbereitet haben.")
	ENDDIALOG()
	
NODE(110)
	SAY("Ich dachte sie wollten sich um diese Sache mit dem verschwundenen CopBot k�mmern? Treffen sie Elias bei den Fallen Angels, Ergebnisse geben sie an Jenn im NCPD HQ.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 4
NODE(151)
	SAY("An und f�r sich nichts aussergew�hnliches. Aber dieser Datacube befand sich zuletzt in ihrem Besitz und sie wissen was das bedeutet?")
	
	ANSWER("Aber das kann nicht sein! Ich w�rde doch niemals...",152)
NODE(152)
	SAY("Bleiben sie ruhig. Ich habe noch keinen CopBot verst�ndigt. Aber sie verstehen sicherlich, dass auf so etwas normalerweise auch die Todesstrafe steht?")
	
	ANSWER("WEITER",153)
NODE(153)
	SAY("Propaganda der Twilight Guardian ist innerhalb von Neocron verboten.")
	
	ANSWER("Ja, aber dieser Datacube ist ein Trick! Das ist doch Sonnenklar. Ich habe nur einer Person einen Datacube gegeben in der letzten Zeit. Der muss es gewesen sein...",154)
NODE(154)
	SAY("Wir sind uns in solchen F�llen durchaus bewusst, dass jemand unserem Mitarbeiter eine Falle stellen k�nnte. Die Standardprozedur ist es, dem betroffenen eine gewisse Frist zu setzen.")
	
	ANSWER("WEITER",155)
NODE(155)
	SAY("Ich weiss, dass sie sich in der letzten Zeit sehr bem�ht haben und ich gebe ihnen deshalb noch zus�tzlich Zeit, ihre Unschuld zu beweisen. Aber sie fangen besser gleich damit an, diese Frist h�lt nicht ewig an.")
	
	ANSWER("Aber wie soll ich das?Ich w�sste doch nicht wo ich anfangen kann!",156)
NODE(156)
	SAY("Sie fangen am besten dort an, wo sie diesen Datacube verloren oder weitergegeben haben. Hier ist ihr Datacube.")
	
	ANSWER("Das muss dieser Hontoka im Industrial Sektor 02 gewesen sein, dem habe ich so einenCube gegeben.",157)
NODE(157)
	SAY("Das ist nun ihre Sache. CityAdmin kann es sich nicht leisten bei solchen F�llen eine Ermittlung einzuleiten. Falls sie ihre Unschuld nicht beweisen k�nnen, so sind sie schuldig. ")
	
	ANSWER("WEITER",158)

--Spieler bekommt Datacube 9054
NODE(158)
	GIVEITEM(9054)
	SAY("Gehen sie und sammeln sie Beweise f�r ihre Unschuld, oder tragen sie die Konsequenzen.")
	STARTMISSION(3567)
	SETNEXTDIALOGSTATE(150)
	ENDDIALOG()
	
NODE(159)
	SAY("Ich f�chte dieses Mal bleibt ihnen keine Zeit f�r Pausen. Aber wie sie meinen.")
	ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tangent 5
NODE(201)
	SAY("Ich schlage vor, da sie diese Liste auch organisiert haben k�mmern sie sich darum, diesen Hacker zu finden.")
	
	ANSWER("Na gut, was ich anfange, dass bringe ich auch zuende.",202)
	ANSWER("Da muss ich passen, ich bin wirklich noch nicht so weit.",207)
NODE(202)
	SAY("Das h�re ich gerne, CityAdmin braucht immer willensstarke Runner von eurem Schlag. Ihr solltet mit dem Kontaktmann reden, der euch diese Liste gegeben hat. Er k�nnte euch vielleicht noch mehr �ber die einzelnen Personen sagen.")
	
	ANSWER("Sie meinen diesen l�stigen Ethan Cole, nicht wahr?",203)
NODE(203)
	SAY("Schon m�glich. Denkt daran, der Hacker wird nicht alleine gearbeitet haben. Ich habe auch noch andere unerfreuliche Nachrichten, f�rchte ich.")
	
	ANSWER("WEITER",204)
NODE(204)
	SAY("Es wurde noch ein Mord begangen seit dem letzten Mal. Die Ermittlungen stecken zur Zeit fest, obwohl jede neue F�hrte genauestens analysiert wird.")
	
	ANSWER("WEITER",205)
NODE(205)
	SAY("Vielleicht k�mmern sie sich am besten aber erst einmal um diesen Hacker und finden den CopBot wieder.")
	
	ANSWER("Geht klar, lassen sie das mal meine Sorge sein.",206)
NODE(206)
	SAY("Viel Gl�ck.")
	STARTMISSION(3568)
	SETNEXTDIALOGSTATE(8)
	ENDDIALOG()
	
NODE(207)
	SAY("Dann ruht euch aber nicht zu lange aus, bevor noch ein Mord geschieht.")
	
	ENDDIALOG()
NODE(208)
	SAY("Geht ihr schon der Spur nach? Viel Gl�ck. Versuchen sie es doch bei diesem Cole in Outzone 01.")
	
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
	SAY("Ich dachte sie h�tten eine Spur, der sie nachgehen wollten. Besuchen sie Jenna im NCPD HQ wenn sie mehr wissen.")
	
	ENDDIALOG()

----------------------------------------------------
----------------------------------------------------
--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Dann st�ren sie mich nicht weiter.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(1)
		if(result>49)then
			SAY("Das h�ren wir gerne. Laut unserer Daten haben sie auch eine reine Weste. Nun gut, die Aufnahmegeb�hr betr�gt 300 000 Credits.")
	
			ANSWER("Das ist aber eine ganz sch�ne Summe.",302)
		else
			SAY("Verschwinden sie lieber, mit Abschaum wie ihnen m�chten wir nichts zu tun haben.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Wenn es ihnen nicht so viel Wert ist, dann wissen wir zumindest, dass sie nicht wirklich vorhaben, l�ngere Zeit bei uns zu verbringen.")

		ANSWER("Nun gut, ich bezahle es.",303)
		ANSWER("Das k�nnt ihr gleich vergessen, soviel Geld will ich daf�r nicht ausgeben.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Besch�mend, dass sie die finanziellen Mittel nicht aufbringen k�nnen, finden sie nicht?")
			ENDDIALOG()
		else
			CHANGEFACTION(1)
			SAY("Willkommen bei der CityAdmin.")
			ENDDIALOG()
		end

end