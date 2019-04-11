--************************
--name   : bdoy_wls3_gforsyte.lua
--ver    : 1.6
--author : Ferron
--date   : 2004/Aug/22
--lang   : en
--desc	 : Scenario "Herbal Hunt NC Gerald Forsyte"
--npc    : Gerald Forsyte: 4213, Plants: 4230,4231,4232,4233
--************************
--changelog:
--2004/11/01(1.6): logic rework(Ferron)
--2004/09/07(1.5): update of header and plant id change, Ferron
--
--2004/08/22(0.0): written
--************************

--mission id

missionid1 = 3800
missionid2 = 3806

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
-- Amphidextrine, Amphidextrine Big Pack

reward1_id = 11017
reward2_id = 11018


--##########################

function DIALOG()


NODE(0)
   if (node==state) then
		
	-- pro city id is wanted
	DOYALIGNMENT()
		if (result == -1) then
			
			GETFACTIONSYMPATHY(6)
			pp_symp = result 
			
			if (pp_symp > 50) then
				SAY("Hmpff a PP affiliate, what do you want from me?")
				SAY("Wow, did not see you since i left ProtoPharm")
				ANSWER("Guess what? Wanted to know what happened to one of our best assistants. You seem to be very well after fired by PP. What was it ? Drugs made by you from PP stock chems? Seems that your doing them now from your own stock.", 15)
				ANSWER("I don't want anything, just wondered what you are doing here...", 32)
			end 
			
			SAY("Hello, how can i help you?")
			ANSWER("Hmm i dont know i thought you need help?", 1)
			ANSWER("Shut up and dont bug me!", 31)	
			
		else
			
			SAY("Fuck off doy scum...")
			ENDDIALOG()			
			
		end
   end

-- the normal discussion path
NODE(1) 
	SAY("Ah you are searching some work i suppose? ")
	ANSWER("Yes i am, what do you do and what can i do for you? ", 2)
	ANSWER("Maybe if you pay me enough? ", 4)

NODE(2)
	SAY("I make some special, lets say chemical enhancers.. I quitted ProtoPharm and started my own business since real good stuff cant be done in such a narrow-minded company. ")
	ANSWER("Ok and you need some people to help you build the chems? ", 3)
	ANSWER("So you want me to get you some chems for your drug production or what? ", 4)

NODE(3)	
	SAY("In fact you will help me by getting me the chems i need for building my .. ermmm .. enhancers. ")
	ANSWER("Ok tell me what i have to do and i tell you if i will. ", 7)

NODE(4)
	SAY("Hey thats the right man for me , you seem to get it faster than others. ")
	ANSWER("Thanks, so come on tell me what i have to do and what i get? ", 7)
	
NODE(7)
-- description hunt 1
	SAY("Soo ok then. You need to find some special plants and give me the harvested chems from them. You will need at least 6 different chems match all my needs. ")
	ANSWER("And what plants do you need ? ", 8)

NODE(8)
	SAY("The plants are called: Herbalis Aurora Carnivoris, Herbalis Natura Carnivoris, Herbalis Agrimonia Carnivoris. ")	
	ANSWER("Ok got it. Where can i find them? ", 9)

NODE(9)
	SAY("The last guy found them somewhere in D 05, E 03 and  F 04, wich plant where i cant tell you. ")
	ANSWER("That is enough i will check myself, you told me 6 different chems are needed at least? ", 10)

NODE(10)
	SAY("Yes. ")
	ANSWER("The payment? ", 11)
	
NODE(11)
	SAY("The payment, yes. You will get a part of my drug production for your personal use or to sell it. It is Amphedextrine, the strongest drug raising constitution in the world. And i am the only one knowing the recipe.")
	ANSWER("Wow thats worth the journey. So i will definitely do it now. ", 20)


--the PP discussion path
NODE(15)
	SAY("Bah I LEFT PP noone kicked me! And yes i do very well without this crap of company. Now i run my OWN shop. ")
	ANSWER("Hm sounds nice. And where do you ..ermm.. get the chems from now? ", 16)

