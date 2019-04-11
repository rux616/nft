--************************
--name   : Research_Template
--ver    : 0.1
--author : Ferron
--date   : 2004/10/01
--lang   : en
--desc   : terminal research mission template
--npc    : 
--************************
--changelog:
--2004/10/01(0.1): Translated from en original.(Ferron)
--************************

function DIALOG()
	NODE(0)
		SAY("Hallo, wie kann ich dir helfen?")
		SAY("Ja, Runner? Hast du ein Problem?")
		SAY("Was? Ich bin sehr beschäftigt.")
		SAY("Was ist das Problem?") 
		SAY("Ja, Ich bin deiner.")
		SAY("Wasauchimmer du willst, sei schnell und sags.")
		SAY("Ich glaub nicht das ich dich kenne.")
		SAY("Du bist hier wegen dem Job, oder?")
		SAY("Ein produktiver Tag, Runner.")
		SAY("Wenn du ein problem hast frage.")
		
		ANSWER("Ja bin hier wegen diesem Job den du hast...",2)
		ANSWER("Ich glaub du hast ein Job für mich.",2)
		ANSWER("Hast du Arbeit für mich?",2)
		ANSWER("Ich bin hier für den Job.",2)
		ANSWER("Vergisses, bis Dann.",1)
		ANSWER("Ich wollte mit dir eigentlich sowieso nicht sprechen.",1)
		ANSWER("Ich wollte jemand Anderen sprechen.",1)
		ANSWER("Hab mich umentschieden, Servus.",1)
	NODE(1)
		SAY("Viel Glück bei ... wasauchimmer Du tust.")
		SAY("Schau später mal wieder vorbei.")
		SAY("Auf Wiedersehen, Ich habe wichtigere Dinge zu tun.")
		SAY("Auf Wiedersehen. Vielleicht bist du nächstes mal an einem Job interressiert.")
		ENDDIALOG()
	NODE(2)
		SAY("Wir haben viel Arbeit zu machen, deshalb brauchen wir Runner wie dich die uns Blueprints erzeugen können.")
		SAY("Es ist einfach zu viel Arbeit die wir zu machen haben. Wir brauchen einfach den Support einiger Runner die Blueprints erzeugen können.")
		SAY("Wir ertrinken in Arbeit und brauchen unbedingt bestimmte Blueprints weil wir sie nicht selber herstellen können.")
		
		ANSWER("Was für Blueprint Arten braucht ihr denn?",6)
		
	NODE(3)
		SAY("Tut mir leid aber du muss die fertigen Blueprints zu %NPC_NAME(1) liefern.")
		SAY("Ich hoffe du hast keine Probleme mit dem Job?")
		SAY("Arbeite weiter anstatt mich zu stören.")
		ENDDIALOG()
	NODE(4)
		--Zielperson, nimmt Blaupause
		if(node==state)then
			GETTARGETVALUE(0,2)
			TVal = result
			TAKESPECIALITEMCNT(1507,1,TVal,3) -- Take 3 Blueprints of the item
				if(result==0)then
					SAY("Diese Blueprint sind nicht besonders einfach herzustellen, ey ? Versuchs weiter.")
					SAY("Stell erst mal genug Blueprints her bevor du herkommst.")
					ENDDIALOG()
				else
					TAKEITEM(TVal) -- Take Original Item
						if(result==0)then
							GIVESPECIALITEM(1507,1,TVal) -- Give Back blueprints of item due to no original given
							GIVESPECIALITEM(1507,1,TVal)
							GIVESPECIALITEM(1507,1,TVal)
							SAY("I brauche das originial Item brauchen bevor ich diese Blueprints akzeptieren kann.")
							ENDDIALOG()
						else
							SAY("Nett, nun können wir unsere Verträge halten und unsere Kunden zur rechten Zeit beliefern. Hier sind deine %REWARD_MONEY() credits als Belohnung plus drei datacubes.")
							SAY("Gute Qualität, dachte nicht das du so fähig bist. Hier ist deine Bezahlung, %REWARD_MONEY() credits und weil die Qualität so gut war drei leere datacubes dazu.")
							SAY("Nicht schlecht und in der Zeit. %REWARD_MONEY() credits und drei datacubes sind deine Belohnung, richtig ? Hier sind sie, war mir ne Freude mit dir zu arbeiten.")
							GIVEITEM(1501) -- Datacube
							GIVEITEM(1501)
							GIVEITEM(1501)
							ACTIVATEDIALOGTRIGGER(1)
							ENDDIALOG()
						end
				end
		end
	NODE(5)
		if(node==state)then
			GETTARGETVALUE(0,2)
			GIVEITEM(result)
			SAY("Hier ist eine Kopie des originalen Items damit du daraus die Blueprints erzeugen kannst.\n Viel Glück.")
			ACTIVATEDIALOGTRIGGER(0)
			SETNEXTDIALOGSTATE(3)
			ENDDIALOG()
		end
	NODE(6)
		SAY("Wir sind in dringender Not und brauchen 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints. Es währe perfekt wenn diese Blueprints schnell da sind. Gib sie %NPC_NAME(1) in %NPC_WORLD(1).")
		SAY("Wir brauchen 3 %ITEMNAME(%TARGET_VALUE(0,2)) Blueprints so schnell wie möglich. Bring sie zu %NPC_NAME(1) in %NPC_WORLD(1).")
		
		ANSWER("Gut, ich starte sofort.",5)
end