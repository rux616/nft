function DIALOG()

	NODE(0)
		
		SAY("Hey! Wanna try your luck? Here your skill decides and your luck!")
		SAY("Hey! Here you can win. Come here! Try it!")
		SAY("You against my cards! Come on! Try!")
		
		ANSWER("Cool man. I'll go along.",1)
		ANSWER("Speak up! What must I do?",1)
		ANSWER("What`s this about?",1)
		
		ANSWER("Blackjack! I know your rules. Let's rock!",3)
		
		ANSWER("Gamble? I don`t gamble! That's against my principles.",100)
		ANSWER("Forget it. You just wanna get at other peoples money.",100)
		
	
	NODE(1)
		SAY("We play the simple Blackjack variant. Rules: We draw cards alternativly and try and get as close to 21 as possible. The closest wins! Whoever is above 21 looses. Shall we start?")
		ANSWER("Right! What's the stake and what can I win?",2)
		ANSWER("I'm not going to mess with my hard earned cash. Look for some other sucker.",100)

	NODE(2)
		SAY("You put in an amount and if you win, you get back double. With Blackjack triple. That`s when you draw 21 with 2 cards only. Do I have Blackjack, you pay me double.")
		ANSWER("Sounds alright.",3)
		ANSWER("Naah! Too dangerous for me.",100)

	NODE(3)
	if (node==state) then
		var1=0
		var3=0
		
		cardcount=0
		cardcount2=0
		
		pstop=0
		nstop=0
		
		einsatz=0
		RAND(5)
		
		tmpeinsatz1 = (result+1)*1000
		tmpeinsatz2 = (result+2)*1000
		tmpeinsatz3 = (result+3)*1000
		tmpeinsatz4 = (result+4)*1000
		
		SAY("What you wanna set?")
		ANSWER("Right. I put in "..tmpeinsatz1..". Here`s the cash.",15)
		ANSWER("Right. I put in "..tmpeinsatz2..". Here`s the cash..",16)
		ANSWER("Right. I put in "..tmpeinsatz3..". Here`s the cash.",17)
		ANSWER("Right. I put in "..tmpeinsatz4..". Here`s the cash.",18)
		ANSWER("Is it possible to put in 10?",19)
	end

	NODE(4)
	if (node==state) then
		if (pstop == 0 ) then
			SAY("Take a card.")
			SAY("Draw.")
			SAY("Your turn now.")
			SAY("There. A card.")
			SAY("Take one.")
			SAY("Draw one.")
			SAY("There you are.")
			SAY("There. Take.")
			cardcount=cardcount+1
			RAND(13)
			if( result==0 ) then
				ANSWER("That was a 2 of Clubs.",10)
				ANSWER("2 of Hearts.",10)
				ANSWER("There! A 2 of Spades.",10)
				ANSWER("2 of Diamonds.",10)
				var1 = var1 + 2
			else
				if( result==1 ) then
					ANSWER("That was a 3 of Clubs.",10)
					ANSWER("3 of Hearts.",10)
					ANSWER("There! 3 of Spades.",10)
					ANSWER("A 3 of Diamonds.",10)
					var1 = var1 + 3
				else
					if( result==2 ) then
						ANSWER("That was a 4 of Clubs.",10)
						ANSWER("4 of Hearts.",10)
						ANSWER("There. 4 of Spades.",10)
						ANSWER("A 4 of Diamonds.",10)
						var1 = var1 + 4
					else
						if( result==3 ) then
							ANSWER("That was a 5 of Clubs.",10)
							ANSWER("5 of Hearts.",10)
							ANSWER("There a 5 of Spades.",10)
							ANSWER("A 5 of Diamonds.",10)
							var1 = var1 + 5
						else
							if( result==4 ) then
								ANSWER("That was a 6 of Clubs.",10)
								ANSWER("6 of Hearts.",10)
								ANSWER("There a 6 of Spades.",10)
								ANSWER("A 6 of Diamonds.",10)
								var1 = var1 + 6
							else
								if( result==5 ) then
									ANSWER("That was a 7 of Clubs.",10)
									ANSWER("7 of Hearts..",10)
									ANSWER("There a 7 of Spades.",10)
									ANSWER("A 7 of Diamonds.",10)
									var1 = var1 + 7
								else
									if( result==6 ) then	
										ANSWER("That was a 8 of Clubs.",10)
										ANSWER("8 of Hearts..",10)
										ANSWER("There a 8 of Spades.",10)
										ANSWER("A 8 of Diamonds.",10)
										var1 = var1 + 8
									else
										if( result==7 ) then	
											ANSWER("That was a 9 of Clubs.",10)
											ANSWER("9 of Hearts.",10)
											ANSWER("There a 9 of Spades.",10)
											ANSWER("A 9 of Diamonds.",10)
											var1 = var1 + 9
										else
											if( result==8 ) then
												ANSWER("Hey an Ace of Hearts. We'll take that as 1 point.",5)
												ANSWER("Hey man, an Ace of Spades. We make 1 point out of that one.",5)
												ANSWER("Ace of Diamonds. I want that to count 1.",5)
												ANSWER("Lookee there. An Ace of Clubs. Add up 1.",5)
												ANSWER("Hey! Ace of Hearts. Shall count 11.",6)
												ANSWER("Man! Ace of Spades. I`ll take it for 11.",6)
												ANSWER("Ace of Diamonds. 11 to count.",6)
												ANSWER("Have a look. Ace of Clubs. Make that count 11.",6)
											else
												if( result>8) then	
													ANSWER("That was a 10 of Clubs.",10)
													ANSWER("10 of Hearts.",10)
													ANSWER("There a 10 of Spades.",10)
													ANSWER("A 10 of Diamonds.",10)
													
													ANSWER("That was a Jack of Clubs.",10)
													ANSWER("Jack of Hearts.",10)
													ANSWER("There a Jack of Spades.",10)
													ANSWER("Jack o`Diamonds.",10)
													
													ANSWER("That was a Queen of Clubs.",10)
													ANSWER("The Lady of the Hearts.",10)
													ANSWER("There a Queen of Spades.",10)
													ANSWER("Queen of Diamonds.",10)
													
													ANSWER("That was a King of Clubs.",10)
													ANSWER("King of hearts.",10)
													ANSWER("There a King of Spades.",10)
													ANSWER("A King of Diamonds.",10)
													var1 = var1 + 10
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		else
			SAY("You've stopped.")
			SAY("You wanted no more.")
			SAY("Finished for you.")
			SAY("No more cards for you.")
			ANSWER("I know. Carry on.",21)
			ANSWER("You don't say. Carry on.",21)
			ANSWER("Up to me to decide, man. Carry on.",21)
		end
						
	end	


