--new
--CityMerc
--
--Trigger
--Triggernumber,Type,Person
--0,kill,50
--1,kill,100
--2,kill,150
--3,D,250
--
--Startnode, Person
--0, Soldat
--50, Frederick 1683
--100, Claudia 1685
--150, Erik 1684
--200, Soldat
--250, Marcel 1681
--
--Items
--Wein von Marcel ID:806

--Missionbase Eintrag
--NPC0	NPC1	NPC2	NPC3	TRG0	VAL01	VAL02	VAL03	TRG1	VAL01	VAL02	VAL03	TRG2	VAL01	VAL02	VAL03	TRG3	VAL01	VAL02	
--1683	1685	1684	1681	1		0		0		0		1		1		0		0		1		2		0		0		3		3		3
--START	START	START	START
--50	100 	150 	250
--

function DIALOG()
--------------------------------------------------------------------
--Soldat
--0
	
	NODE(0)
		SAY("Was willst du hier, Zivilist?")

		ANSWER("Ich habe mich entschieden den CityMercs beizutreten. Ich habe hart trainiert, damit ich die Rookie Prüfung ablegen kann.",1)
	NODE(1)
		SAY("So? Ich hoffe du hast dich gut im Umgang mit Waffen geübt, denn die Rookie Prüfung kannst du auf keinem anderen Weg ablegen. Sicher bist du schon gespannt, was von dir verlangt wird und ich will dich gar nicht lange auf die Folter spannen. ")

		ANSWER("Dann mal los. Ich bin bereit.",2)
		ANSWER("Ich trainiere lieber noch etwas.",3)
	NODE(2)
		SAY("Für die Rookie Prüfung musst du gegen drei Personen kämpfen, die wir für dich auswählen. Es hat einige Zeit gedauert, aber wir glauben, ein paar passende Gegner gefunden zu haben. Der erste Gegner ist Frederick, er ist auch ein Bewerber, wie du es bist. Um weiterzukommen musst du ihn oder einen der anderen besiegen. Dann gibt es noch Claudia und Erik. Wenn du die drei besiegst, bist du offiziell ein CityMerc Rookie. Komm wieder zu mir, wenn du die Prüfung bestanden hast. Ach ja, sie befinden sich übrigens im Sektor 2 der Basis.")
		STARTMISSION()
		SETNEXTDIALOGSTATE()
		ENDDIALOG()
		
	NODE(3)
		SAY("Entscheide dich besser vorher, was du willst.")
		ENDDIALOG()

	NODE(4)
		SAY("Du kannst die drei Gegner im Sektor 1 in einer der Lagerhallen finden. Komm danach wieder zu mir zurück.")
		ENDDIALOG()


--------------------------------------------------------------------
-- Frederick
--50
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Hallo, bist du auch wegen der Prüfung hier? Ich warte schon geschlagene zwei Tage auf einen gegen den ich kämpfen kann.")

			ANSWER("Warum willst du den CityMercs beitreten?",51)	
		else
			SAY("Was willst du noch, die Prüfung hast du doch bestanden.")
			ENDDIALOG()
		end
	NODE(51)
		SAY("Ach, mein Vater ist ein Black Ribbon der CityMercs und nun verlangt er, ich solle es ihm gleichtun. Bis jetzt habe ich diese Prüfung aber schon drei mal versucht und bin drei mal gescheitert. Aber genug geschwafelt, bist du bereit?")
		ENDDIALOG()
		SETNEXTDIALOGSTATE(52)
		
	NODE(52)
		SAY("Wenn du für den Kampf bereit bist, ich bin hier.")
		ENDDIALOG()

--------------------------------------------------------------------
--Claudia
--100
	NODE(100)
		ISMISSIONTARGETACCOMPLISHED(1)
		if(result==0)then
			SAY("Hey, Runner, viel Glück gegen mich. Ich kann mich noch gut an meine Prüfung erinnern und es war nicht leicht, sage ich dir.")

			ANSWER("Wer bist du?",101)	
		else
			SAY("Gratulation, hätte nicht gedacht, dass du es gegen mich schaffst.")
			ENDDIALOG()
		end
	NODE(101)
		SAY("Frag nicht so blöd, ich bin Claudia und immerhin bin ich schon Rookie. Also, bringen wir es hinter uns.")
		SETNEXTDIALOGSTATE(102)
		ENDDIALOG()
		
	NODE(102)
		SAY("Entscheide dich endlich.")
		ENDDIALOG()
