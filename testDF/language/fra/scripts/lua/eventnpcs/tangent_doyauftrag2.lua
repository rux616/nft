function DIALOG()

--Spieler kann Loot Gegenstände der DoY Kriegsmaschinen hier verscheuern
--



	NODE(0)
		SAY("Welcome, this is the technical division of Tangent. I am responsible for a lot around here but my official title is storage keeper. Are you one of the Runners who are providing Tangent with certain technical parts?")

		ANSWER("Tell me more about this, what is it all about?",1)
		ANSWER("Yes, of course. I heard that I can get quite a nice sum out of it.",2)
	NODE(1)
		SAY("Surely you have heard of those Dome of York war machines by now, didn't you? Because they are based on a new kind of technology our scientists work day and night to try and come up with an effective protection against them. That is also the reason why we need those parts from the war machines. Well, and that's how you can earn some credits. Of course we can't use every single component. Maybe you already have some with you by chance? I would buy them.")
	
		ANSWER("Yes, actually, I have. What do I get for it?",2)
		ANSWER("Sorry, but I'm not interested in that kind of business.",7)
	NODE(2)
		SAY("Yes, that depends on what you have. Show it to me.")

--4040, 4041, 4042, 4043
		ANSWER("I've got a Mercury super processing Unit right here.",3)		
		ANSWER("Here is a Nuclear energy Reactor.",4)
		ANSWER("What about Durabel hi-precision parts?",5)
		ANSWER("What do I get for a Bio-Based -mAsTeR- OS?",6)

	NODE(3)
		TAKEITEM(4040)
		if(result==0)then
			SAY("Sorry, but you don't have the part. Are you trying to annoy me or something?")
			ENDDIALOG()
		else
			GIVEMONEY(2000)
			SAY("Very good, we can't possibly get enough of that.")
			
			ANSWER("I still have more of that stuff, do I get something for that as well?",2)
			ANSWER("That's it for now.",8)
		end
	NODE(4)
		TAKEITEM(4041)
		if(result==0)then
			SAY("Sorry, but you don't have the part. Are you trying to annoy me or something?")
			ENDDIALOG()
		else
			GIVEMONEY(4000)
			SAY("Very good. Our scientists use up quite a lot of those anyway.")
			
			ANSWER("I still have more of that stuff, do I get something for that as well?",2)
			ANSWER("That's it for now.",8)
		end
	NODE(5)
		TAKEITEM(4042)
		if(result==0)then
			SAY("Sorry, but you don't have the part. Are you trying to annoy me or something?")
			ENDDIALOG()
		else
			GIVEMONEY(6000)
			SAY("Very good. There have already been requests for this particular part.")
			
			ANSWER("I still have more of that stuff, do I get something for that as well?",2)
			ANSWER("That's it for now.",8)
		end	
	NODE(6)
		TAKEITEM(4043)
		if(result==0)then
			SAY("Sorry, but you don't have the part. Are you trying to annoy me or something?")
			ENDDIALOG()
		else
			GIVEMONEY(8000)
			SAY("Not bad, we only ever had a few of those. You've hit the Jackpot there I might say.")
			
			ANSWER("I still have more of that stuff, do I get something for that as well?",2)
			ANSWER("That's it for now.",8)
		end
	NODE(7)
		SAY("I emplore you to reconsider. Once Dome of York is tearing down your appartement it will be of interest to you. Believe me.")
		ENDDIALOG()
	NODE(8)
		SAY("Thank you. You have done a great service for your city, for Neocron. If you ever get your hands on more of those components you know where to find me.")
		ENDDIALOG()

end