-- Fall Spieler zieht AS
	NODE(5)
	if (node==state) then
		var1 = var1 + 1	
		SAY("Okay.")
		ANSWER("What's the count?",10)
	end
	
	NODE(6)
	if (node==state) then
		var1 = var1 + 11	
		SAY("11? Good.")
		ANSWER("Did you also count?",10)
	end

--Spielauswertung Spieler

	NODE(10)
	if (node==state) then
		if (var1 == 21) then
			if (cardcount==2) then
				GIVEMONEY(einsatz*3)
				SAY("Hey! BLACKJACK! 21 with 2 cards. You don't see that every day. Here's your cash: Triple. Wanna go for another round?")
				ANSWER("Blackjack! That's cool. Same again!",3)
				ANSWER("I rather stop. Luck like that doesn't last.",102)
			else
				GIVEMONEY(einsatz*2)
				SAY("Wow! 21 Exactly! You don`t do that every day. you've won. There's your dough. Another round?")
				ANSWER("Of course! I carry on. Same again!",3)
				ANSWER("I rather stop. My money is too valuable.",102)
			end
		else	
			if (var1 > 21) then
				SAY("Bad luck! You`re over 21. My Round. Want to try again?")
				ANSWER("Of course! I carry on.",3)
				ANSWER("I rather stop.",102)
			else
				if (var1 < 21) then
					if (var1 < 12) then
						SAY("Right "..var1..".")
						SAY(""..var1.." points.")
						SAY("You now have "..var1..".")
						SAY("You are now on "..var1..".")
						SAY("That gives you "..var1.." points.")
						ANSWER("Okay. Your turn.",21)
						ANSWER("Now you.",21)
						ANSWER("Carry on.",21)
						ANSWER("It`s your turn.",21)
						ANSWER("Your turn.",21)
					else
						if (var1 < 17) then
							SAY("You now have "..var1..". You may stop if you are above 17 points.")
							SAY("That gives you "..var1.." points. You may only stop buying, if you are above 17 points.")
							SAY("Over 17 you can stop buying. It`s only "..var1.." so far.")
							ANSWER("Okay, lets carry on then.",21)
							ANSWER("I know man, carry on!",21)
							ANSWER("Yep. Go on.",21)
							ANSWER("Yep. I know the rules. Carry on.",21)
						else
							if (nstop==0) then
								SAY("Your on "..var1.." now. Want to carry on?")
								SAY("Your on "..var1.." already. Still another one?")
								SAY("Oups! "..var1..". More?")
								ANSWER("Of course. More.",21)
								ANSWER("I rather stop. Your turn.",20)
							else
								if (var1 > var3) then
									GIVEMONEY(einsatz * 2)
									SAY("Say! You`ve won! Here`s your dough.")
									ANSWER("Neat! Another round.",3)
									ANSWER("Crazy! I`ve won! I rather stop now before my lucky streak breaks.",102)
								else
									SAY("You are on "..var1.." now. I`m on "..var3..". You have to carry on.")
									ANSWER("Ok.",4)
								end
							end	
						end
					end
				end
			end
		end
	end



