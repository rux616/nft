--new
function DIALOG()
--Trigger
--1,100,150 Dialog
--6 Kill Multiple
-----------------------------------------------------------------
--Resource officer
	NODE(0)
		SAY("Mein junger M�nch. Langsam wirst Du zu einem unentbehrlichen Mitglied unseres Ordens. Der Rat der hohen Br�der hat beschlossen, dich offiziell in den blauen Zirkel unserer Mitglieder aufzunehmen.")

		ANSWER("Das ist eine grosse Ehre f�r mich. Ich werde mich w�rdig erweisen.",1)
	NODE(1)
		SAY("Das bedeutet, dass Du von nun an mit Missionen betraut werden wirst, die auch innere Angelegenheiten des Ordens betreffen und die daher von dir �usserst vertraulich zu behandeln sind.")

		ANSWER("Ich f�hle mich geehrt, Schwester. Wie kann ich dem Orden dieses mal dienen?",2)
		ANSWER("Ich f�hle mich dazu noch nicht weit genug.",6)
	NODE(2)
		SAY("Unser gemeinsamer Freund, Mark Cole, hat dem Rat mitgeteilt, dass er angeblich Informationen �ber ein geheimes Treffen zwischen den Fallen Angels und Vertretern der Anarchy Breed hat.")

		ANSWER("Wozu? Was f�r eine Teufelei m�gen sie wohl planen?",3)
	NODE(3)
		SAY("Es gibt schon lange Ger�chte �ber ein B�ndnis zwischen beiden Parteien, aber bisher konnten wir noch keine Details �ber den Stand der Verhandlungen in Erfahrung bringen. Triff dich mit Cole und h�r dir an, was er zu sagen hat.")

		ANSWER("Wo treffe ich Cole?",4)
	NODE(4)
		SAY("Wo soll dieser Taugenichts schon sein? Er treibt sich nach wie vor auf dem Waffenmarkt Sektor 06 herum und versucht sich und seine angeblich wichtigen Informationen an den Meistbietenden zu verkaufen.")

		ANSWER("Dann weiss ich, was ich zu tun habe.",5)
	NODE(5)
		SAY("Sieh dich vor... Du weisst ja, dass er ein unangenehmer Zeitgenosse ist. M�ge Crahn deine Mission segnen.")
		STARTMISSION()
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()
		
	NODE(6)
		SAY("Dann gehe und arbeite darauf hin. Wenn du dich bereit f�hlst, werden wir dir dasselbe Angebot  noch einmal machen.")

		ENDDIALOG()

