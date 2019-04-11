--************************
--name   : bdoy_wls1_jurinetschajev.lua
--ver    : 2.10
--author : Ferron
--date   : 2004/09/07
--lang   : de
--desc	 : Missionscript for "The Juggernaut Crossbow"
--npc    : juri netchajev
--************************
--changelog:
--2004/11/04(2.10): put in checks for money in 1st trade, changed node 1 to node 0 to get rid of nextdialogstate(Ferron)
--		    removed the goal flags.Fixed wrong else clause in node 50 (fixes exploit).
--2004/10/13(2.09): fixed wrong item id in eng version "Internal Motion Sensors" 4050 (Farril)
--2004/10/12(2.08): changed the sec_goal_flag from 0 to 1 (Ferron)
--		    he asks now for at least 5 kills (line 322)
--2004/09/26(2.07): raised prices for all sell items above 30k (Ferron)
--2004/09/26(2.06): changed old trade items not existend anymore with some doy tunnel junk, 
--		    lesser money for the accomplishment 25k instead of 150k(Ferron)
--2004/09/26(2.05): header added(Ferron)
--************************

-- Basic Structure

-- Info:
-- NPC: Questgiver: NODE(0) - REWARDGIVER: NODE(50)
-- Description IDs 11102 / 11103

missionid1 = 3805



-- Definitions
-- *** Rewards
prim_goal_reward_credits = 25000 ;	-- 25k credits
prim_goal_reward_item = -1 ;		-- no item
sec_goal_reward_credits = 0 ;		-- no credits
sec_goal_reward_item = 11006 ; 		-- juggernaut crossbow pistol

-- *** ItemIDs

-- "Electronical Triggerdevice v 0.1.1"
-- "Subliminal Targeting v 0.2.5"
-- "Advanced Autonome Gyroscope System v 0.1.9"
-- "Tangent Weaponpart 9"
-- "Tangent Weaponpart 10"
-- "Construction Slotenhancer v1.5"

constpart01 = 11003 ;
constpart02 = 11004 ;
constpart03 = 11005 ;
constpart04 = 5209 ;
constpart05 = 5210 ;
constpart06 = 3632 ;

-- functions
-- *********

function CHECKPARTS(missionstatus)
	if (state==node) then
		itemshere = 0 ;
		itemshere2 = 0 ;
		resultpre = 0 ;
		
		--mission part 1
		if (missionstatus==1) then
			TAKEITEM(constpart01)
			itemshere = result
			TAKEITEM(constpart02)
			itemshere = (result*2) + itemshere
			TAKEITEM(constpart03)
			itemshere = (result*4) + itemshere
			
			if (itemshere == 7) then 
				result = 1
			else
				result = 0
				-- give him his items back if not all there
				if (itemshere == 1) then
					GIVEITEM(constpart01)
				elseif (itemshere == 2) then
					GIVEITEM(constpart02)
				elseif (itemshere == 3) then
					GIVEITEM(constpart01)
					GIVEItEM(constpart02)
				elseif (itemshere == 4) then
					GIVEITEM(constpart03)
				elseif (itemshere == 5) then
					GIVEITEM(constpart01)
					GIVEITEM(constpart03)
				elseif (itemshere == 6) then
					GIVEITEM(constpart02)
					GIVEITEM(constpart03)
				end
			end
			
		end
		
		-- mission part 2
		if (missionstatus==2) then
			TAKEITEMCNT(constpart04, 1)
			itemshere = result
			TAKEITEMCNT(constpart04, 1)
			itemshere2 = result
			
			TAKEITEMCNT(constpart05, 1)
			itemshere = (result*2) + itemshere
			TAKEITEMCNT(constpart05, 1)
			itemshere2 = (result*2) + itemshere2
			
			
			TAKEITEMCNT(constpart06, 1)
			itemshere = (result*4) + itemshere
			TAKEITEMCNT(constpart06, 1)
			itemshere2 = (result*4) + itemshere2

			if (itemshere == 7) then 
				resultpre = 1
			else
				result = 0
				-- give him his items back if not all there
				if (itemshere == 1) then
					GIVEITEM(constpart04)
				elseif (itemshere == 2) then
					GIVEITEM(constpart05)
				elseif (itemshere == 3) then
					GIVEITEM(constpart04)
					GIVEItEM(constpart05)
				elseif (itemshere == 4) then
					GIVEITEM(constpart06)
				elseif (itemshere == 5) then
					GIVEITEM(constpart04)
					GIVEITEM(constpart06)
				elseif (itemshere == 6) then
					GIVEITEM(constpart05)
					GIVEITEM(constpart06)
				end
			end
			
			--check for the second items 
			if (itemshere2 == 7) then 
				resultpre = 1 + resultpre
			else
				result = 0
				-- give him his items back if not all there
				if (itemshere2 == 1) then
					GIVEITEM(constpart04)
				elseif (itemshere2 == 2) then
					GIVEITEM(constpart05)
				elseif (itemshere2 == 3) then
					GIVEITEM(constpart04)
					GIVEItEM(constpart05)
				elseif (itemshere2 == 4) then
					GIVEITEM(constpart06)
				elseif (itemshere2 == 5) then
					GIVEITEM(constpart04)
					GIVEITEM(constpart06)
				elseif (itemshere2 == 6) then
					GIVEITEM(constpart05)
					GIVEITEM(constpart06)
				end
			end
				
			--check the back result
			if (resultpre == 2) then
				result = 1
			else
				result = 0
			end
		end
	end
