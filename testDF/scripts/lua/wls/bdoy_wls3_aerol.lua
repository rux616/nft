--************************
--name   : bdoy_wls3_aerol.lua
--ver    : 1.6
--author : Ferron
--date   : 2004/Aug/22
--lang   : en
--desc	 : Scenario "Herbal Hunt DOY Aerol"
--npc    : Aerol: 4214, Plants: 4230,4231,4232,4233
--************************
--changelog:
--2004/11/01(1.6): logic rework(Ferron)
--2004/09/07(1.5): update of header and plant id change, Ferron
--		   script brought to same update like gforsyte 
--2004/08/22(0.0): written
--************************

--mission id

missionid1 = 3801
missionid2 = 3807

-- ids of chems to be brought

-- Auxin,Mesophyll,Cytokinin,Raw Proteine

chem0_id = 11007
chem1_id = 11011
chem2_id = 11012
chem3_id = 11014

-- Abscisinacid,Gibberellin,Petiolus,Ethylen

chem4_id = 11010
chem5_id = 11008
chem6_id = 11013
chem7_id = 11009


-- ids of reward items
-- Iceflash, Iceflash Big Pack

reward1_id = 11015
reward2_id = 11016


--##########################

function DIALOG()


NODE(0)
   if (node==state) then
		
	-- anti city id is wanted
	DOYALIGNMENT()
		if (result == 1) then
			
			SAY("What do you want? Iceflash is out right now.")
			ANSWER("Oh no exactly this i need! ", 1)
			ANSWER("Iceflash? Never heard about it", 5)
			ANSWER("Shut up and dont bug me!", 31)	
			
		else
			
			SAY("Fuck off reza scum...")
			ENDDIALOG()			
			
		end
   end

-- the normal discussion path
NODE(1) 
	SAY("As i said, it is OUT so keep off me.")
	ANSWER("Come on i need this!", 2)
	ANSWER("Maybe if I pay you more than enough?", 4)

NODE(2)
	SAY("An i do not have it, if you want to get me chems i would be able to produce it again!")
	ANSWER("Oh you can produce it ? What help do you need for it?", 3)
	
NODE(3)	
	SAY("In fact you will help me with getting me the chems i need for building my drugs.")
	ANSWER("Ok tell me what i have to do and i tell you if i will", 7)

NODE(4)
	SAY("You can only help me with getting me the chemicals dude, if you want to take the high risks of getting them from some remote locations.")
	ANSWER("Sure i will, what would i get and where can i find the chems?", 7)
	ANSWER("Oh there are risks? Hmm i am a simple customer so i think i am not good at this...", 32)
	
NODE(5)
	SAY("It is a rare drug which you can find only here in my stock. It is the strongest drug to boost your constitution level. If you get me the chems i need you maybe will get wellpaid. Tbh it is a high risk in getting these chems.")
	ANSWER("Sound nice lets try it.", 7)
	ANSWER("High risks are nothing for me.", 32)
	
NODE(7)
-- description hunt 1
	SAY("Soo ok then. You need to find some special plants and give me the harvested chems from them. You will need at least 2 of each to match all my needs. ")
	ANSWER("And what plants do you need ?", 8)

NODE(8)
	SAY("The plants are called: Herbalis Aurora Carnivoris, Herbalis Natura Carnivoris, Herbalis Agrimonia Carnivoris.")	
	ANSWER("Ok got it. Where can i find them?", 9)

NODE(9)
	SAY("The last guy found them somewhere in D 05, E 03 and  F 04 , wich plant where i cant tell you.")
	ANSWER("That is enough i will check myself, you told me 2 of each plants is needed at least?", 10)

NODE(10)
	SAY("Yes, 2 of each.")
	ANSWER("The payment?", 11)
	
NODE(11)
	SAY("The payment, yes. You will get a part of my drug production for your personal use or to sell it. It is as already said Iceflash.")
	ANSWER("Thats worth the journey. So i will definitely do it now", 20)



	
NODE(20)
	SAY("Ok then lets see what you will get me. Dont forget, at least 2 plants each!")
	-- start mission 1
	
	STARTMISSION(missionid1)
	SETNEXTDIALOGSTATE(21)	
	ENDDIALOG()

