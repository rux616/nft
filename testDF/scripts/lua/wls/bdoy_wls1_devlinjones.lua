--************************
--name   : bdoy_wls1_devlinjones.lua
--ver    : 2.08
--author : Ferron
--date   : 2004/09/03
--lang   : en
--desc	 : Missionscript for "The Juggernaut Facility"
--npc    : Devlin Jones, Frank McCoy , Dr. Morrison
--************************
--changelog:
--2004/11/04(2.09): forgot 2 ENDDIALOG in node 50 , fixed , cleaned some comments out(Ferron)
--2004/10/25(2.08): farril forgot to change the 1st mccoy check to -1 too (node 120), fixed (Ferron)
--		    script checked for good english (onyx)	
--2004/10/12(2.07): coin giving fixed, was wrong function, Givemoney instead of giveitem (Ferron)
--2004/10/03(2.06): no prim reward, runner can choose on second if coin or money
--2004/09/26(2.05): changed reward money to 50k(Ferron)
--2004/09/26(2.04): header added(Ferron)
--************************

-- Basic Structure

-- Info:
-- NPC: Questgiver: NODE(0) - REWARDGIVER: NODE(50) - DECRYPTGUY: NODE(100)
-- Description IDs 11100 / 11101

missionid1 = 3804



-- Definitions
-- *** Rewards
prim_goal_reward_credits = 0 ;	        -- no credits
prim_goal_reward_item = -1 ;		-- no item
sec_goal_reward_credits = 50000 ;	-- 50k credits
sec_goal_reward_item = 11002 ; 		-- old coin

-- *** FlagIDs
prim_goal_flag = 0 ;
sec_goal_flag = 1 ;
morrison_flag = 0 ;

-- *** ItemIDs
encrypted_diary = 11000 ;
encrypted_diary2 = 11025 ;
decrypted_diary = 11001 ;

-- *** temp vars within one dialog
took_encrypted = 0 ;

-- functions
-- *********

function REGIVE_DIARY()
	if (state==node) then
		if (took_encrypted==1) then
			GIVEITEM(encrypted_diary2) ;
			took_encrypted = 0 ;
		end
	end
end

function TAKE_DIARY()
        if (state==node) then
                TAKEITEM(encrypted_diary) ;
                if (result==1) then
                        took_encrypted = 1 ;
                        result = 1 ;
                else
                        TAKEITEM(encrypted_diary2) ;        
                        if (result==1) then
                                result = -1 ;
                        else
                                result = 0 ;
                        end
                end
        end
end

function TAKE_FINAL_DIARY()
	if (state==node) then
		TAKEITEM(decrypted_diary) ;
		if (result==1) then
			result = 1 ;
		else
			result = 0 ;
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
			GIVEMONEY(sec_goal_reward_credits) ;
		elseif (which == 2) then
			GIVEITEM(sec_goal_reward_item) ;
		end
	end
end

-- DIALOG
-- ******

