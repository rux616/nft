--************************
--name   : SINGLE_AS_AB_01.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/14(0.1): recheck
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then
			SAY("Hey, Kumpel. Was liegt an?")
			SAY("Yo, Kumpel. Was zur Hoelle willst du von mir?")
			SAY("Hallo, Kumpel.Was kann ich fuer dich tun?")

			ANSWER("Ich bin wegen des Jobs hier. Wer ist mein Ziel?",2)
			ANSWER("Kumpel? Ich hab mich wohl in der Strasse geirrt. Tschuess",1)
			ANSWER("Kumpel? Ich hab dich wohl mit jemand verwechselt. Tschuess",1)

			else -- Female
			SAY("Hey, Kleine. Was liegt an?")
			SAY("Yo, Kleine. Was zur Hoelle willst du von mir?")
			SAY("Hallo, Kleine. Was kann ich fuer dich tun?")
			
			ANSWER("Ich bin wegen des Jobs hier. Wer ist mein Ziel?",2)
			ANSWER("Kleine? Ich hab mich wohl in der Strasse geirrt. Tschuess",1)
			ANSWER("Kleine? Ich hab dich wohl mit jemand verwechselt. Tschuess",1)
			end
	NODE(1)	
		SAY("Na schoen. Ich hoffe du findest allein zurueck.")
		SAY("Hat dir deine Mami nicht beigebracht, dass es unhoeflich ist, andere Leute zu belaestigen? Verpiss dich!")
		SAY("Dann verschwende nicht laenger meine Zeit, du Mutantenarsch!")
		SAY("Fuer so etwas habe ich keine Zeit, Pissnelke. Verschwinde!")
		ENDDIALOG()

	NODE(2)
		SAY("Ok, kommen wir zum Geschaeft.  Dein Ziel ist %NPC_NAME(1) der sich in %NPC_WORLD(1) aufhaelt. Komm wieder zu mir, wenn du fertig bist, damit ich dich bezahlen kann.")
		SAY("Kommen wir zum Geschaeft. Der Name des Ziels lautet %NPC_NAME(1) und es haelt sich in %NPC_WORLD(1) auf. Mach das Ziel alle und komm dann wegen der Bezahlung wieder hier her zurueck.")
		SAY("Keine Zeit zum Plaudern, was? Das gefaellt mir. Der Typ, den du erledigen sollst, heisst %NPC_NAME(1). Er haelt sich meist in %NPC_WORLD(1) auf. Sobald du das Ziel unter die Erde gebracht hast, kannst du dir dein Geld bei mir abholen.")
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Hast du dich auf dem Weg nach %NPC_WORLD(1) verlaufen? Wenn du deine %REWARD_MONEY() Credits haben willst, musst du erst diese Schmeissfliege erledigen. Na los!")
				SAY("Du hast %NPC_NAME(1) noch nicht erledigt, also was willst du hier? Mach das Ziel alle und du bekommst den Kies. Kapiert? Mach schon, ich will deinen Arsch nicht eher wiedersehen, bis die Schmeissfliege erledigt ist!")
				SAY("Willst du dich mit mir anlegen? Nein? Gut, dann geh und erledige den Job. Leg %NPC_NAME(1) um und hol dann dein Geld.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Sehr gut, Kumpel. Hier sind deine %REWARD_MONEY() Credits als Bezahlung. Sieht so aus, als verstuendest du deinen Job. Lass dich mal wieder blicken.")
						SAY("Das Ziel ist erledigt und du hast nichtmal Blut auf deinen Schuhen. Gute Arbeit! Egal, hier sind deine %REWARD_MONEY() Credits. Halte deine Augen nach weiteren Breed Jobs offen. Bis spaeter, Mann.")
						SAY("Hey, du bist mein Mann! Ist wohl besser, sich nicht mit dir anzulegen, was? Das Ziel ist tot und hier sind deine Credits. Halte deine Augen nach weiteren Breed Jobs offen. Bis spaeter, Mann.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Sehr gut, Kleine. Sieht so aus, als verstuendest du dein Handwerk. Hier sind deine %REWARD_MONEY() Credits als Bezahlung. Lass dich mal wieder blicken.")
						SAY("Das Ziel ist erledigt und du hast nichtmal Blut abbekommen. Gute Arbeit! Egal, hier sind deine %REWARD_MONEY() Credits. Halte deine Augen nach weiteren Breed Jobs offen. Bis später, Suesse.")
						SAY("Hey, du bist gut! Ist wohl besser, sich nicht mit dir anzulegen, was? Das Ziel ist tot und hier sind deine Credits. Halte deine Augen nach weiteren Breed Jobs offen. Bis spaeter, Suesse.")
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
end
	