--Einsatz wird bestimmt

	NODE(15)
	if (node==state) then
		einsatz=tmpeinsatz1
		if (einsatz < 3000) then
			TAKEMONEY(einsatz)
			SAY("Hey but you are a miser! Withas little as that I wouldn`t even start! But alright.")
			ANSWER("Stop bitching and deal me a card!",4)
		else	
			if (einsatz > 5000) then
				TAKEMONEY(einsatz)
				SAY("Man, you really go for it. Wit that amound rounds can really get interesting.")
				ANSWER("No half things. Get going.",4)
			else	
				TAKEMONEY(einsatz)
				SAY("Right. Money is in the kitty. Let`s start.")
				ANSWER("Ok. Go!",4)
			end
		end
		if (result==0) then
			SAY("Sorry, man. No money no game.")
			ENDDIALOG()
		end
	end
	
	NODE(16)
	if (node==state) then
		einsatz=tmpeinsatz2
		if (einsatz < 3000) then
			TAKEMONEY(einsatz)
			SAY("You miser! You don`t start off so small. But alright.")
			ANSWER("Stop bitching and deal!",4)
		else	
			if (einsatz > 5000) then
				TAKEMONEY(einsatz)
				SAY("Man, you really go for it. With money like that tha game really gets interesting.")
				ANSWER("No half things. Go for it!",4)
			else	
				TAKEMONEY(einsatz)
				SAY("Right! Kitty is filled.The round starts.")
				ANSWER("Ok. Go!",4)
			end
		end
		if (result==0) then
			SAY("Sorry, man. No money no game.")
			ENDDIALOG()
		end
	end
	
	NODE(17)
	if (node==state) then
		einsatz=tmpeinsatz3
		if (einsatz < 3000) then
			TAKEMONEY(einsatz)
			SAY("Miser! Don`t start that small! But alright.")
			ANSWER("Stop bitching and deal me a card.",4)
		else	
			if (einsatz > 5000) then
				TAKEMONEY(einsatz)
				SAY("Wow you start off big. That`s really going to get interesting.")
				ANSWER("No half things. Go for it!",4)
			else	
				TAKEMONEY(einsatz)
				SAY("Right. The kitty is full. Lets get started!")
				ANSWER("Right. Go!.",4)
			end
		end
		if (result==0) then
			SAY("Sorry man, the big boys play here. Put up or shut up!")
			ENDDIALOG()
		end
	end
	
	NODE(18)
	if (node==state) then
		einsatz=tmpeinsatz4
		if (einsatz < 3000) then
			TAKEMONEY(einsatz)
			SAY("You miser! Don't start that small! But alright.")
			ANSWER("Stop bitching and deal!",4)
		else	
			if (einsatz > 5000) then
				TAKEMONEY(einsatz)
				SAY("Wow! Now it gets interesting. This really is money now!")
				ANSWER("Nothing small about me, boy! Deal!",4)
			else	
				TAKEMONEY(einsatz)
				SAY("Right. Everybody in. Lets get going.")
				ANSWER("Okay. Get going.",4)
			end
		end
		if (result==0) then
			SAY("Sorry man. No money, no game.")
			ENDDIALOG()
		end
	end
	
	NODE(19)
		SAY("No man! This is not kintergarten here! This is for the big boys!")
		ANSWER("Okay, okay, I put in more...",3)
		ANSWER("Too much for me. I'm out.",100)
	
	