-----------------------------------------------------------------
--Cole
	NODE(50)

			SAY("Na, wenn das nicht mein Lieblingsm�nch ist. wie geht es Bruder Gabriel? Wie ich h�re, hat er den heimt�ckischen Anschlag �berlebt.")

			ANSWER("Wie k�nnen Sie von dem �berfall wissen? Weder er noch ich haben irgendjemandem etwas davon erz�hlt.",51)

	NODE(51)
		SAY("Ich verdiene mein Geld damit, zu wissen, was andere wissen wollen. Eine kleine Messerstecherei ist allerdings keine Story, f�r die jemand Geld zahlen w�rde.")

		ANSWER("Verdammt... Sie waren es. Und dann haben sie versucht, die HoloDisk an Neocron zu verkaufen...? Aber dieses mal sind sie zu weit gegangen. F�r den �berfall auf Bruder Gabriel wird der Orden sie jagen und foltern, bis sie in ihrem eigenen Blut ersticken.",52)
	NODE(52)
		SAY("Pah... immer noch so voreilig und frech, mein junger M�nch? Ich glaube kaum, dass Bruder Gabriel den maskierten Runner, der ihm das angetan hat identifizieren kann.")

		ANSWER("Die Bruderschaft hat Mittel und Wege.",53)
	NODE(53)
		SAY("Mag schon sein. Aber rate, wessen Fingerabdr�cke �berall auf dem Stiletto zu finden sind? Vielen Dank noch mal f�r die Waffe. In dieser dunklen Stadt ist es immer gut, wenn man sich verteidigen kann.")

		ANSWER("Sie sind eine verdammte Schlange.",54)
	NODE(54)
		SAY("Warum so feindseelig? Das wichtigste ist doch, dass es Bruder Gabriel wieder gut geht. Der Orden w�re sicherlich nicht begeistert, wenn ein talentierter junger M�nch sich pl�tzlich als Attent�ter entpuppt. ")

		ANSWER("Was haben sie sich gedacht, was nun passiert?",55)
	NODE(55)
		SAY("Also ich schlage vor, dass die ganze Angelegenheit unser kleines Geheimnis bleibt... Naja, aber deswegen sind sie doch mit Sicherheit nicht zu mir gekommen, oder?")

		ANSWER("Ich verstehe nicht, wie der Orden mit einem Menschen wie ihnen Gesch�fte machen kann. Aber diese Entscheidung liegt nicht in meiner Verantwortung... Man sagte mir, sie h�tten Informationen �ber ein Treffen zwischen Mitgliedern der Anarchy Breed und den Fallen Angels?",56)
	NODE(56)
		SAY("In der Tat... die habe ich.")

		ANSWER("Und? ... Nun kommen sie schon Cole, lassen sie sich nicht bitten, sonst k�nnte es ganz schnell sein, dass sich der talentierte junge M�nch vor ihnen doch noch zum Attent�ter entwickelt. Ich w�rde es ehrlich gesagt geniessen, ihre Eingeweide �ber die Wand hinter ihnen verteilt zu sehen.",57)
	NODE(57)
		SAY("Na gut... im Interesse unserer wiedergefundenen Freundschaft, werde ich ihnen ausnahmsweise eine Information ohne Gegenleistung oder Bezahlung geben.")

		ANSWER("Ich warte! Schiessen sie endlich los.",58)
	NODE(58)
		SAY("Calvin Grimwood von der Breed und Drakkhan Helios von den Angels werden sich in der Outzone Sektor 4 treffen.")

		ANSWER("Warum? Was ist der Sinn und Zweck dieses Treffens?",59)
	NODE(59)
		SAY("Drakkhan wird Calvin eine Ampulle mit einem fl�ssigen Metall namens Corytium geben. Angeblich wirkt das Mittel nach der Einnahme PSI verst�rkend. Die Fallen Angels wollen der Breed damit helfen autonomer und deutlich angriffsf�higer zu werden.")

		ANSWER("Hat dies wom�glich mit der Allianz zu tun, von der man so viele Ger�chte h�rt?",60)
	NODE(60)
		SAY("Ja, Die �bergabe des Corytiums ist quasi der Grundstein f�r eine gemeinsame Allianz. Die Parteien vertrauen sich gegenseitig jedoch noch nicht besonders... und wenn die �bergabe des Corytiums scheitert, w�rde dies die Verhandlungen zwischen der Breed und den Angels um Monate zur�ckwerfen.")

		ANSWER("Dieser Plan sieht Ihnen �hnlich. Ich h�re f�rmlich das Zischen der Schlange aus ihrem Mund.",61)
	NODE(61)
		SAY("Ein einfaches Dankesch�n h�tte es auch getan... Aber ich bin noch gar nicht fertig. Das Sahneh�ubchen kommt erst noch. Wenn es ihnen gelingen sollte, das Corytium an sich zu bringen, dann bringen sie es Maxime im Sektor 10 hier im Dome. Sie wird es dann an Tangent weiterleiten.")

		ANSWER("Was hat es mit dieser Aktion auf sich?",62)
	NODE(62)
		SAY("Tangent verf�gt �ber keinerlei Corytium und auch kaum �ber Wissen auf dem Gebiet der PSI kontrollierten Waffen.")

		ANSWER("Was bedeutet, dass sie sicher an der Substanz interessiert sind.",63)
	NODE(63)
		SAY("Wenn die Anarchy Breed mitbekommt, dass die Fallen Angels ihr Corytium scheinbar direkt an ihren Erzfeind Tangent geliefert haben, wird die Breed die Angels daf�r hassen. ")

		ANSWER("Klingt interessant.",64)
	NODE(64)
		SAY("Dies wiederum w�rde die von der Brotherhood of Crahn bef�rchtete Allianz zwischen der Breed und den Angels endg�ltig vom Tisch wischen und sie, mein junger M�nch, w�rden mal wieder als Held des Tages gefeiert werden.")

		ANSWER("Ich bin sprachlos... es ist schon erstaunlich, wieviel Verschlagenheit und Boshaftigkeit in ihrem kranken Hirn steckt. Aber irgendwie gef�llt mir der Plan. Was gewinnen sie daraus? Sie k�nnen mir nicht erz�hlen, dass sie nichts daraus bekommen.",65)
	NODE(65)
		SAY("Ich gehe dabei schon nicht leer aus, keine Angst. Sie sollten aber lieber auf sich selbst aufpassen. Einfach wird's nicht werden. Drakkhan und Calvin werden mit Sicherheit nicht ohne Eskorte am Treffpunkt auftauchen. Da muessen sie schon alles wegmetzeln,  bevor sie einem von beiden das Corytium abnehmen k�nnen.")

		ANSWER("Das sollte kein Hinderniss sein.",66)
	NODE(66)
		SAY("Wie ich sie kenne,  sind sie genau der richtige Runner f�r den Job... In diesem Sinne, Viel Spass dabei und auf Wiedersehen.")
		SETNEXTDIALOGSTATE(67)	
		ENDDIALOG()
	NODE(67)
		SAY("Ich hab leider nicht mehr Informationen, M�nch! Drakkhan wird immer noch in der Outzone Sektor 04 sein. Das Corytium bringst du dann zu Maxime, klar? Sonst funktioniert der Plan nicht.")
		ENDDIALOG()

