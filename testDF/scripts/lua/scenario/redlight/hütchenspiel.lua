function DIALOG()

	NODE(0)
		SAY("Hey! Wanna try your luck? Your eye versus my hand!")
		SAY("Hey! Here you can win! All you need is a keen eye!")
		SAY("You wanna win? You`re at the right adress here! My hand against your eye! Who`s faster?")
		
		ANSWER("Cool man! What's it about?",1)
		ANSWER("Come on! What must I do?",1)
		ANSWER("I always gamble. What's it about?",1)
		
		ANSWER("Gamble? I never gamble! It `s against my principles!",100)
		ANSWER("Forget it! All you want to do is: rip people off!",100)
		
	
	NODE(1)
		SAY("Super! A real gambler! You can see that immediately! The rules are such: You give me a 1000 and I put it under the center hat. Then I move the three hats around a bit and if you can tell me under which hat your 1000 are I double up. Ready?")
		ANSWER("Of course! Here is the dough!",2)
		ANSWER("I'm not that crazy and waste my money like that! Look for another sucker!",100)

		
	NODE(2)
		TAKEMONEY(1000)
			if( result==1 ) then
				SAY("OK!...Here we go! So... Under the center hat... You see?")
				SAY("Right! Ante under the center hat... Did you watch?")
				SAY("Well here we go! Money under center hat... You saw it right?")
				ANSWER("Sure!",3)
				ANSWER("Yep.",3)
				ANSWER("Yes. .",3)
			else
				SAY("Sorry. No money, no play!")
				ENDDIALOG()
			end

	NODE(3)
	
		RAND(2)
		if( result==1 ) then
				SAY("Okay. You see? Watch the hat! Always watch it! Okay? Right. - Where`s your money?")
				SAY("Okay. Always watch the hat! Keep your eye on it! You still see it? Okay! - Which one do you want me to turn around?")
				ANSWER("I watched it closely! That one. Lift that one! Show me...",4)
				ANSWER("Hey! You're fucking me around! I saw it! I want my money back! Now! Otherwise I'll mess you up!!",101)

			else
				SAY("Okay! You watch.!  Your hat. You see it?  Still?  Keep your eye on it! - Which one must I turn?")
				SAY("OK. You watching?  Follow your hat! Keep your eye on it! - Right where is your money?")
				ANSWER("Huh... Hey! That was fast! Can we do that again?",10)
				ANSWER("Hey! You are cheating! I saw it! Give my money back! Now! Or I'll mess you up!!",101)
			end
			

	NODE(4)
		RAND(3)
		if( result==1 ) then
				GIVEMONEY(2000)
				SAY("Hands off! Keep your fingers off my hats. Let's see if you have a fast eye. - Wow you're good! Here`s your money.")
				ANSWER("Hey. Easy Money. Thanks!",5)
			else
				SAY("Sorry, man. That was it! Alright?")
				ANSWER("Shit! And I was so sure!",6)
			end

	NODE(5)
		SAY("Another round? Okay! Where`s the money?")
		ANSWER("Okay! For somebody like me that`s easy money. Here! Carry on!",2)
		ANSWER("No! That`s it for me! I want to carry on. Elsewhere!",102)

	NODE(6)
		SAY("Wanna try it again?")
		ANSWER("Course! It has to work sometime. Here. Go ahead!",2)
		ANSWER("Don't feel like it. I am not that rich!",102)

	NODE(10)
		SAY("No ways! Man! Rules are rules! Bad luck. Which one must I turn?")
		ANSWER("HMMM. Take that one. I don't know.",11)
				
	NODE(11)
		RAND(3)
		if( result==1 ) then
				GIVEMONEY(2000)
				SAY("Okay! Let`s see. Wow you are in luck. Here is your money.")
				ANSWER("Super! My lucky day. Thanks.",12)
			else
				SAY("Yucks! Bad luck!")
				ANSWER("Oh shit!",13)
			end

	NODE(12)
		SAY("Another round?")
		ANSWER("Of course! It`s my lucky day! Carry on",2)
		ANSWER("Rather not. I don`t want to stress my luck.",102)

	NODE(13)
		SAY("Wanna try again?")
		ANSWER("Of course! This just has to work! Here. Go on.",2)
		ANSWER("Nope! Money does not grow on trees.",102)



-- Dialog Ausstiege 
	NODE(100)
		SAY("You bore me to death. Piss off! You're no good for business!")
		SAY("If you don't want to play , fuck off.")
		ENDDIALOG()

	NODE(101)
		GIVEMONEY(1000)
		SAY("No, I don't cheat. Take your money and blow!")
		ENDDIALOG()		

	NODE(102)
		SAY("Fine. Come again later.")
		ENDDIALOG()	
		
end