NODE(16)
	SAY("I pay runners to get my chems from the original plants. So i get the best chems that can be found. ")
	ANSWER("Hmm since you specialized on certain drugs a good thought. ", 17)
	ANSWER("Ah and thats why you are staying here, you need new runners to get your chems am i right? ", 18)

NODE(17)
	SAY("Yes and works very well and i am my own boss. By the way you seem to go to the wastelands... ")
	ANSWER("Yes in fact i will go there soon, what you would pay for some chems you need ? ", 19)
	ANSWER("Not really but if you pay good i would give it a try. ", 19)
	ANSWER("No no i will not work for you Gerald... ", 33)
	
NODE(18)
	SAY("Hmm you are right i need some. If you want to get me some of them i will pay. ")
	ANSWER("Oh no Gerald i wont work for you even if you pay me, i know your habits. ", 33)
	ANSWER("Tell me what you will pay and i will think about it. ", 19)
	
NODE(19)
	SAY("Hmm i would pay the same what all other get. My own good work. So i think Amphedextrine, my selfbuild drug and the strongest constitution level raiser in the world, will help you to decide, am i right ? ")
	ANSWER("No i dont use them so worthless for me but i think not for others. Tell me what has to be done. ", 7)
	ANSWER("I dont want to have anything to do with drugs, so i wont help you. ", 32)
	ANSWER("Wow Amphedextrine! You are good man, tell me what i have to do. ", 7) 	
	
	
NODE(20)
	SAY("Ok then lets see what you will get me. Dont forget, at least 6 different chems! ")
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
	
		if (gotchem0 == 1 and gotchem1 == 1 and gotchem2 == 1 and gotchem4 == 1 and gotchem5 == 1 and gotchem6 == 1) then
			-- killed all	
			-- and has chems in inv
			-- gives first reward
			
			GIVEITEM(reward1_id)
			ACTIVATEDIALOGTRIGGER(0)
			ACTIVATEDIALOGTRIGGER(1)
					
			SAY("Ok thank you. By the way do you want more ? I could extend my production by an extra refining chem, but would need it too from the wastelands. Do you want to get it for me? ")
			
			-- start mission part 2
        		STARTMISSION(missionid2)
        		
			ANSWER("Sure if it brings me more of the Amphedextrine. ", 25)
			ANSWER("No thank you i had enough with the last i did for you. ", 24)
		
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
		SAY("You have not all done right now. Come back if you have all things i need. ")
		SETNEXTDIALOGSTATE(21)
		ENDDIALOG()
	end
   end
   
--it ends with the first mission
NODE(24)
	SAY("Ok never mind, come later if you want and do more hunting work for me. ")
	ACTIVATEDIALOGTRIGGER(0)
	ACTIVATEDIALOGTRIGGER(1)
	ENDDIALOG()
   
--mission part 2
NODE(25)
	SAY("Ok i need the rawproteine from 2 Herbalis Melaleuca Carnivoris which can be found somewhere in I 02 . I would pay you a big pack of Amphedextrine if you bring me the rawproteines. ")
	ANSWER("Ok i will do it, i am already used with these energy things in the tunnels. ", 26)
	ANSWER("Oh no thanks not again. ", 41)
	       
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
			-- and has chems in inv
			-- gets second reward
			
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
		
		SAY("Where are the chems, i thought you wanted to bring me all? ")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()
	else
		SAY("I need that chems, please dont bother me if you are not having the things i need. ")
		SETNEXTDIALOGSTATE(28)
		ENDDIALOG()
	end
   end

-- no answers mission part 1
NODE(30)
	SAY("Sorry sorry, you best dressed in town.. ")
	ANSWER("Hey do you want trouble ? ", 31)
	
NODE(31)
	SAY("Ok i am not saying anything more.. ")
	ENDDIALOG()

NODE(32)
	SAY("Then let me in peace and get off! ")
	ENDDIALOG()

NODE(33)
	SAY("Bad, i would pay in good drugs... then have a nice day, i need to get a new employee. ")
	ENDDIALOG()

-- no answers mission part 2	
NODE(40)
	SAY("ok if you dont want ... ")
	ENDDIALOG()

NODE(41)
	SAY("ok never mind ... ")
	ENDDIALOG()

end