--NPC Spiel
	NODE(20)
	if (node==state) then
		pstop = 1	
		SAY("Okay. You're out.")
		ANSWER("Yep.",21)
	end
			
--NPC zieht Karte
	NODE(21)
	if (node==state) then
		if (nstop==0) then
			cardcount2=cardcount2+1
			RAND(13)
			if( result==0 ) then
				SAY("2 of Clubs.")
				SAY("That was a 2 of Hearts.")
				SAY("A 2 of Spades.")
				SAY("Well, there's a 2 of Diamonds.")
				var3 = var3 + 2
				ANSWER("Right. What's the score?",24)
			else
				if( result==1 ) then
					SAY("3 of Clubs.")
					SAY("That was a 3 of Hearts.")
					SAY("A 3 of Spades.")
					SAY("Aannd? A 3 of Diamonds.")
					var3 = var3 + 3
					ANSWER("Right. What's the score?",24)
				else
					if( result==2 ) then
						SAY("4 of Clubs.")
						SAY("That was a 4 of Hearts.")
						SAY("A 4 of Spades.")
						SAY("Well?...A 4 of Diamonds.")
						var3 = var3 + 4
						ANSWER("Right! What's the score?",24)
					else
						if( result==3 ) then
							SAY("5 of Clubs.")
							SAY("That was a 5 of Hearts.")
							SAY("A 5 of Spades.")
							SAY("Well?...A 5 of Diamonds.")
							var3 = var3 + 5
							ANSWER("Right! What's the score?",24)
						else
							if( result==4 ) then
								SAY("6 of Clubs.")
								SAY("That was a 6 of Hearts.")
								SAY("A 6 of Spades.")
								SAY("Well?...A 6 of Diamonds.")
								var3 = var3 + 6
								ANSWER("Right! What's the score?",24)
							else
								if( result==5 ) then
									SAY("7 of Clubs.")
									SAY("That was a 7 of Hearts.")
									SAY("A 7 of Spades.")
									SAY("Well?...A 7 of Diamonds.")
									var3 = var3 + 7
									ANSWER("Right! What's the score?",24)
								else
									if( result==6 ) then	
										SAY("8 of Clubs.")
										SAY("That was a 8 of Hearts.")
										SAY("A 8 of Spades.")
										SAY("Well?...A 8 of Diamonds.")
										var3 = var3 + 8
										ANSWER("Right! What's the score?",24)
									else
										if( result==7 ) then	
											SAY("9 of Clubs.")
											SAY("That was a 9 of Hearts.")
											SAY("A 9 of Spades.")
											SAY("Well?...A 9 of Diamonds.")
											var3 = var3 + 9
											ANSWER("Right! What's the score?",24)
										else
											if( result==8 ) then
												SAY("Hey! An Ace of Clubs!")
												SAY("That was the Ace of Hearts.")
												SAY("Ace of Spades.")
												SAY("Wow. An Ace of Diamonds!")
												ANSWER("How do you want it to count?",23)
											else
												if( result>8) then	
													SAY("A Jack of Clubs.")
													SAY("That was a Jack of Hearts.")
													SAY("A Jack of Spades.")
													SAY("Jack o`Diamonds.")
													SAY("A 10 of Clubs.")
													SAY("That was a 10 of Hearts.")
													SAY("10 of Spades.")
													SAY("A 10 of Diamonds.")
													SAY("A Queen os Clubs.")
													SAY("The Lady of the Hearts.")
													SAY("Queen of Spades.")
													SAY("That`s a Queen of Diamonds.")
													SAY("A King of Clubs.")
													SAY("That was a King of Hearts.")
													SAY("King of Spades.")
													SAY("That`s a King of Diamonds.")
													var3 = var3 + 10
													ANSWER("Right! What's the score?",24)
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		else
			SAY("I'm out. You carry on....")
			SAY("I've stopped. You carry on....")
			SAY("No. Your turn. I'm not drawing any more.")
			ANSWER("Okay.",4)
		end	
	end