--------------------------------------------------------------------
--Erik
--150
	NODE(150)
		ISMISSIONTARGETACCOMPLISHED(2)
		if(result==0)then
			SAY("Ich geb dir nen guten Rat, Claudia ist gar nicht so leicht zu besiegen. Ja, ja, ich weiss, sie ist ja nur eine Frau. Täusch dich nicht, die Tank Frauen sind den Männern in allen Beziehungen ebenbürtig. Also pass auf. Ich werde übrigens auch keine Rücksicht auf dich nehmen.")
			SETNEXTDIALOGSTATE(151)
			ENDDIALOG()
		else
			SAY("Das war gar nicht so schlecht. Vielleicht wird aus dir ja noch was..")
			ENDDIALOG()
		end
	NODE(151)
		SAY("Mach schon, such dir einen Gegner aus. Claudia, Frederick oder mich.")
		ENDDIALOG()


--------------------------------------------------------------------
--Soldat
--200
	NODE(200)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Du musst die Rookie Prüfung bestehen, um bei uns Karriere zu machen. Du kannst die drei Gegner im Sektor 2 in einer der Lagerhallen finden. Komm danach wieder zu mir zurück.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Du musst die Rookie Prüfung bestehen, um bei uns Karriere zu machen. Du kannst die drei Gegner im Sektor 2 in einer der Lagerhallen finden. Komm danach wieder zu mir zurück.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("Du musst die Rookie Prüfung bestehen, um bei uns Karriere zu machen. Du kannst die drei Gegner im Sektor 2 in einer der Lagerhallen finden. Komm danach wieder zu mir zurück.")
					ENDDIALOG()
				else
					SAY("Dann hast du es also geschafft, was? Wie fühlst du dich? Die Blessuren werden bald verschwinden und nun kannst du dich glücklich schätzen, einer von uns zu sein. ")

					ANSWER("Ich fühle mich geehrt. Was ist nun meine Aufgabe, werde ich sofort in den Kampf ziehen?",201)
				end
			end
		end
	NODE(201)
		SAY("Ha, das dauert leider noch eine Weile. Wir geben gut auf unsere Neulinge acht und bevor du einen White Ribbon trägst, wirst du erst mal ein paar Missionen lang nur zusehen. Aber jetzt kannst du erst einmal feiern. Der Platoon Führer Marcel möchte dir gerne persönlich gratulieren. Du kannst ihn im Sektor 2 der Military Base finden. Viel Glück weiterhin.")
		SETNEXTDIALOGSTATE(202)
		ENDDIALOG()
		
	NODE(202)
		SAY("Marcel im Military Base Sektor 2 möchte dir noch gratulieren. Er ist ein recht bekannter Platoon Führer und hat ziemlich viel Einfluss.")
		ENDDIALOG()

--------------------------------------------------------------------
--Marcel
--250
		
	NODE(250)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("Du bist sicher bald schon ein CityMerc, so wie ich dich einschätze. Du musst nur noch die Rookie Prüfung bestehen.")
			ENDDIALOG()
		else
			ISMISSIONTARGETACCOMPLISHED(1)
			if(result==0)then
				SAY("Du bist sicher bald schon ein CityMerc, so wie ich dich einschätze. Du musst nur noch die Rookie Prüfung bestehen.")
				ENDDIALOG()
			else
				ISMISSIONTARGETACCOMPLISHED(2)
				if(result==0)then
					SAY("Du bist sicher bald schon ein CityMerc, so wie ich dich einschätze. Du musst nur noch die Rookie Prüfung bestehen.")
					ENDDIALOG()
				else
					SAY("Ich habe mir von Erik erzählen lassen, wie du deine Prüfung gemeistert hast. Du hast es geschafft und bist nun einer von uns. Aber bilde dir nicht ein, du könntest es nun mit der ganzen Welt aufnehmen. Du musst noch viel lernen. Aber lass dich von mir nicht entmutigen, ich würde dich gerne in meinem Platoon sehen, wenn du so weit bist.")

					ANSWER("Mir wurde gesagt, ich müsste erst noch ein White Ribbon bekommen.",251)
				end
			end
		end
	NODE(251)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEITEM(806)
		GIVEMONEY(4000)
		SAY("Ja, das ist richtig. Übrigens, mein Platoon hat ein bischen zusammengelegt und wir haben ein paar Flaschen Wein organisieren können. Sieh es als Einstands Geschenk. Aber sieh zu, dass du den Mercs keine Schande machst. Trainiere hart und ich bin sicher es wird bald wieder etwas für dich zu tun geben. Hier auch dein erster Sold, 4000 Credits. (nächste Mission ab Level 30)")
		EPICRUNFINISHED(11,1)	
		ACTIVATEDIALOGTRIGGER(3)
		ENDDIALOG()

end