end

function GIVEREWARD(which)
-- 0 = prim
-- 1 = sec reward
	if (state==node) then
		if (which==0) then
			if (prim_goal_reward_credits>0) then
				GIVEMONEY(prim_goal_reward_credits) ;
			end
			if (prim_goal_reward_item>-1) then
				GIVEITEM(prim_goal_reward_item) ;
			end
		elseif (which == 1) then
			if (sec_goal_reward_credits>0) then
				GIVEMONEY(sec_goal_reward_credits) ;
			end
			if (sec_goal_reward_item>-1) then
				GIVEITEM(sec_goal_reward_item) ;
			end
		end
	end
end

-- DIALOG
-- ******

function DIALOG()
	-- junk dealer bla bla
	NODE(0)
		SAY("Hallo Runner. Willkommen in meinem Techjunk Camp. Was möchtest du?")
		SETNEXTDIALOGSTATE(1)
		TRADE()
			
	NODE(1)	SAY("Hmm, schon wieder? Auf einer etwas privateren Liste habe ich noch ein paar ziemlich außergewöhnliche Gegenstände: \n ######## Internal Motion Sensors - 34.300nc ## Optical Identification Sensors - 32.499nc ## Mysterious Broken Implant - 33.900nc ## Discharged Power Supply - 32.199nc ## Broken Sensor Device - 39.100nc ## Damaged Processor Framework - 63.000nc ## electronical triggerdevice MK-33 - 31.300nc ## subliminal autotargeting device SX-1 - 43.999nc ## advanced autonome gyroscope system H-12 - 69.000nc ## third level barrel BX-3000 - 45.000nc \n ###########") 
		ANSWER("Gib mir die Internal Motion Sensors.", 2)
		ANSWER("Gib mir den Optical Identification Sensors.", 3)
		ANSWER("Gib mir den Mysterious Broken Implant.", 4)
		ANSWER("Gib mir den Discharged Power Supply.", 5)
		ANSWER("Gib mir das Broken Sensor Device.", 6)
		ANSWER("Gib mir das Damaged Processor Framework.", 7)
		ANSWER("Gib mir das electronical triggerdevice MK-33.", 8)
		ANSWER("Gib mir das subliminal autotargeting device SX-1.", 8)
		ANSWER("Gib mir das advanced autonome gyroscope system H-12.", 8)
		ANSWER("Gib mir den third level barrel BX-3000.", 9)
		ANSWER("Hm, nicht gerade günstig.", 10)
		ANSWER("Hmm, danke nichts. Aber Du hast eine schöne Auswahl.", 11)
		ANSWER("Einige Deiner Artikel sehe ich jetzt das erste mal. Wozu ist denn das Zeug?", 12)
	
	NODE(2)
		TAKEMONEY(34300)
		if (result==1) then
			GIVEITEM(4050)
			SAY("Hier ist es.")
			ENDDIALOG()
		else
			SAY("Verpiss dich und bring das nächste mal Geld mit!")
			ENDDIALOG()
		end
	
	NODE(3)
		TAKEMONEY(32499)
		if (result==1) then
			GIVEITEM(4053)
			SAY("Hier ist es.")
			ENDDIALOG()
		else
			SAY("Verpiss dich und bring das nächste mal Geld mit!")
			ENDDIALOG()
		end
		
	NODE(4)
		TAKEMONEY(33900)
		if (result==1) then
			GIVEITEM(4056)
			SAY("Hier ist es.")
			ENDDIALOG()
		else
			SAY("Verpiss dich und bring das nächste mal Geld mit!")
			ENDDIALOG()
		end
	
	NODE(5)
		TAKEMONEY(32199)
		if (result==1) then
			GIVEITEM(4059)
			SAY("Hier ist es.")
			ENDDIALOG()
		else
			SAY("Verpiss dich und bring das nächste mal Geld mit!")
			ENDDIALOG()
		end
	
	NODE(6)
		TAKEMONEY(39100)
		if (result==1) then
			GIVEITEM(4060)
			SAY("Hier ist es.")
			ENDDIALOG()
		else
			SAY("Verpiss dich und bring das nächste mal Geld mit!")
			ENDDIALOG()
		end
	
	NODE(7)
		TAKEMONEY(63000)
		if (result==1) then
			GIVEITEM(4061)
			SAY("Hier ist es.")
			ENDDIALOG()
		else
			SAY("Verpiss dich und bring das nächste mal Geld mit!")
			ENDDIALOG()
		end
	
	NODE(8)
		SAY("Hmm, sorry. Das hab' ich momentan nicht lagernd.")
		ANSWER("Hmm, das ist aber ziemlich schlecht. Eigentlich wollte ich es ja auch nur durch ein Research Tool jagen, um es zu analysieren, denn so ein Teil habe ich nirgends zuvor gesehen.", 11)
		ANSWER("Woher bekommst Du das Zeug?", 13)
		
	NODE(9)
		SAY("Keines lagernd, sorry. Vielleicht das nächste mal wieder.")
		ENDDIALOG()
	
	NODE(10)
		SAY("Ja, dafür ist es aber auch ein ganz besonderes Sortiment. Wenn Du Dir solche Teile ohnehin nicht leisten kannst, dann verschwende nicht weiter meine Zeit.")
		ENDDIALOG()
	
	NODE(11)
		SAY("Ja, ich bin auch sehr stolz darauf der Einzige weit und breit zu sein, der so etwas anbieten kann. Trotzdem gibt es manches, das ich nicht verkaufen kann.")
		ANSWER("Oh, warum das denn? Hast Du die Ware nicht oder darfst Du sie nicht verkaufen?", 17)
	
	NODE(12)
		SAY("Oh, die bekomme ich von Runnern aus der Gegend. Bei manchen weiß ich genau genommen, gar nicht wozu sie gut sind. Manchmal, wenn ich gerade das richtige Zeug hier habe, finde ich für manches Verwendung. Aber da hier niemand sonst, derartige Waren anbietet, kann ich sie zu meinem Preis verkaufen.")
		ANSWER("Und woher bekommst Du das Zeug jetzt genau?", 13)
	
	--path 1 of mission getting	
	NODE(13)
		SAY("Hmm, die gibt's nur an einem Ort, und der ist ein ausserordentlich gefährlicher Platz. Wenn Du Dich so sehr dafür interessierst, willst Du vielleicht einen Job annehmen?")
		ANSWER("Ahh, jetzt kommt's. Du willst wohl Dein Lager wieder auffüllen? Und ich muss dann das ganze Risiko tragen?", 14)
	
	NODE(14)
		SAY("Du bist ja ein ganz ein Schneller. Du liegst genau richtig, aber sei Dir versichert: Du wirst gut entlohnt werden. Ich denke mal für 25 Kilocredits wirst Du es Dir nicht zweimal überlegen.")
		ANSWER("Niemals. Das ist viel zu wenig.", 15)
		ANSWER("Hmm, hört sich gut an. Für solch eine Summe mach ich es.", 16)
	
	NODE(15)
		SAY("Dann verschwende nicht länger meine Zeit.")
		ENDDIALOG()
	
	NODE(16)
		SAY("Warte noch einen Moment - das wird ein ziemlich riskanter Job! Wo ich Dich hinschicke, wirst Du auf Warbots treffen ... größer als ein Titan Warbot, und wenn Du nicht wirklich ein perfekt ausgebildeter Kämpfer bist, wirst Du das nicht überleben.")
		ANSWER("Also dafür bin ich sicher geeignet, und ich habe genügend Kumpels die mir helfen können. Also erzähl schon weiter, was wir überhaupt tun müssen.", 45)
		ANSWER("Oh! Noch größer als ein Titan? So etwas gibt es? Ok, dann ist das Nichts für mich.", 15)
	
	
	--path 2 of mission getting
	NODE(17)
		SAY("Verboten?! Hier in den Wastelands ist NICHTS verboten! Nein, ich habe sie einfach nicht mehr auf Lager. Ausverkauft. Das könnte Deine Gelegenheit werden, schnelles Geld zu machen.")
		ANSWER("Hmm, vielleicht, aber ich bezweifle, dass ich gut bin im Müll sammeln.", 18)
		
	NODE(18)
		SAY("Hmm, was ich brauche, kann man nicht einfach vom Boden aufsammeln. Du wirst schon kämpfen müssen, um da heran zu kommen. Übrigens würde ich natürlich gut dafür bezahlen.")
		ANSWER("Kämpfen? Hmm, ein harter Kampf? Das hört sich gut an.", 19)
		
	NODE(19)
		SAY("Ja, ein harter Kampf - und gutes Geld. Du würdest gegen die größten Warbots antreten, die jemals auf der verbrannten Erde gewandert sind.")
		ANSWER("Ach was, Titans kenne ich doch. Die kommen nicht gegen mich an...", 20)
		ANSWER("Etwa noch größer als ein Titan?", 20)
		
	NODE(20)
		SAY("Hahaha! Die sind viel größer als jeder Titan und noch dazu mit wesentlich mächtigeren Waffen bestückt. Das wird der Kampf Deines Lebens!")
		ANSWER("Hmm, das hört sich dann schon wieder nach zuviel für mich an...", 21)
		ANSWER("Wow, DAS muss ich ausprobieren - und dazu werde ich auch noch bezahlt! Schieß los: Was genau muss ich für Dich erledigen, und wie viel lässt Du dafür springen?", 22)
	
	NODE(21)
		SAY("Halte mich nicht länger auf, wenn es Dir an Kampferfahrung mangelt - ich kann nur erfahrene Leute brauchen.")
		ENDDIALOG()
	
	NODE(22)
		SAY("Ok, es wird eine Herausforderung - überlege es Dir gut. Ich werde Dir 25 Kilocredits zahlen, wenn Du mir 1 electronical triggerdevice v 0.1.1 , 1 subliminal targeting v 0.2.5 and 1 advanced autonome gyroscope system v 0.1.9 bringst. Du solltest mindestens 5 der Biester umnieten damit da mal Ruhe ist.")
		ANSWER("Das hört sich gut an, warum nicht. Packen wir's an.",  45)
	
	
	
	
	
	
	
	
	
	
	
	--entrance description	
	NODE(45)	
		SAY("Die Warbots, die Du suchst, sind in den Ruinen der alten DOY Warbot Fabrik dort drüben. Der Eingang auf das Gelände ist aber versteckt. Sei gut vorbereitet, wenn Du dort eindringst - es ist sehr gefährlich.")
		ANSWER("Okokok, das hast Du jetzt schon zigmal gesagt! Ich mach es!!!", 49) 	
	
	
	
	--*** starting mission here/accept mission 
	NODE(49)
		SAY("Ich wünsche Dir viel Glück.")
		
		STARTMISSION(missionid1) ;
		SETNEXTDIALOGSTATE(50) ;
		ENDDIALOG() ;
		
	-- *** This is after he accepted everytime he returns
	NODE(50)
	if (state==node) then
		ISMISSIONTARGETACCOMPLISHED(0) ;
		if (result==1) then
			-- checking if he has the parts
			
			CHECKPARTS(1)
									
			if (result==1) then
				-- he has all 3 parts with him
				-- so he did the prim goal
				GIVEREWARD(0) ;
												
				SAY("Oh, wirlich schöne Gegenstände, die Du mir da mitgebracht hast. Danke. Bist Du vielleicht an Waffen interessiert - ganz besonderen Waffen?")
				
				ANSWER("Immer! Welche Art von Waffe meinst Du?", 52)
				ANSWER("Nö, danke, ich hab' genug Waffen.", 51)
								
			else
				-- he did not have the parts with him 
				SAY("Du hast nicht alle Teile, die ich Dir zu besorgen aufgetragen habe.")
				ENDDIALOG()
			end
		
		else
			--he has NOT done the first mission already
			SAY("Hmm alter du hast noch nicht die ganze Arbeit gemacht, geh und beende den job!")
			ANSWER("Nein i werds nicht machen, zu hart.", 51)
			ANSWER("Ok ok bin ja schon unterwegs....", 56)
								
		
		end
		
	end	
	-- no secondary mission
	NODE(51)
		ACTIVATEDIALOGTRIGGER(1)
		SAY("Ok, dann vielen Dank. Habe noch eine schöne Zeit.")
		ENDDIALOG()
	
	-- secondary mission description
	NODE(52)
		SAY("Ok, dann. Ich könnte Dir eine ganz besondere Pistole bauen, aber dafür brauche ich ein paar wichtige Einzelteile ... und gratis mache ich das sicher nicht.")
		
		ANSWER("Hmm, von welcher Pistole sprichst Du?", 53)
		ANSWER("Mann, für so was hab' ich jetzt keine Zeit...", 51)
	
	NODE(53)
		SAY("Ich meine die so genannte Juggernaut Crossbow pistol. Sie hat ein fest integriertes Zielfernrohr, das sie zu einer Pistole hoher Reichweite macht.") 
		ANSWER("Oh, das hört sich gut an. Das hätte ich gern, aber welche Teile brauchst Du dafür und wie viel wird es mich kosten?", 54)
		ANSWER("Hmm, an einer Pistole bin ich nicht interessiert.", 51)
	
	NODE(54)
		SAY("Ich nehme 2 Construction Slotenhancer v1.5 als Bezahlung and 2 Tangent Weaponpart 9 und 10, um Dir die Pistole zu bauen.")
		ANSWER("Oh, ist aber ein recht hoher Preis. Also ich hoffe die ist wirklich 2 Slotenhancer wert.",  55)
		ANSWER("Na das ist mir zu teuer...", 51) 
		
	NODE(55)
		SAY("Ich sag' Dir, das ist sie! Ich bin der EINZIGE der die baut - die sind richtig selten.")
		ANSWER("Ok, na dann hol' ich Dir was Du zum Bauen brauchst und als Bezahlung willst.", 100)
			
	NODE(56)
		SAY("Ok. Bewegung!")
		ENDDIALOG()	
		
		
	
			
		
	-- mission part 2 
	NODE(100)
		SAY("Ok, ich bin hier und warte schon.")
		
		SETNEXTDIALOGSTATE(101) ;
		ENDDIALOG();
		
	NODE(101)
		ISMISSIONTARGETACCOMPLISHED(1) ;
		if (result==0) then
			-- checking if he has the parts
			
			CHECKPARTS(2)
			if (result==1) then
				-- he has all 6 parts with him
				GIVEREWARD(1) ;
				ACTIVATEDIALOGTRIGGER(1) ;
								
				SAY("Danke sehr. Hier, Deine neue Pistole.")
				ENDDIALOG()
								
			else
				-- he did not have the parts with him 
				SAY("Du hast nicht alle Teile die ich brauche.")
				ENDDIALOG()
			end
		
		else
			SAY("Also ich hab' keinen Job mehr für Dich...")
			ENDDIALOG()					
		
		end
		
end