--Fall:NPC zieht AS
	NODE(23)
	if (node==state) then
		if (var3 < 10) then
			var3 = var3 + 11	
			SAY("Take that as 11.")
			SAY("11 points. I count it as 11.")
			SAY("11 points. That fits nicely.")
			ANSWER("Okay. What's the score?",24)
			ANSWER("11? Fine. That fits. What's the score?",24)
		else
			if (var3 == 10) then
                 		if (cardcount2==2) then
                 			TAKEMONEY(einsatz)
					var3 = var3 + 11	
					SAY("11! Blackjack, man! That costs you another "..einsatz.."!")
					ANSWER("Right. What luck! But alright. Next round!",3)
					ANSWER("Man what luck! I'm out!",102)
             			else
             				SAY("As 1 of course! I've got 21 exactly!")
             				ANSWER("Correct. What luck! Okay! Next round!",3)
							ANSWER("Man, what luck. I don't feel like it anymore.",102)
		        	end
			else
				if (var3 < 19) then
					var3 = var3 + 1	
					SAY("As 1 of course! Otherwise I`ll be above 21.")
					SAY("11 won't work. As a 1.")
					ANSWER("Right! What's the score?",24)	
				else
					if (var3 == 20) then
						var3 = var3 + 1	
						SAY("As a 1 of course. I have 21 exactly!")
						ANSWER("Right! Now that's luck. Alright. Next round.",3)
						ANSWER("Man, what luck. I'm out!",102)
					end
				end
			end
		end
	end
	
--Allgemeine Spielauswertung NPC

	NODE(24)
	if (node==state) then
		if (var3 == 21) then
			if (cardcount2 == 2) then
				TAKEMONEY(einsatz)
				SAY("11!!! Hey I've got Blackjack! That's gonna cost you another "..einsatz.."!")
				ANSWER("Right man. What luck. But alright. Next round.",3)
				ANSWER("Man, what luck! No more for me.",102)
			else
				SAY("Man! I`ve won! 21 exactly.")
				ANSWER("Man, what luck. But alright. Next round.",3)
				ANSWER("Man, what luck. No more for me.",102)
			end
		else	
			if (var3 > 21) then
				GIVEMONEY(einsatz * 2)
				SAY("Grrr..."..var1.." to "..var3..". Yes you've won. Here is your cash. Another game?")
				ANSWER("Of course!",3)
				ANSWER("I rather stop.",102)
			else
				if (var3 < 17) then
					SAY(""..var1.." to "..var3..".")
					SAY("It`s "..var1.." to "..var3..".")
					SAY("The score? "..var1.." to "..var3..".")
					ANSWER("Let's carry on.",4)
					ANSWER("Okay let's carry on.",4)
					ANSWER("Okay! Let's rock!",4)
					ANSWER("Away we go...",4)
					ANSWER("Okay. Here we go.",4)
				else
					if (var3 < var1) then
						SAY("Hmmm..."..var1.." to "..var3.." Carry on. You are still ahead of me.")
						ANSWER("Okay. On we go.",21)
					else
						if (var1 == var3) then
							SAY(""..var1.." to "..var3..". Equals. We have to play another round.")
							var1=0
							var3=0
							ANSWER("Okay. Carry on!",4)
							ANSWER("Away we go.",4)
							ANSWER("Alright. Let's carry on.",4)
							ANSWER("Okay! Let's rock!",4)
							ANSWER("Okay. Here we go.",4)
						else
							if (pstop==1) then
								SAY(""..var1.." to "..var3..". That's my round. You want to challenge me again?")
								ANSWER("Course, man. I carry on.",3)
								ANSWER("I rather stop. Your turn.",102)	
							else
								SAY(""..var1.." to "..var3..". I better stop. Too risky. You carry on if you want to.")
								nstop=1
								ANSWER("Okay. Here we go.",4)
							end
						end
					end
				end
			end
		end
	end

	
-- Dialog Ausstiege 
	NODE(100)
		SAY("Oh you are boring! Piss off, before you mess up my business.")
		SAY("If you don't want to play, just fuck off.")
		ENDDIALOG()

	NODE(102)
		SAY("Everything fine. Come again.")
		SAY("Come back if you feel like another game.")
		ENDDIALOG()

end