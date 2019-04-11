--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Zakashi
--1,D,Kev
--2,D,Benjamin
--3,D,Tangent

--Startnode, Person
--0
--50, Zakashi
--100, Kev Critter
--150, Benjamin Kain
--200, Tangent Employee
--Items -> none

-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Sie kommen gerade rechtzeitig. Das Projekt für diese Strahlenwaffe macht Fortschritte. Es konnten sogar schon einige Tests an verschiedenen Materialien durchgeführt werden. Alles sehr überzeugend. Nur ist Tangent das alleine natürlich nicht genug.")

		ANSWER("WEITER",1)
	NODE(1)
		SAY("Es muss unbedingt in Erfahrung gebracht werden, wieweit BioTech mit ihrer Entwicklung ist. Zu diesem Zweck brauchen wir Runner, die gewillt sind einige Nachforschungen zu betreiben.")

		ANSWER("Nachforschungen? Wie sollen diese denn aussehen?",2)
	NODE(2)
		SAY("Tangent hat Methoden, um an Informationen heranzukommen. Es gibt verschiedene Kontaktleute, die alle käuflich sind. Es gibt also genügend Kontaktleute, die in unsere Hände spielen.")

		ANSWER("Ist Spionage denn nicht illegal?",3)
	NODE(3)
		SAY("Spionage? Sie haben es anscheinend immer noch nicht gelernt. Tangent macht genau das, was jede andere Firma tut. Und genau deswegen ist Tangent auch noch im Geschäft.")

		ANSWER("WEITER",4)
	NODE(4)
		SAY("Sie können doch nicht wirklich so naiv sein und glauben, dass andere Firmen nicht die selben Methoden anwenden, oder? Diese Aufgabe ist wichtig für die Firma. Und insofern es mich betrifft, sind sie entweder für oder gegen Tangent. Letzteres würde ich ihnen nicht empfehlen.")

		ANSWER("Ich wollte nicht beleidigend wirken, Verzeihung.",5)
	NODE(5)
		SAY("Sehen sie sich um, in dieser Welt gibt es zwei Möglichkeiten. Entweder sie gehören einer mächtigen Fraktion an ... oder sie sollten ihre Lebenserwartung entsprechend verkürzen. Also, der Kontaktmann befindet sich in der Catlock Bay.")

		ANSWER("WEITER",6)
	NODE(6)
		SAY("Sie können ihm bis zu 10000 Credits bieten, falls sie die Information für wichtig halten. Er ist ein Tsunami mit dem Namen Gruber. Seien sie jedoch auf der Hut.")

		ANSWER("WEITER",7)
	NODE(7)
		SAY("In den Wastelands herrscht keine Ordnung. Bleiben sie nicht zu lange dort draussen, sonst fangen sie sich womöglich eine Mutation ein. Falls sie etwas herausfinden, melden sie es wieder mir.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(200)
		ENDDIALOG()
	NODE(8)
		SAY("Es ist ihre Wahl, falls sie sich noch einmal anders entscheiden, kommen sie einfach noch einmal wieder.")
		ENDDIALOG()

	NODE()


-----------------------------------------------------
--Zakashi

	NODE(50)
		SAY("Kommen sie näher. Ich werde mich nicht wiederholen, falls sie mich nicht verstehen können. Sie kommen von wem?")

		ANSWER("Ich komme von Tangent. Sie sollen Informationen darüber haben, wie weit BioTech mit der Entwicklung ihrer neuen Strahlenwaffe ist.",51)
	NODE(51)
		SAY("Ich? Ich soll solche Informationen haben? Machen sie sich nicht lächerlich. Ich habe lediglich Informationen darüber, wer euch weiterhelfen könnte. Aber ich bin mir nicht sicher, ob ihr das wirklich wissen wollt.")

		ANSWER("Warum? Deswegen bin ich doch extra diesen weiten Weg in die Wastelands gekommen.",52)
	NODE(52)
		SAY("Euch ist hoffentlich bewusst, dass ich zu den Tsunamis gehöre?")

		ANSWER("Ja, das ist mir schon bekannt. Nennt mir endlich diese Person, von der ihr spracht. Dann kann ich endlich aus dieser Todeszone heraus.",53)
	NODE(53)
		SAY("Versucht doch mal diesen verrückten Kev Critter bei dem Blakkmist Garbage Dump. Aber wo wir gerade von Todeszone sprechen.")

		ANSWER("WEITER",54)
	NODE(54)
		SAY("BioTech hat sich schon gedacht, dass es zu viele Schnüffler gibt. Schnüffler, die man aufhalten muss. Deswegen haben sie mich auch bezahlt, um solche Schnüffler umzulegen. ")

		ANSWER("Moment, was soll das heissen? Sie wurden angeheuert um Schnüffler aus dem Verkehr zu ziehen?",55)
	NODE(55)
		SAY("Ganz richtig. Und zwar solche Schnüffler wie sie.")

		ANSWER("Ich bin mir sicher wir könnten diese Sache auch friedlich regeln.",56)
	NODE(56)
		SAY("Es tut mir leid, aber ich bin immer loyal zu dem Auftraggeber. Deswegen werde ich sie jetzt töten.")

		ANSWER("Aber...",57)
	NODE(57)
		SAY("Zu spät...")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(58)
		ATTACK()
		ENDDIALOG()
	NODE(58)
		SAY("Es wird nur einer von hier fortgehen.")
		ATTACK()
		ENDDIALOG()


-----------------------------------------------------
--Kev Critter

	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Ich sehe so viele Sterne... so viele Sterne...  Seht ihr sie auch?")
			ENDDIALOG()
		else
			SAY("Huh? Seh ich schon Gespenster?")

			ANSWER("Ich kann euch versichern, ich bin äusserst real und nicht besonders gut drauf.",101)
		end
	NODE(101)
		SAY("Ach... ich... weiss nicht, kenne ich euch? Der Himmel ist so seltsam... ")

		ANSWER("Ihr seid ja total zugekifft. Bah, so kann ich doch nicht vernünftig mit euch reden.",102)
	NODE(102)
		SAY("Was? Ja, ich kann reden... aber über was? Hihihiii. Schnell, bringt mir etwas von diesem synthetic Powerbooze Gold. Der bringt mich meistens wieder ... runter.")

		ANSWER("Mann, sonst noch Wünsche? Aber was für eine Wahl bleibt einem da schon?",103)
	NODE(103)
		SAY("Es ist alles soo verwirrend...")
		SETNEXTDIALOGSTATE(104)
		ENDDIALOG()

--Spieler besorgt Powerbooze Gold 804
		
	NODE(104)
		TAKEITEM(804)
		if(result==0)then
			SAY("Bringt mir doch endlich so ein Powerbooze Gold.")
			ENDDIALOG()
		else

			SAY("Ahhh... das ist schon besser... diese Droge war echt nichts. Ich glaub ich hab mir ein paar zu viele Hirnzellen bei dem Rausch verbrannt.")

			ANSWER("Das glaube ich aber auch. Spinnt ihr, euch so zuzuknallen?",105)
		end
	NODE(105)
		SAY("Ihr habt leicht reden... In der Stadt ist es warm, jeder hat eine schmucke Wohnung und ihr schert euch einen Dreck um die Leute in den Wastelands.")

		ANSWER("So kann man das nicht sagen...",106)
	NODE(106)
		SAY("Schaut euch um und zählt die Zahl der verlassenen Dörfer... alle von Mutanten oder ähnlichem geplättet.")

		ANSWER("WEITER",107)
	NODE(107)
		SAY("Und die Bürger von Neocron sitzen auf ihren Händen und kippen sich ein PowerBooze nach dem anderen rein. Würd ich ja auch gerne machen, wenn ich nicht diesen Job hätte.")

		ANSWER("Gut, mir reichts auch bald. Dann haben wir ja etwas gemeinsam.  Man hat schon versucht mich heute aus dem Weg zu räumen, nur weil ich etwas über BioTech herausfinden wollte. Das geht ganz schön auf die Nerven.",108)
	NODE(108)
		SAY("Ja, heutzutage hütet jede Fraktion ihre Geheimnisse mit allen Mitteln. Wollt ihr euch bei mir ausheulen, oder habt ihr auch was produktives zu sagen?")

		ANSWER("Ich lass mich doch nicht blöde anmachen, ich kann auch anders. Sagen sie mir wie es mit der Entwicklung der neuartigen Strahlenwaffe bei BioTech aussieht!",109)
	NODE(109)
		SAY("Mit so einem Tonfall bekommen sie von mir höchstens einen Tritt. Lassen sie sich was besseres einfallen...")

		ANSWER("...na gut ... ich wollte mich eh nicht so aufregen. Haben sie womöglichst die Güte, mir etwas mitzuteilen? Ich möchte gerne etwas über die Entwicklung der neuen BioTech Strahlenwaffe in Erfahrung bringen.",110)
	NODE(110)
		SAY("Na also, war doch gar nicht so schwer... au, mein Kopf dröhnt immer noch... Also, ich kenne nur einen einzigen Mitarbeiter von BioTech. Hab keine Ahnung ob er euch helfen würde... versucht es einfach mal... Sein Name ist Benjamin. Ihr könnt ihn im Industrial Sektor 02 finden. Er sagt immer, dass wäre seine Welt.")
		SETNEXTDIALOGSTATE(111)
		ACTIVATEDIALOGTRIGGER(1)
		ENDDIALOG()
		
	NODE(111)
		SAY("Fragen sie Benjamin im Industrial Sektor 02, ich will nichts damit zu tun haben.")
		ENDDIALOG()


-----------------------------------------------------
--Benjamin Kain

	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Hauen sie ab, lassen sie mich in Ruhe.")
			ENDDIALOG()
		else
			SAY("Ja, was?")

			ANSWER("Arbeiten sie für BioTech? Ich habe nämlich so etwas gehört...",151)
		end
	NODE(151)
		SAY("Kommen sie vielleicht endlich mal auf den Punkt?!")

		ANSWER("Ich hätte gerne etwas in Erfahrung gebracht, aber ich brauche dafür eure Hilfe.",152)
	NODE(152)
		SAY("Sehe ich aus, als würde es mir Spass machen son paar Passanten Fragen zu beantworten?")

		ANSWER("Ich kann ihnen auch eine Entschädigung für den ganzen Aufwand geben, den sie hier offensichtlich betreiben müssen.",153)
	NODE(153)
		SAY("Credits? Sie meinen Credits, richtig? Na, vielleicht fällt mir ja etwas brauchbares ein. Kann aber ne Stange Geld kosten.")

		ANSWER("Na, das klingt doch schon viel besser. Wissen sie etwas von der Neuentwicklung einer Strahlenwaffe? BioTech sollte schon recht viel Arbeit in das Projekt investiert haben.",154)
	NODE(154)
		SAY("Lustig, dass sie fragen. Ich weiss darüber und ich kann auch noch mehr bieten. Für den richtigen Preis. Ich habe einen Blueprint dieser Strahlenwaffe sicher hier in meiner Tasche.")

		ANSWER("Wirklich? Das ist ein ausserordentlich glücklicher Zufall! Wieviel wollen sie dafür?",155)
	NODE(155)
		SAY("Ich finde BioTech sollte sich auf die Projekte konzentrieren, die schon immer dort gemacht worden sind. Und das sind nicht Waffen sondern Implantate.")

		ANSWER("WEITER",156)
	NODE(156)
		SAY("Deshalb mache ich ihnen einen speziellen Preis. Aber jetzt noch nicht, das würde zuviel aufsehen erregen. Momentan kann ich nur Informationen über den Status des Projekts anbieten.")

		ANSWER("Das ist genau das, was ich brauche.",157)
	NODE(157)
		SAY("Für nur 15000 gehören diese Infos ihnen. ")

		ANSWER("Ich kann ihnen 10000 anbieten. Mehr ist von meinen Auftraggebern her nicht möglich.",158)
	NODE(158)
		SAY("Nun gut, wenn es sein muss. Der Status in der Entwicklung einer Strahlenwaffe ist schon recht weit gediehen. Eine komplexe Methode zur Strahlenbündelung wurde schon gefunden und befindet sich in der beta Testphase.")

		ANSWER("WEITER",159)
	NODE(159)
		SAY("Im Moment gibt es noch Probleme mit der Größe des Emitters. Den könnten nicht mal drei Leute zusammen heben. Die CityAdmin hat debei ganz spezielle Vorgaben gemacht, die einzuhalten sind. Die Stärke der Waffe liegt ungefähr 15 Prozent höher als bei handelsüblichen High Tech Waffen.")

		ANSWER("Gut, ich finde, dass ist höchst aufschlussreich, danke. Ich werde sie womöglich nochmal wegen diesem Blueprint kontaktieren.",160)
	NODE(160)
		SAY("Tun sie das. Ich garantiere aber nicht, dass ich den Blueprint dann immer noch habe.")
		SETNEXTDIALOGSTATE(161)
		ACTIVATEDIALOGTRIGGER(2)
		ENDDIALOG()
		
	NODE(161)
		SAY("Wenn sie nicht an dem Blueprint interessiert sind, dann möchte ich auch gar nicht weiter mit ihnen reden.")
		ENDDIALOG()
		
-----------------------------------------------------
--Human Resource Director

	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Haben sie immer noch nichts zu berichten? Der Kontaktmann befindet sich in der Catlock Bay.")
			ENDDIALOG()
		else
			SAY("Was haben sie herausgefunden?")

			ANSWER("Es war schon fast eine Odyssee. Ich musste die ganzen Wastelands durchqueren um jemanden zu finden, der Informationen hatte.",201)
		end
	NODE(201)
		SAY("Es wurde ja nicht behauptet, dass es einfach wäre, solche Informationen zu beschaffen. Aber es scheint ihnen doch gelungen zu sein, habe ich recht?")

		ANSWER("Ja, ich weiss nun, dass BioTech ihre Strahlenwaffe schon auf die Durchschlagskraft hin testet. Jedoch scheinen sie noch Probleme mit der Grösse der Waffe zu haben. ",202)
	NODE(202)
		SAY("Sehr interessant. Ihre Aussage deckt sich mit denen von unseren anderen Runnern. Das bedeutet, dass diese Information wohl als richtig gewertet werden kann.")

		ANSWER("Ich habe mir schon gedacht, dass andere Runner denselben Auftrag bekommen. Aber so viele Runner loszuschicken, ist doch ein Riesenaufwand. ",203)
	NODE(203)
		SAY("Das schon. Wir können vorher aber nur sehr ungenau einschätzen, ob die Runner Erfolg haben werden oder nicht. Sie haben ihre Sache auf jeden Fall sehr gut gemacht.")

		ANSWER("Warten sie! Der Kontaktmann hatte auch noch einen Blueprint von der BioTech Strahlenwaffe gehabt.",204)
	NODE(204)
		SAY("... Wenn das wahr ist, müssen wir uns natürlich darum kümmern. Sie können sich erst einmal eine Pause gönnen.")

		ANSWER("WEITER",205)
	NODE(205)
		GIVEMONEY(5000)
		SAY("Es wird eine entsprechende Zeit dauern, bis wir alle Informationen ausgewertet haben. Erst dann können wir unsere nächsten Aktionen planen. Für ihre Dienste überweist ihnen Tangent Technologies 5000 Credits.")
		EPICRUNFINISHED(4,2)
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()
	
end