--Spieler killt Drakkhan Trigger 6
-----------------------------------------------------------------
--Maxime 2255 anstatt 1603

		
	NODE(100)
		SAY("Sieh an... ein M�nch des blauen Zirkels. Ihr Ruf eilt ihnen voraus. Was kann ich f�r sie tun?")

		ANSWER("Ich habe hier eine Substanz, die Tangent in die H�nde gespielt werden soll. Aber es braucht dazu jemanden, f�r den das Wort zuverl�ssig kein Fremdwort ist.",101)
	NODE(101)
		TAKEITEM(9006)
		if(result==0)then
			SAY("Du hast diese Substanz aber nicht bei dir.")
			ENDDIALOG()
		else
			SETNEXTDIALOGSTATE(102)
			SAY("Dann sind sie derjenige auf den ich gewartet habe. Keine Angst, ihre kleine Lieferung ist bei mir in guten H�nden. Ich habe Erfahrung in solchen Sachen.")

			ANSWER("Vergessen sie nicht, Tangent deutlich zu machen, dass diese Substanz von den Fallen Angels geschickt wurde.",102)
		end
	NODE(102)
		SAY("Gut, hat es denn etwas besonderes damit auf sich?")

		ANSWER("Der Name der Substanz ist Corytium. Mehr m�ssen sie nicht wissen.",103)
	NODE(103)
		SAY("Cole bekommt dann also seinen Anteil wie immer?")

		ANSWER("Cole, dieser Bastard. Also hatte er dies alles geplant gehabt? Ich habe doch gewusst, dass er aus dieser Sache irgendwie Profit schlagen w�rde.",104)
	NODE(104)
		SAY("Das sollten sie mit ihm pers�nlich kl�ren, ich habe damit nichts zu tun. Die Lieferung wird auf jeden Fall per Express geschickt.")
		
		SETNEXTDIALOGSTATE(105)
		ACTIVATEDIALOGTRIGGER(2)	
		ENDDIALOG()
	NODE(105)	
		SAY("Ihr Auftrag ist schon ausgef�hrt. Falls sie es sich anders �berlegt haben, so ist es jetzt zu sp�t.")
		ENDDIALOG()


-----------------------------------------------------------------
--resource officer
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Hast du nicht noch etwas zu erledigen? Mark Cole wartet immer noch in Sektor 06.")
			ENDDIALOG()
		else
			SAY("Beim heiligen Crahn. Wie hast Du das bloss schon wieder hinbekommen? Bruder Gabriel hat mir soeben mitgeteilt, dass es anscheinend ernsthafte Differenzen zwischen der Breed und den Fallen Angels gibt.")
		
			ANSWER("Ganz einfach war es nicht.",151)
		end
	NODE(151)
		SAY("Die drohende Allianz zwischen den beiden Fraktionen d�rfte damit wohl erstmal vom Tisch sein. Wie kann der Orden Dir daf�r nur danken?")
		
		ANSWER("Danken Sie nicht mir... danken Sie Cole. Er hatte einen teuflisch genialen Plan. Ich war nur das Werkzeug, welches den Plan im Namen Crahns ausgef�hrt hat.",152)
	NODE(152)
		SAY("Und bescheiden ist er auch noch... Wie kann es sein, dass Mark Cole, diese alte Schlange, etwas n�tzliches ausheckt?")
		
		ANSWER("Manchmal ist eine Schlange eben genau das, was man braucht, um eine Situation schnell und unauff�llig in den Griff zu kriegen.",153)
	NODE(153)
		SAY("Du sprichst in R�tseln... Ach, bevor ich es vergesse: Pater Manus hat ein weiteres Fragment gefunden. Es wurde in den Wastelands in der N�he der Gaya Minen gefunden.")
		
		ANSWER("Und? Was hat er herausgefunden?",154)
	NODE(154)
		SAY("Ich soll Dir ausrichten, dass er angeblich kurz vor des R�tsel's L�sung steht und sich bei Dir melden wird, sobald er genau weiss, was es mit den Fragmenten auf sich hat.")
		
		ANSWER("Jetzt haben wir schon drei Fragmente... Wird Zeit, dass ich deren Sinn und Zweck verstehe.",155)
	NODE(155)
		SAY("Ich m�chte Dir gern vorschlagen, Dich f�r die Aufnahme in den roten Zirkel des Ordens vorzubereiten. Zu diesem Zweck musst du deine F�higkeiten aber noch weiter verbessern. Bevor ich dir deinen n�chsten Special Run geben kann, solltest Du noch ein wenig trainieren.")
		
		ANSWER("So sei es.",156)
	NODE(156)
		GIVEMONEY(6000)
		SAY("Hier hast Du noch einmal 6.000 Credits, die du in deine Ausr�stung investieren solltest. Komm zur�ck zu mir, wenn Du Deine F�higkeiten weiter gesteigert hast, dann gebe ich Dir Deinen n�chsten Special Run. Bis dahin segne Crahn Deine Wege. Auf Wiedersehen, junger M�nch.(n�chste Mission Level 35)")
		EPICRUNFINISHED(10,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

--Drakkhan
	NODE(200)
		SAY("Das hier ist privat! Verschwinde!")
		ENDDIALOG()
		
	

end