function DIALOG()
	-- *** this on his first contact
	NODE(0)
		-- normal barkeeper behavior
		-- First only speak with him
		SAY("What do you want to drink next?") 
		ANSWER("A Synthetic Milk please.",  2)
		ANSWER("Give me Cron 55, but a cold one", 5)
		ANSWER("Do you have an icy Warbot Cola?", 7)
		ANSWER("Jack Whisky is my favourite, do you have it?", 9)
		ANSWER("Preachers Choice", 15) 
	
	--milk path
	NODE(2)
		SAY("A Milk ? Guy, how did you make it to this place? A milk drinker o my god! Let's see if there is some.")
		ANSWER("Hmm what do you have against milk? It's the best thing to drink and very healthy.", 3)
		ANSWER("Oh, if you dont have it I'll take a Cola", 7)
		ANSWER("Give me the milk and shut up.", 18)
	
	NODE(3)
		SAY("Ok here is some milk, you health activist.")
		TAKEMONEY(70)
		GIVEITEM(811)
		ANSWER("The wastes around here are unhealthy enough so...", 4)
		ENDDIALOG()
	
	NODE(4)
		SAY("Hmm a good point.")
		ANSWER("All barmen say the same about this to me.", 20) 
	
	
	--cron path
	NODE(5)
		SAY("Sure I have it.  It's the best thing in this place.")
		TAKEMONEY(70)
		GIVEITEM(812)
		ANSWER("Ohhhhh its really cooool, what a pleasure. Thanks, man.", 6)
		ANSWER("Hmm not cool enough but ok.", 20)
	
	NODE(6)
		SAY("No problem, good customer service and a good fridge...")
		ANSWER("This is good for being in such a remote place.", 20)
		ANSWER("What is this nice place here?", 25)
	
	--cola path
	NODE(7)
		SAY("Hah icy cold cola, yes ? Should be no problem. Lets see.")
		ANSWER("Ok then can i get it, thx.", 8)
		ANSWER("What is this club here?", 25)
		
	NODE(8)
		SAY("Ok ok")
		TAKEMONEY(70)
		GIVEITEM(813)
		ANSWER("Thanks.", 19)
	
	--Whisky path , barman is getting drunk
	NODE(9)
		SAY("Oh it is my favourite too, so lets have 2 of them.")
		TAKEMONEY(70)
		GIVEITEM(817)	
		ANSWER("Thank you dude, its a good one dont you think?", 10)
		
	NODE(10)
		SAY("Yeah, try to drink it at once, it burns really hot.")
		ANSWER("I prefer to drink it slow but take another one on me.", 11)
	
	NODE(11)
		SAY("Ok, if you pay, I'll have one.")
		TAKEMONEY(70)
		ANSWER("Hmm why not do it, but you should tell me some story about this place here.", 12)
	
	NODE(12)
		SAY("Oh I know many stories .. but first another one")
		TAKEMONEY(70)
		ANSWER("Hey i am finished with mine, give me one too.", 13)
		ANSWER("Ok but I bought the last one.", 14)
	
	NODE(13)
		SAY("Ok here is yours.. hick..")
		GIVEITEM(817)
		ANSWER("Thanks, man.  So what is your story?", 30)
	
	
	NODE(14)
		SAY("Hm ok dude the last one then ..hick.. wAAt wanted I to tELl you?")
		ANSWER("You wanted to tell me a story about this place!", 25)
	
	
	--Preachers Choice path
	NODE(15)
		SAY("Ohh man, you sure know the best whisky there is. Here you go.")
		TAKEMONEY(90)
		GIVEITEM(819)
		ANSWER("Thanks, yes the best drinks for the best guys", 16)
		ANSWER("Oh good you have some here. By the way, what is this place here?  This is my first time out here.", 25)
		ANSWER("Hmm, Devlin Jones?  Where did I read your name, it was a long time ago?", 17)
		ANSWER("Hmm, not cheap but good.", 20)
	
	NODE(16)
		SAY("Haha, you are very self-confident, I like it.")
		ANSWER("Hehe, yeah why not?  I have spent a long time getting to be as good as I am now", 44)
		ANSWER("Why not?  I am good so..", 20)
	
	NODE(17)
		SAY("So you read my name, hmm hmm.. I can tell you from where by telling you a little story, but you should keep it secret, ok?")
		ANSWER("Ok, why not?  Go on!", 30)
		ANSWER("I have no time right now, maybe next time.", 19)
		ANSWER("First tell me about this place here.", 25)
		ANSWER("I dont really care right now, let me drink.", 18)
	
		
	
	--shut up / end nodes
	NODE(18)
		SAY("Ok, I'll shut up.")
		ENDDIALOG()
		
	NODE(19)
		SAY("Ok then, have a nice time in our club.")
		ENDDIALOG()
	
	
	--what are you doing here 
	NODE(20)
		SAY("So what are you doing all the way out here?")
		ANSWER("Oh i'm just wandering around, seeing the world.", 21)
		ANSWER("I am searching for some new adventures in the wastelands", 44)
	
	NODE(21)
		SAY("Aha are you interested in doing something other than just wandering ?")
		ANSWER("Hmm, a worthwhile exploration is nice too.", 22)
	
	NODE(22)
		SAY("Hmm then I could tell you a nice story which might lead you to a fair amount of money for your account. ")
		ANSWER("Then let's hear it.", 30) 	
	
	
	--what is this place
	NODE(25)
		SAY("This is the Twister Bar, the owner is a TS guy who thought this would be a nice place to open a club for the runners who try get killed by these monsters.")
		ANSWER("Monsters?", 26)
		ANSWER("Ah, I heard that you could find some action out here.", 28)
		
	NODE(26)
		SAY("Yes , huge warbots. Really huge. Why ? Do you want some action?")
		ANSWER("Sure, dude!", 30)
		ANSWER("Not at all, only a drink!", 19)
		
	NODE(28)
		SAY("Ok then I'll tell you a story.")
		ANSWER("Do it", 30)
		
	
	
	
	--Devlin Jones story long 
	NODE(30)
		SAY("Ok, then let me tell you the story about why I'm 'stranded' here. I was not always a bartender. I was a security chief for a wasteland exploration.")
		ANSWER("Oh wow, and what happened that you are now here ?", 31)
	
	NODE(31)
	  if (node == state) then
		
		GETFACTIONSYMPATHY(3)
		if (result > 40) then
			SAY("Hmm you seem to be affiliated to NExT am I right?")
			ANSWER("Yes, pretty obvious, isn't it?", 32)
			ANSWER("Not really...",  38) 
			
		end	
			
		SAY("The exploration I had to take care of was a complete disaster, almost everyone got killed.")
		ANSWER("Wow, sorry to hear that.  What exploration was it?", 38)
	
	  end
	
	-- NExT affilate path
	NODE(32)
		SAY("Then, here, another drink from me. See I was a former NExT employee leading a mission to a site near here. Ever heard about Juggernauts? We tried to find them and did, but this wasn't good for us. This should have been earased from the normal NExT DB but maybe you have access to more secure files.")
		GIVEITEM(819)
		ANSWER("Never heard about Juggernauts. So you have been in the company, what happened?", 33)
		ANSWER("Hmm I had seen a little info about a mission and Juggernauts but nothing more.", 33)
		
	NODE(33)
		SAY("As said we found the Juggernaut Facility.  It was an old DOY one. They were completely deactivated, then Kaytlin ... ermm .. Dr. Morrison worked with the main computer there and the bots started to come online. They killed nearly everyone!!")
		ANSWER("Oh wow that sounds bad, and you managed to survive it..", 34)
	
	NODE(34)
		SAY("Yes I did, but since then I've wanted to get something that we lost at the site. Dr. Morrison made a diary about the research, I want it back so I can check what has gone wrong.")
		ANSWER("Hmmm so what would you pay me if I get it back to you?", 35)
	
	NODE(35)
	  if (node == state) then
		GENDERCHECK()
		if (result == 1) then
			SAY("Son, this site is a real life shortening one! You wont survive it alone, but I will pay you 50 grand if you get me the diary.")
			ANSWER("WOW, thats a sum.  I dare these Warbies to try to shorten my life!", 36)
		else
			SAY("My lady, this site is a real life shortening one! You wont survive it alone, but I will pay you 50 grand if you get me the diary.")
			ANSWER("WOW, thats a sum.  I dare these Warbies to try to shorten my life!", 36)
		end
	  end

	NODE(36)
		SAY("Ok if you want to try, its your life not mine.")
		ANSWER("Ok then, let's go", 49)
		ANSWER("Hmm maybe its better not to do it, I think I'll just keep my drink.", 19)
	
	-- normal path
	NODE(38)
		SAY("My team and I were working for a big NC Company. They told us to explore an old DOY Warbot facility so we did, but many died.")
		ANSWER("Aha", 39)

	NODE(39)
		SAY("I survived the mission and since then I've been a bartender here. I would pay you if you want to do me a favour.")
		ANSWER("Payment sounds good, what would I have to do?", 40)
	
	NODE(40)
		SAY("You would have to get me something from that faciltiy I told you about, but it won't be easy. Let' say it will be VERY risky for you.")
		ANSWER("Hmm the warbots in the facility are active?", 41)
	
	NODE(41)
		SAY("Yes they are and they are not normal warbots.  They are bigger and harder than the Titans you see in the wastelands. So you may want to call some friends to help you. I will pay you 50 grand for a diary I need you to get out of there.")
		ANSWER("A diary? Why do you need a diary for so much money?", 42)
	
	NODE(42)
		SAY("It's a diary covering exploration which was written by a reasearcher who also got killed there. Her name was Dr. Kaytlin Morrison. Find her and you will find the diary.")
		ANSWER("Ok I will try.  I am really curious about the 'huge' warbots you mentioned.", 43)
		ANSWER("Ok I am on my way.", 49)
		ANSWER("Nice story I don't believe a thing.  Now shut up!", 18)
	
	NODE(43)
		SAY("They are really huge and very aggressive, you wont have a chance against them alone.")
		ANSWER("Hmm then I need some help from some friends, but I will do it", 49)
				
		
		
	--direct access to mission with small story
	NODE(44)
		SAY("Ok then, let's see.  I have something very risky and potentially life-ending for you to do. Are you interested?")
		ANSWER("Sure! Tell me.  I'd really like new adventures.  Only the hardest, for the best." , 45)
		ANSWER("Oh, I don't like such things, thanks", 19)
		ANSWER("Let's see what you have.", 45)
	
	NODE(45)
		SAY("Ok to cut it short: I was the security chief of a NExT exploration team who tried to get info about a DOY warbot facility near here. We tried to explore it but we were not very successful and most of my team got killed by huge warbots. I mean really huge!! There was a member of my team named Dr. Kaytlin Morrison.  She kept a diary of the research and I would like to get it back from the site where she was killed.")
		ANSWER("Hmm sounds very risky, huge warbots hm hm", 46)
		ANSWER("Hmm so what do I need to do?", 47)
		
	NODE(46)
		SAY("Yes HUGE! A Titan is a child against these and half as aggressive. My team was wiped out in minutes. If you succeed I will pay you 50 grand!")
		ANSWER("Wow!  Hmm, sounds like I need some help. I will call my guys and give it a try, but where is the entrance to the site?", 48)
		
	NODE(47)
		SAY("Again, its very risky! You need to search the site where we got wiped out by these Warbots and get Dr. Morrison's diary to me.")
		ANSWER("Ok, roger that.", 49)
		
	NODE(48) 
		SAY("There is an old ruin near here. You can find the entrance in it, but its hidden so you must search.")
		ANSWER("Ok then I am on my way.", 49)
	
	
	--*** starting mission here/accept mission entrance description	
	NODE(49)
		SAY("I whish you luck and bring me the diary.")
		
		
		STARTMISSION(missionid1) ;
		SETNEXTDIALOGSTATE(50) ;
		ENDDIALOG() ;
		
	-- *** This is after he accepted everytime he returns
	NODE(50)
		ISMISSIONTARGETACCOMPLISHED(prim_goal_flag) ;
		if (result==0) then
			-- he previously did not return the encrypted
			TAKE_DIARY()
			if (result==1) then
				-- he had the encrypted with him
				ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
								
				SAY("So you really have it! Thank you! However, I see it's still encrypted, so it's more than worthless to me.  You need to have it decrypted.")
				ANSWER("Ok, sure.  Please explain how.", 52)
				ANSWER("Nooo thanks, I've had enough and don't want anymore.", 51)
				
			else
				-- he did not have the encrypted
				-- maybe he has already translated it before returning
				TAKE_FINAL_DIARY()
				if (result==1) then
					-- ok, the guy already did everything
					
					-- mark all as done
					ACTIVATEDIALOGTRIGGER(prim_goal_flag) ;
					ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
					
					SAY("Do you want an old expesive coin or 50k credits?")
					ANSWER("The coin.", 60)
					ANSWER("The money.", 61) 
				else
					-- he did not bring any of the needed items yet
					SAY("I wont pay you anything until I get the thing from you!") ;
					ENDDIALOG() ;
				end
			end
		else
			-- ok he was already here for the encrypted but wanted to decrypt it
			-- now test if he has done
				TAKE_FINAL_DIARY()
				if (result==1) then
					-- ok, the guy already did everything
										
					-- mark all as done
					ACTIVATEDIALOGTRIGGER(sec_goal_flag) ;
					
					SAY("Do you want an old expesive coin or 50k credits?")
					ANSWER("The coin.", 60)
					ANSWER("The money.", 61)
				else
					-- he did not finish secondary goal
					SAY("Hmm I told you to decrypt it, so you wont get the reward.  Go and try again.") ;
					ENDDIALOG() ;
				end
		end
		
		
	-- no secondary mission
	NODE(51)
		ACTIVATEDIALOGTRIGGER(sec_goal_flag)
		SAY("Ok then, thank you a lot, have a nice time")
		ENDDIALOG()
	
	-- secondary mission description
	NODE(52)
		SAY("Ok then. You see, this diary you got for me is encrypted at a high level. So its worthless for me. I need this decrypted. There is a guy in the Pepper Park Subway Station who might be able to do it.  Go ask him if he will do it.")
		ANSWER("Ok I will go and see if he can decrypt it.  What is the name of this guy?", 53)
		ANSWER("Hmm Pepper Park is at the other end of the world, Dude.  I don't have time for this.", 51)
	
	NODE(53)
		SAY("The name is McCoy. He is a bit weird. So then fare well and come back soon.") 
		REGIVE_DIARY()
		SETNEXTDIALOGSTATE(50)
		ENDDIALOG()
		
	--reward giving
	NODE(60)
		SAY("Ok here the coin.")
		GIVEREWARD(2) ;
		ENDDIALOG()
	NODE(61)
		SAY("Ok here the money.")
		GIVEREWARD(1) ;	
		ENDDIALOG()			
			
		
	-- *** Frank McCoy - The guy that decrypts the diary
	NODE(100)
		SAY("Hello, I don't buy nothing so piss off!")
		ANSWER("I don't want to sell anything.  I want to use your services", 101)
		ANSWER("Decrypt this and shut up!", 115)
		
	NODE(101)
		SAY("Aha!  So, I provide services?  Who told you such a thing?")
		ANSWER("A Bartender at a Twister Bar in the wastes told me.", 102)
		ANSWER("You don't need to know, just do your work!", 110)
	
	
	-- friendly McCoy
	NODE(102)
		SAY("Oh hmm then, maybe he is right.  I provide some services related to electronics and crypting data.  What can I do for you?")
		ANSWER("I Knew I was right.  I have a Diary which needs to be decrypted.", 103)
	
	NODE(103)
		SAY("Hmm ok I'll give it a shot.  Decryption is my favourite hobby, but it's not free.  It will cost you 2 grand.")
		ANSWER("No problem. ", 109)
			
	NODE(109)	
		TAKEMONEY(2000)
		SAY("Ok, can I have it?")
		ANSWER("Sure, here it is.", 120)
		
	
	-- angry mcCoy
	NODE(110)
		SAY("I do my work WHEN and FOR WHO I want!!")
		ANSWER("Oh, sorry I was rude to you, I did not mean it, so.", 111)
		ANSWER("I'm paying you for this and you're gonna do it, ok?", 113)
		ANSWER("You will do it NOW and FAST and WITHOUT PAYMENT! Did you understand this, you freak?", 121)
		ANSWER("Do it !", 115)
	
	NODE(111)
		SAY("Hmm then I will take a look at it.  It won't be for free.  Let's say 3 grand for you.")
		ANSWER("Hmm ok", 112)
	
	NODE(112)
		TAKEMONEY(3000)
		SAY("Ok can I have it?")
		ANSWER("Sure, here it is.", 120)
	
	NODE(113)
		SAY("Hmm ok then let's say 5 grand and I will do it")
		ANSWER("Ok", 114)
	
	NODE(114)
		TAKEMONEY(5000)
		SAY("Ok can I have it?")
		ANSWER("Sure, here it is.", 120)
	
	NODE(115)
		SAY("Hmm, ok but for you it wont be cheap.  By the way I am the only one who can do it if it this thing in your hand is what I think.")
		ANSWER("Hmm, I don't care, just do it!", 116)
	
	NODE(116)
		SAY("7 grand first.")
		ANSWER("WHAT? Are you crazy?", 117)
		ANSWER("Hm, I hope it is worth the money.", 119)
		
	NODE(117)
		SAY("No, I am not!  My work = your money!")
		ANSWER("NEVER! No work, no money! Understand? Here it is, now do it!", 121)
		ANSWER("Hmm lets say 3.5 grand?", 118)
	
	NODE(118)
		TAKEMONEY(4000)
		SAY("Hmm I'll take 4, thanks.")
		ANSWER("Ok, you are the guy...", 120)
	
	
	NODE(119)
		TAKEMONEY(7000)
		SAY("Ok, can I have it?")
		ANSWER("Sure, here it is.", 120)
		
		
	NODE(120)	
		TAKE_DIARY()
		if (result==-1) then
			GIVEITEM(decrypted_diary) ;
			SAY("Here you have it.")
			ENDDIALOG()
		else
			SAY("Hmm you're asking me to do work for you, for next to nothing, and you don't have the thing with you?!  Go and get it, Dude!")
			ENDDIALOG()
		end
	
	--very angry McCoy steals his money 
	NODE(121)	
		TAKE_DIARY()
		if (result==-1) then
			GIVEITEM(decrypted_diary) ;
			TAKEMONEY(10000)
			SAY("Here you have it.")
			ENDDIALOG()
		else
			SAY("Hmmm you're asking me to do work for you, for next to nothing and you don't have the thing with you? Go and get it, Dude!")
			ENDDIALOG()
		end	
		
	-- Dr. Morrison
	
	NODE(150)
		SAY("GO AWAY GO AWAY - the Warbots don't like you - GO AWAY")
		ANSWER("Calm down, Dr. Morrison, it's ok.", 154)
		
	NODE(151)
		SAY("NO you'll shoot them - don't shoot them, don't harm them, my lovely warbots!")
		ANSWER("What? Dr. Morrison is everthing ok?", 152)
		
	NODE(152)
		SAY("I am fine, only some small injuries -COUGH COUGH! - Don't harm my warbots - ALL MINE!!!")
		ANSWER("Ahh ok Dr. Morrison I see you're just fine... I need something from you and then you will be free of me.")
	
	NODE(153)
		SAY("Ok, what do you need?  Tell me and go.")
		ANSWER("I need your diary.  I don't think you need it anymore.", 154)
	
	NODE(154)
		SAY("Why you want to -- COUGH COUGH -- get -- COUGH it?")
		ANSWER("I am only trying to get the data back so we know what happened here.", 155)
		
	NODE(155)
			--checking if he already had one of the diaries		
			-- if (morrison_flag == 0) then
		SAY("I am half dead leave my warbots alone so  - COUGH - here you have it - COUGH-. The encryption key is Dwe44..-COUGH- Now, get out of here!")
		GIVEITEM(11000)
			--setting flag for dr morrison
			--morrison_flag = 1
		SETNEXTDIALOGSTATE(50)
--		DIE()
			--else 
			--	SAY("-COUGH-ARGH-")
			--	DIE()
			--end		
		
		ENDDIALOG()
		
		
end


