--new
--BlackDragon
--
--Trigger
--Triggernumber,Type,Person
--0,D, LUCKY 50
--1,D, LEONE 100
--2,Loot, CARLOS
--3,D, LUCY 150,LEONE 200
--
--Startnode, Person
--0, WISEGUY
--50, LUCKY 1652
--100, LEONE 1651
--150, LUCY 1650
--200, LEONE
--250, CARLOS 1654
--
--Items
--belastendes Video (150,200) 9462
--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1652	1651	1650	1654	3	0	0	0	3	1	1	0	10	3	2	0	3	2	3
--START	START	START	START
--50	100	150	250
--

function DIALOG()
--------------------------------------------------------------------
--WISEGUY
--0
	
	NODE(0)
		SAY("H�r zu, das ist eine Chance f�r dich. Also gib acht, dass du dich dementsprechend verh�ltst. Sprich mit Lucky hier im Hauptquartier. Er l�sst dir mitteilen es geht um euren gemeinsamen Freund Leone. Ich hab allerdings keine Ahnung worum es geht. Wenn du mir sp�ter gerne mitteilen willst, worum es sich handelt, dann habe ich noch eine kleine Belohnung f�r dich.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(1)
		SAY("Lucky m�chte dich gerne sprechen. Ich w�rde so eine Chance nicht ungen�tzt vergehen lassen.")

		ENDDIALOG()

--------------------------------------------------------------------
--LUCKY
--50
	NODE(50)
		SAY("Da ist ja mein ganz spezieller Freund.  Ich hoffe du hast die Freizeit genossen, denn es gibt jetzt etwas zu tun.")

		ANSWER("Wenn meine Belohnung stimmt, kein Problem.",51)
	NODE(51)
		SAY("Die Sache ist ganz einfach. Du hast wahrscheinlich schon gemerkt, dass Leone ein Schwein ist, oder? Verr�terisch und Hinterh�ltig selbst seinem Clan gegen�ber. Es ist Zeit etwas dagegen zu unternehmen. Und daf�r brauche ich dich, Runner.")

		ANSWER("Also im Klartext willst du dir nicht die Finger schmutzig machen.",52)
	NODE(52)
		SAY("Vergiss nicht, dass du mir noch einen Gefallen tun k�nntest. Damit w�rdest du es dir bei mir sehr viel leichter machen. Ich hoffe du hast nicht vergessen, dass ich hier recht viel zu sagen habe.")

		ANSWER("Ich halte mich immer an das, was ich Verspreche. Also, ich muss schon ein bischen mehr dar�ber wissen.",53)
	NODE(53)
		SAY("Gut, sehr gut. Er plant, mich bei Gecko anzuschw�rzen und hatte dazu schon ein paar Videos prepariert. Die konnten wir ihm zum Gl�ck schon abnehmen. Mach den fetten Sack kalt. Leone lebt eh schon viel zu lange.  Sprich vorher mit ihm und sag ihm einen sch�nen Gruss von mir. Komm erst wieder, wenn es getan ist.")
		SETNEXTDIALOGSTATE(54)
		ACTIVATEDIALOGTRIGGER(0)
		ENDDIALOG()
	NODE(54)
		SAY("Ich hoffe du hast nicht vergessen, dass du Leone umbringen sollst. Sag ihm aber vorher, dass ich ihn tot sehen will.")
		ENDDIALOG()


--------------------------------------------------------------------
--LEONE
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich hab nichts mit so einem heruntergekommenen Runner zu tun. Also lass mich in Ruhe.")
			ENDDIALOG()
		else
			SAY("Du nervst, Runner. Ich habe im Moment nicht die geringste Verwendung f�r einen solchen Anf�nger wie dich, kapiert?")

			ANSWER("Ich wei� genau, was du von mir h�ltst. Ich komme aber im Auftrag von Lucky.",101)
		end
	NODE(101)
		SAY("Lucky? Was... was will der denn von mir?")

		ANSWER("Er l�sst dir sch�ne Gr��e �bermitteln und m�chte dich gerne kalt gestellt sehen. Tot um genauer zu sein.",102)
	NODE(102)
		SAY("Mich? L�cherlich, der kriegt das doch nie Zustande. Der spuckt immer grosse Worte. Aber...")

		ANSWER("Nicht er selbst. Ich m�chte Lucky damit einen kleinen Gefallen tun...",103)
	NODE(103)
		SAY("Lucky hat euch doch sicherlich nicht nur zu mir geschickt damit ihr mir das sagt. Heisst das dann etwa...")

		ANSWER("Ganz richtig, ich bin hier um dich auszuschalten.",104)
	NODE(104)
		SAY("Nicht ehrlich, oder? Das ist doch alles nur ein schlechter Scherz.")

		ANSWER("Nein, Lucky meint es wirklich ernst.",105)
	NODE(105)
		SAY("Nein, um Himmels Willen! Das kann nicht sein. Moment, ich m�chte noch nicht sterben. Tu es nicht, bitte.")

		ANSWER("Warum sollte ich es nicht tun, du dreckiger Sack?",106)
	NODE(106)
		SAY("Weil, weil... ich kann dir helfen bei den Dragons hoch zu kommen. Ich kann dir helfen, so dass du in Geckos Gunst stehen wirst. Wie w�rs? Wir arbeiten zusammen und booten Lucky aus, was? Was h�ltst du davon?")

		ANSWER("Erz�hl weiter, im Moment sehe ich noch nicht wie das funktionieren kann.",107)
	NODE(107)
		SAY("Ganz einfach, Lucy... sie hat ein Verh�ltnis mit Gecko und... und mit Lucky. Das k�nnten wir doch ausnutzen, oder nicht? Wir k�nnen Beweise daf�r sammeln und sie dann Gecko vorlegen.")

		ANSWER("Abgemacht. Das klingt nach einem Plan, vorrausgesetzt du wei�t, wo diese Beweise sind.",108)
	NODE(108)
		SAY("Nat�rlich. Lucky hat einen Vertrauten. Ein paar Strassen weiter h�ngt der immer rum, sein Name ist Carlos und er ist irgendwo in Sektor 04 unterwegs hier in Dome of York. Es m�sste ihm nur mal jemand seine Sachen abnehmen und schon h�tten wir die Beweise. Es sind Videoaufnahmen, die ihn und Lucy zeigen. Dieses Schwein hatte sie mir abgenommen, bevor ich sie selbst Gecko vorlegen konnte.")

		ANSWER("Und das soll ich machen oder was?",109)
	NODE(109)
		SAY("H�r mal, wenn ich gehen w�rde, w�re das sehr verd�chtig. Du musst ihn wahrscheinlich n�mlich niederschlagen, da er dir das Zeug wohl nicht freiwillig �berlassen wird. Wenn du dann mit dem Zeug wieder kommst, haben wir etwas gegen ihn in der Hand. Und wenn wir das Gecko vorlegen w�rden...")
		SETNEXTDIALOGSTATE(200)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
--------------------------------------------------------------------
--LUCY
--150
	NODE(150)
		TAKEITEM(9462)
--BELASTENDES VIDEO
		if(result==0)then
			SAY("Du langweilst, lass mir doch wenigstens meine Freizeit, ja?")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Du langweilst, lass mir doch wenigstens meine Freizeit, ja?")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("Du langweilst, lass mir doch wenigstens meine Freizeit, ja?")
					ENDDIALOG()
				else
					SAY("Wenn du etwas hast, was mich interessiert, dann heraus damit.")

					ANSWER("In der Tat. Ich w�rde mal sagen, Gecko w�re entt�uscht wenn herausk�me, dass du auch noch etwas mit Lucky hast.",151)
				end
			end
		end
	NODE(151)
		SAY("Du weisst das? Du willst mich doch nur verarschen. Du kannst es sicher nicht beweisen.")

		ANSWER("Aber ja, ich habe Videoaufnahmen. Ich denke das wird reichen.",152)
	NODE(152)
		SAY("Nun gut, es hilft nichts. Es scheint so, als h�ttest du gewonnen. Wie viel willst du?")

		ANSWER("So ist es gut, sch�n kooperativ. Ich brauche schlappe 10000. Ist doch ein fairer Preis, oder?",153)

	NODE(153)
		GIVEMONEY(10000)		
		SAY("Nun gut, aber das Video bekomme ich. Ich sehe schon, diese Video ist echt. Nicht auszudenken, was passiert w�re, wenn Gecko es in die H�nde bekommen h�tte.")	
		ACTIVATEDIALOGTRIGGER(3)
		EPICRUNFINISHED(9,2)
---MISSING
		ENDDIALOG()


--------------------------------------------------------------------
--LEONE
--200

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Du findest Carlos in Sektor 04 irgendwo. Alles was du tun musst, ist ihm sein Material abzunehmen. Suche nach etwaigen Video Aufnahmen.")
			ENDDIALOG()
		else
			TAKEITEM(9462)
--belastendes Video
			if(result==0)then
				SAY("Du findest Carlos in Sektor 04 herumstreunen. Alles was du tun musst, ist ihm sein Material abzunehmen. Suche nach etwaigen Video Aufnahmen.")
				ENDDIALOG()
			else
				GIVEITEM(9462)
				SAY("Sehr gut, sehr gut. Gib mir das Video. Jetzt haben wir wirklich etwas in der Hand. Ich werde es Gecko vorlegen und es wird seine Wirkung sicher nicht verfehlen, du wirst schon sehen.")

				ANSWER("Ich will doch lieber mal sehen, ob ich nicht vorher einen besseren K�ufer finde. Ich k�nnte mir vorstellen, dass Lucy auch sehr daran interessiert ist, dass diese Aufzeichnungen nicht an die �ffentlichkeit kommen.",202)
			end
		end


	NODE(202)
		SETNEXTDIALOGSTATE(202)
		SAY("Du Ratte! Komm du nochmal zu mir... von mir bekommst du nichts mehr. Hast du geh�rt?")
		ENDDIALOG()

--------------------------------------------------------------------
--CARLOS
--250

	NODE(250)
		SAY("Ja, was willst du von mir? Isses wichtig? Hast du mir was zu sagen?")

		ANSWER("Nein, es ist nichts.",251)
	NODE(251)
		SAY("So, wieder so eine wandelnde leblose H�lle ohne Eigeninitiative.")
		ENDDIALOG()
end