NODE(21)
   if (node == state) then
	
	ISMISSIONTARGETACCOMPLISHED(0) 
	target0 = result
	
	if (target0 == 1) then
		
		TAKEITEM(chem0_id)
		gotchem0 = result
		
		TAKEITEM(chem1_id)
		gotchem1 = result
		
		TAKEITEM(chem2_id)
		gotchem2 = result
		
		TAKEITEM(chem4_id)
		gotchem4 = result

		TAKEITEM(chem5_id)
		gotchem5 = result

		TAKEITEM(chem6_id)
		gotchem6 = result

				
		if (gotchem0 == 1 and gotchem1 == 1 and gotchem2 == 1 and gotchem4 == 1 and gotchem5 == 1 and gotchem6 == 1)  then
			-- killed all	
			-- and has chems in inv
			-- gives first reward
			
			GIVEITEM(reward1_id)
			ACTIVATEDIALOGTRIGGER(0)
			ACTIVATEDIALOGTRIGGER(1)
						
			SAY("Ok thank you. By the way do you want more ? I could extend my production by an extra refining chem, but would need it too from the wastelands. Do you want to get it for me?")
			
			-- start mission part 2
        		STARTMISSION(missionid2)
			
			ANSWER("Sure if it brings me more of the Iceflash.", 25)
			ANSWER("No thank you i had enough with the last i did for you", 24)
		
		else
			--give items he had back to him
			if (gotchem0 == 1) then
				GIVEITEM(chem0_id)
			end
			if (gotchem1 == 1) then
				GIVEITEM(chem1_id)
			end
			if (gotchem2 == 1) then
				GIVEITEM(chem2_id)
			end
			if (gotchem4 == 1) then
				GIVEITEM(chem4_id)
			end
			if (gotchem5 == 1) then
				GIVEITEM(chem5_id)
			end
			if (gotchem6 == 1) then
				GIVEITEM(chem6_id)
			end
					
		end
		-- all killed, but not all chems in inv  
		
		SAY("I need ALL chems not only parts, go and bring me all if you want some payment!")
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
	else
		SAY("You have not all done right now. Come back if you have all things i need.")
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
	end
   end
   
--it ends with the first mission
NODE(24)
	SAY("Ok never mind, come later if you want and do more hunting work for me.")
	ACTIVATEDIALOGTRIGGER(0)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
   
--mission part 2
NODE(25)
	
	SAY("Ok i need the ethylen from 2 Herbalis Melaleuca Carnivoris which can be found in I 02 . I would pay you a big pack of Iceflash if you bring me the ethylen.")
	ANSWER("Ok i will do it, i am already used with these plant killing and harvesting thing.", 26)
	ANSWER("Oh no thanks not again.", 41)
        
       	SETNEXTDIALOGSTATE(28)
	ENDDIALOG()

NODE(28)
   if (node == state) then
	
	ISMISSIONTARGETACCOMPLISHED(0) 
	target3 = result
	
	if (target3 == 1 ) then
		TAKEITEM(chem3_id)
		gotchem3 = result
		TAKEITEM(chem7_id)
		gotchem7 = result
				
		-- killed all
		
		if (gotchem3 == 1 and gotchem7 == 1) then
			-- and has chems in inv  2
			--gives second reward
			
			GIVEITEM(reward2_id)
			ACTIVATEDIALOGTRIGGER(0)
			ACTIVATEDIALOGTRIGGER(1)
						
			SAY("Ok, thx and bye.")
			ENDDIALOG()			
		else
			--give items he had back to him
			if (gotchem3 == 1) then
				GIVEITEM(chem3_id)
			end
			if (gotchem7 == 1) then
				GIVEITEM(chem7_id)
			end
		end
		-- all killed, but not all chems in inv 
		
		SAY("Where are the chems, i thought you wanted to bring me all?")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()
	else
		SAY("I need that chems, please dont bother me if you are not having the things i need.")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()
	end
   end

-- no answers mission part 1
NODE(30)
	SAY("Sorry sorry, you best dressed in town..")
	ANSWER("Hey do you want trouble?", 31)
	
NODE(31)
	SAY("Ok i am not saying anything more..")
	ENDDIALOG()

NODE(32)
	SAY("Then let me in peace and get off!")
	ENDDIALOG()

NODE(33)
	SAY("Bad, i would pay in good drugs... then have a nice day, i need to get a new employee.")
	ENDDIALOG()

-- no answers mission part 2	
NODE(40)
	SAY("ok if you dont want ...")
	ENDDIALOG()

NODE(41)
	SAY("ok never mind ...")
	ENDDIALOG()

end