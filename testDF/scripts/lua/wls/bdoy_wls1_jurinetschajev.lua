--************************
--name   : bdoy_wls1_jurinetschajev.lua
--ver    : 2.10
--author : Ferron
--date   : 2004/09/07
--lang   : en
--desc	 : Missionscript for "The Juggernaut Crossbow"
--npc    : juri netchajev
--************************
--changelog:
--2004/11/04(2.10): put in checks for money in 1st trade, changed node 1 to node 0 to get rid of nextdialogstate(Ferron)
--		    removed the goal flags. Fixed wrong else clause in node 50 (fixes exploit).
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
		SAY("Hello runner welcome to my techjunk camp.")
		SETNEXTDIALOGSTATE(1)
		TRADE()
	
	NODE(1)	SAY("Hmm again? I have some not so common things on a more private list: \n ######## Internal Motion Sensors - 34300nc ## Optical Identification Sensors - 32499nc ## Mysterious Broken Implant - 33900nc ## Discharged Power Supply - 32199nc ## Broken Sensor Device - 39100nc ## Damaged Processor Framework - 63000nc ## electronical triggerdevice MK-33 - 31300nc ## subliminal autotargeting device SX-1 - 43999nc ## advanced autonome gyroscope system H-12 - 69000nc ## third level barrel BX-3000 - 45000nc \n ###########") 
		ANSWER("Give me Internal Motion Sensors", 2)
		ANSWER("Give me Optical Identification Sensors", 3)
		ANSWER("Give me Mysterious Broken Implant", 4)
		ANSWER("Give me Discharged Power Supply", 5)
		ANSWER("Give me Broken Sensor Device", 6)
		ANSWER("Give me Damaged Processor Framework", 7)
		ANSWER("Give me electronical triggerdevice MK-33", 8)
		ANSWER("Give me subliminal autotargeting device SX-1", 8)
		ANSWER("Give me advanced autonome gyroscope system H-12", 8)
		ANSWER("Give me third level barrel BX-3000", 9)
		ANSWER("Hmm not very cheap", 10)
		ANSWER("Hmm nothing .... thank you, nice things you have here.", 11)
		ANSWER("Some things i have never seen anywhere than in your list. What are these things for?", 12)
	
	NODE(2)
		TAKEMONEY(34300)
		if (result==1) then
			GIVEITEM(4050)
			SAY("Here it is.")
			ENDDIALOG()
		else
			SAY("Get off and get some money first!")
			ENDDIALOG()
		end
	
	NODE(3)
		TAKEMONEY(32499)
		if (result==1) then
			GIVEITEM(4053)
			SAY("Here it is.")
			ENDDIALOG()
		else
			SAY("Get off and get some money first!")
			ENDDIALOG()
		end
		
	NODE(4)
		TAKEMONEY(33900)
		if (result==1) then
			GIVEITEM(4056)
			SAY("Here it is.")
			ENDDIALOG()
		else
			SAY("Get off and get some money first!")
			ENDDIALOG()
		end
	
	NODE(5)
		TAKEMONEY(32199)
		if (result==1) then
			GIVEITEM(4059)
			SAY("Here it is.")
			ENDDIALOG()
		else
			SAY("Get off and get some money first!")
			ENDDIALOG()
		end
	
	NODE(6)
		TAKEMONEY(39100)
		if (result==1) then
			GIVEITEM(4060)
			SAY("Here it is.")
			ENDDIALOG()
		else
			SAY("Get off and get some money first!")
			ENDDIALOG()
		end
	
	NODE(7)
		TAKEMONEY(63000)
		if (result==1) then
			GIVEITEM(4061)
			SAY("Here it is.")
			ENDDIALOG()
		else
			SAY("Get off and get some money first!")
			ENDDIALOG()
		end
	
	NODE(8)
		SAY("Hmm sorry i dont have one in stock.")
		ANSWER("Hmm not very bad, just wanted one to analyze it cos i never saw such part anywhere than here.", 11)
		ANSWER("Where do you get such things?", 13)
		
	NODE(9)
		SAY("None in stock sorry, maybe next time.")
		ENDDIALOG()
	
	NODE(10)
		SAY("Yes but also special, if you dont have the money do not waste my time.")
		ENDDIALOG()
	
	NODE(11)
		SAY("Yes i am also very proud of beeing the one and only in the sectors around selling these. But still there are some things i cant sell now.")
		ANSWER("Oh why ? Do you not have them or are you not allowed to sell them?", 17)
	
	NODE(12)
		SAY("Oh these i get from some runners around here, dont really know what exactly they can do. Sometimes if i have the right things here i can use them. But since noone else has them i sell them at my price.")
		ANSWER("And from where do you get the things.", 13)
	
	--path 1 of mission getting	
	NODE(13)
		SAY("Hmm these are only from one place, and this place is very dangerous. If you want to go there maybe you are you interested in a job?")
		ANSWER("Ahh here it comes, you want to fill up your stock? An i have to take the risk?", 14)
	
	NODE(14)
		SAY("You are a fast thinker. And you are right, but you will get wellpaid for it. I think for 25 grand you would do it.")
		ANSWER("No way to low.", 15)
		ANSWER("Hmm sounds good. Ok i do it for such a sum.", 16)
	
	NODE(15)
		SAY("Then do not waste my time.")
		ENDDIALOG()
	
	NODE(16)
		SAY("Wait wait, the thing is very risky ! You will encounter very very dangerous things like warbots bigger than a Titan there and if you are not good you will loose your life.")
		ANSWER("I am good enough and have also very good mates who help me so tell me what to do.", 45)
		ANSWER("Oh! Bigger than a Titan? These exist? Ok nothing for me then.", 15)
	
	
	--path 2 of mission getting
	NODE(17)
		SAY("Not allowed! Here in the wastelands EVERTHING is allowed, no i simply dont have them in stock, sold out of these. Maybe a job opportunity for you if you wish?")
		ANSWER("Hmm maybe it is one,  but i think i am not a good junk searcher.", 18)
		
	NODE(18)
		SAY("Hmm the things i need cant be found on the ground. You will need to do some hard fighting to get them. By the way i would pay good for them.")
		ANSWER("Hard fighting, hmm that sounds nice.", 19)
		
	NODE(19)
		SAY("Yes hard fight - good payment. You would engage the biggest warbots ever seen on this scorched world.")
		ANSWER("I know the Titans, not a challenge for me...", 20)
		ANSWER("Bigger than a Titan ?", 20)
		
	NODE(20)
		SAY("Hahaha they are way bigger than a Titan and also have more powerful weapons. You would have a real hard fight.")
		ANSWER("Hmm this would be to much for me..", 21)
		ANSWER("Wow i NEED to try them AND get paid, tell me what i have to do for you and how much you would pay.", 22)
	
	NODE(21)
		SAY("Then dont bother me if you dont have the right combat experience, need good fighters.")
		ENDDIALOG()
	
	NODE(22)
		SAY("Ok it will be very hard so think good about it. I would pay 25 grand if you get me 1 electronical triggerdevice v 0.1.1 , 1 subliminal targeting v 0.2.5 and 1 advanced autonome gyroscope system v 0.1.9. Kill at least 5 of them to make the area clear there.")
		ANSWER("Sounds nice ok why not. Lets do it.",  45)
	
	
	
	
	
	
	
	
	
	
	
	--entrance description	
	NODE(45)	
		SAY("The warbots you need to find are in the old DOY warbot facility in the ruins over there. The entrance is hidden. Be well prepared when you enter it it is very dangerous.")
		ANSWER("Okokok you said this so often! I will do it !!", 49) 	
	
	
	
	--*** starting mission here/accept mission 
	NODE(49)
		SAY("I whish you luck.")
				
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
												
				SAY("Oh very very nice parts you brought me. Thank you. Are you maybe interested in a special weapons?")
				
				ANSWER("Yes sure i am, what weapon do you mean?", 52)
				ANSWER("No thanks, i have enough weapons.", 51)
								
			else
				-- he did not have the parts with him 
				SAY("You dont have all parts i need.")
				ENDDIALOG()
			end
		
		else
			--he has NOT done the first mission already
			SAY("Hmm dude you did no all the work right now, go and finish the job!")
			ANSWER("No i wont, too hard.", 51)
			ANSWER("Ok ok i am on my way....", 56)
								
		
		end
		
	end	
	-- no secondary mission
	NODE(51)
		ACTIVATEDIALOGTRIGGER(1)
		SAY("Ok then, thank you a lot, have a nice time")
		ENDDIALOG()
	
	-- secondary mission description
	NODE(52)
		SAY("Ok then. I can build a special pistol for you but would need some parts and payment.")
		
		ANSWER("Hmm what pistol would it be ?", 53)
		ANSWER("Hmm have no time right now dude...", 51)
	
	NODE(53)
		SAY("It is the so called Juggernaut Crossbow pistol. It has builtin scope system and is a longrange shooting pistol.") 
		ANSWER("Oh sounds really nice, i will want to have it, what parts do you need and what payment?", 54)
		ANSWER("Hmm i am not interested in a  pistol.", 51)
	
	NODE(54)
		SAY("I would need 2 Construction Slotenhancer v1.5 as payment and 2 of  Tangent Weaponpart 9 and 10 to build the pistol for you.")
		ANSWER("Oh seems this is a lot of payment, i hope the pistol is worth 2 slotenhancers.",  55)
		ANSWER("Too much for me...", 51) 
		
	NODE(55)
		SAY("It is i can tell you, i am the only one building them and they are really rare.")
		ANSWER("Ok then i will get you the needed things and the payment.", 100)
			
	NODE(56)
		SAY("Ok. Move!")
		ENDDIALOG()
			
	
			
		
	-- mission part 2 
	NODE(100)
		SAY("Ok, i am here and waiting.")
		
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
								
				SAY("Thank you. Here your pistol.")
				ENDDIALOG()
								
			else
				-- he did not have the parts with him 
				SAY("You dont have all parts i need.")
				ENDDIALOG()
			end
		
		else
			SAY("No jobs for you left...")
			ENDDIALOG()					
		
		end
		
end

