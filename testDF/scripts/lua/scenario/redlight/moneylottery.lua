function DIALOG()

	NODE(0)
		SAY("Great chances! Great winnings! Come on, try you luck.")
		ANSWER("What do you want me to do?",1)
		ANSWER("What is it about?",1)
		ANSWER("I never gamble! It costs money and makes you addicted.",101)
		ANSWER("Forget it! All you want to do is to get at other peoples money.",101)
		
	NODE(1)
	if (node==state) then
	counter=0
		SAY("You buy a lottery ticket and I tell you how much you have won! I offer a 30% chance of winning, with amax win of 100 000 Credits. Just let that go over you tongue! One…hundred…thousand! Sounds hot huh? You simply buy a ticket for 100 Credits and it says on there how much you have won.")
		ANSWER("Right with me. I go for it . Here's the cash.",5)
		ANSWER("Never! I won't throw away my money! Look for another sucker!",101)
	end

	NODE(5)
	if (node==state) then
		TAKEMONEY(100)
		if (result==1) then
			SAY("Oohkay! –Here we go! Your ticket!")
			SAY("Here we go.")
			SAY("Fine! Here's your ticket!")
			counter = counter + 1
			ANSWER("Now it is getting exciting!",10)
			ANSWER("Thanks! Eh, but I am excited now!",10)
			ANSWER("Right! Let's see now.",10)
		else
			SAY("No money, no game! Sorry.")
			ENDDIALOG()
		end
	end
			
	NODE(10)
	if (node==state) then
		RAND(10000)
		if (result < 1) then
			SAY("Hurry, man! We all wanna see, what you've won!")
			ANSWER("CRAAYSEY!! I've hit it! I won the super price! My lucky day!",20)
			counter = 0
		--end
		else
			if (result < 49) then
				SAY("And? What have you got?")
				ANSWER("Wow! Super! I've won! Look here.",21)
				counter = counter - 10
				if (0 > counter) then
					counter = 0
				end
			--end
			else
				if (result < 150) then
					SAY("Open it and let's see what it says on the ticket.")
					ANSWER("Hey! Cool! I think I won something...",22)
					counter = counter - 6
					if (0 > counter) then
						counter = 0
					end
				--end
				else
					if (result < 800) then
						SAY("Open it and let's see what it says on the ticket.")
						ANSWER("Not bad. I won something, I think....",23)
						counter = counter - 4
						if (0 > counter) then
							counter = 0
						end
					--end
					else
						if (result < 2000) then
							SAY("Let's see! What's it say?")
							ANSWER("Oh, well. Better than nothing. Look...",24)
							ANSWER("We are on the right track. Look...",24)
							ANSWER("Well...better than nothing. Look...",24)
							counter = counter -2
							if (0 > counter) then
								counter = 0
							end
						--end
						else
							if (result < 10000) then
								if (counter==1) then
									SAY("You win?")
									ANSWER("Stuff-all!",25)
									ANSWER("Nothing!",25)
									ANSWER("Bad luck. A blanc.",25)
									ANSWER("OOOH. Nothing.",25)
								else
									if (counter<3) then
										SAY("And? Did you win this time?")
										SAY("And? What does it look like?")
										SAY("Now you've won!")
										ANSWER("Again! A blanc.",25)
										ANSWER("Nothing again.",25)
										ANSWER("Bad luck, another blanc.",25)
										ANSWER("OOH. Nothing again.",25)
									else
										if (counter<6) then 
											SAY("And? Did you win this time?")
											SAY("And? What's it look like this time?")
											SAY("Did you win this time?")
											ANSWER("Another blanc! Can a man win here at all?",25)
											ANSWER("Nothing again! Man there is something wrong with your 30% chance!",25)
											ANSWER("Nothing again! I just hope that you are not trying to rip us off.",25)
											ANSWER("You are crooking, man! Nothing again.",25)
										else
											if (counter<9) then
												SAY("And? Did you win now?")
												SAY("And? What's it look like now?")
												SAY("Did you win now?")
												ANSWER("Damn it! Another blanc. I am getting fed up with this!",25)
												ANSWER("Fuck! Blancs! Nothing but blancs! Fuck!",25)
												ANSWER("Shit! Lost! Again! Fuck!",25)
												ANSWER("Damn it! Thrown-away-money! That's what it is! Shit!",25)
											else
												ANSWER("Hey! Finally! *whisper*. Would you believe it? A 10.000 ticket!",11)
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
	end	
	
	NODE(11)
		SAY("Super! We have a winner! Let's see your ticket!")
		ANSWER("Huh? Why? Don`t you trust me?",12)
	NODE(12)
		SAY("Rules are rules! Give the ticket!")
		ANSWER("You can trust me!",13)
	NODE(13)
		SAY("Come on! Ticket! Then you get your price!")
		ANSWER("Huh...  Alright... here you are.",14)
	NODE(14)
		SAY("What's this? A blanc! Are you trying to cheat one me?")
		ANSWER("*cough*...Gotta go. Have this appointment there....",15)
	NODE(15)
		SAY("Fuck off, you bastard! With people like you I want nothing to do!")		
		ENDDIALOG()
		
	NODE(20)
		GIVEMONEY(100000)
		SAY("Unbeleaveable! The jackpot has been cracked! Congratulation to the lucky winner! Here`s your winnings. 100.000 Credits!!! Wanna test your luck again?")
		ANSWER("Unbeleaveable!!! It's my lucky day today! Gotta make use of that! Give us another ticket there!",5)
		ANSWER("Never had that much luck in my life! I leave it like that. You can't top that anymore.",100)

	NODE(21)
		GIVEMONEY(10000)
		SAY("10.000 Credits. The top winner today! Congratulations! Want to give it another try?")
		ANSWER("Thanks man! I think it's my lucky day. I try again.",5)
		ANSWER("Never had that much luck in my life! I leave it like that. You can't top that anymore.",100)

	NODE(22)
		GIVEMONEY(1000)
		SAY("1.000 Credits! There you are. Easily made money on a wonderfull day like today. Can be more. Wanna try again?")
		ANSWER("I feel lucky today. I'll try again. Give me another ticket.",5)
		ANSWER("Money does not grow on trees, so I am not going to waste it. Look for another sucker.",100)

	NODE(23)
		GIVEMONEY(100)
		SAY("One hundred Credits for the Runner! Want to make more of it and try again?")
		ANSWER("Can't stop with a wee bit of a win. Give me another ticket.",5)
		ANSWER("I am not going to waste my money!",100)

	NODE(24)
		GIVEMONEY(50)
		SAY("50 Credits. Here's your money. Another ticket? Another try?")
		ANSWER("Yes I am going to try again. Have to get my money back.",5)
		ANSWER("I am not going to waste my money. Look for another sucker.",100)
	
	NODE(25)
	if (node==state) then
		if (counter<3) then
			SAY("Try your luck again!")
			SAY("Who dares, wins!")
			SAY("Come on ! Try again! You'll win now!")
			ANSWER("Alright. Give me another ticket.",5)
			ANSWER("Alright! I'll try.",5)
			ANSWER("Naah! I think I am not lucky today. I'll try some other time.",100)
		else
			if (counter<6) then
				SAY("Carry on. Only who dares wins.")
				SAY("You shouldn`t stop. The statistics are in your favour.")
				SAY("Who doesn`t dare, doesn`t win. The statistics are in your favour.")
				ANSWER("Grrr...Oh well. Can only get better. Give me another of them tickets.",5)
				ANSWER("Oh well. But I warn you! Don't cheat!",5)
				ANSWER("No! Not today! Maybe some other time.",100)
			else
				if (counter<9) then
					SAY("Come on. If you play often enough, you just have to win!")
					SAY("Buy more tickets. You can't loose! Everything will balance.")
					ANSWER("Fuck! I can't stop like this! Give! Damn it.",5)
					ANSWER("Shit! I wanna win! Give me the bloody ticket!!",5)
					ANSWER("Don`t talk shit! I'll pass!",100)
				end
			end
		end
	end

-- Dialog Ausstiege 
	NODE(100)
		SAY("Allright. Come again later for another game.")
		ENDDIALOG()	

	NODE(101)
		SAY("Aaah you asshole! Buzz off! You wreck my business.")
		SAY("If you don't want to play, piss off.")
		ENDDIALOG()
end