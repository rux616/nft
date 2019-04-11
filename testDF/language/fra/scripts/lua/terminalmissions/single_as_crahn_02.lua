function DIALOG()

	NODE(0)
		if (result==1) then
			SAY("Greetings, Brother,how may I help you?")
			SAY("Praise be to Crahn, Brother. Now what do you seek?")
			SAY("You require my assistance, Brother?")
				
			ANSWER("Nice place, do you have anything to do around here?",1)
			ANSWER("Do you have a dispatch job?",2)
			ANSWER("Never mind. Bye",4)

		else
			SAY("Greetings, Sister,how may I help you?")
			SAY("Praise be to Crahn, Sister. Now what do you seek?")
			SAY("You require my assistance, Sister?")
				
			ANSWER("Nice place, do you have anything to do around here?",1)
			ANSWER("Do you have a dispatch job?",2)
			ANSWER("Never mind. Bye",4)
		end
	NODE(1)	
		GENDERCHECK()
			if (result==1) then
				SAY("Begone Brother, your presence upsets my inner balance!")
				SAY("Now is a time for innner reflection Brother, disturb me not.")
				ENDDIALOG()
			else
				SAY("Begone Sister, your presence upsets my inner balance!")
				SAY("Now is a time for innner reflection Sister, disturb me not.")
				ENDDIALOG()
			end
	NODE(2)
		SAY("%NPC_NAME(1), is believed to be the leader of a CityAdmin sponsored spy cell that has been trying to infiltrate the Brotherhood. Go to %NPC_WORLD(1) find %NPC_NAME(1), and then terminate their command, permanantly. Once the task is completed, return here and you will receive suitable reward.")				
		SAY("Two weeks ago the Brotherhood suffered a major setback when a goods caravan bound for Tech Haven was ambushed by the Anarchy Breed. Not only were several Brotherhood disciples killed in the attack, but the Breed managed to make off with a substantial number of hi-tech Psi modules. Recently reports by our agents indicated that %NPC_NAME(1) had been acting as a fence for the breed, selling the modules and using the profits to purchase hi-tech guns and ammunition that were ultimately bound for the breed encampments. At dawn we carried out a lightning raid upon %NPC_NAME(1) apartment, several crates of weapons and goods were captured, however %NPC_NAME(1) managed to escape our justice. We believe that they are presently hiding out in %NPC_WORLD(1), biding their time until the Breed make arrangements for them to escape to the wastelands. Your job is simple, go to %NPC_WORLD(1) and terminate %NPC_NAME(1). Once the deed is done return here and you will be suitably rewarded.")        
		SAY("A few days ago, one of our Sisters became the victim of a brutal and ultimately fatal assault whilst walking near Veroniques in the Pepper Park district. Although there were no direct witnesses at the time, through psychic scanning of those who were within the area we managed to identify the perpetrator, namely %NPC_NAME(1). Distant mind scans by some of our senior Brothers also suggest that this is not the first time that they have carried out such despicable acts. Sadly, it appears our requests to bring them to justice have fallen on deaf ears with the City Administrators. The only course of action we believe is to take matters into our own hands. You will find %NPC_NAME(1) in %NPC_WORLD(1). Go there and use whatever means you have available to remove their particular brand of human misery from the face of the planet. Once the task is complete, return here and you will be suitably rewarded.")
		SETNEXTDIALOGSTATE(3)
		ENDDIALOG()

	NODE(3)
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("I thought your instructions were clear, disciple, do not return until you have eliminated the target. Only then can you recieve your reward.")
				SAY("Why do you linger, disciple, time is of the essence! Eliminate the unholy before it is too late. Only when the task is complete will you know the benevolence of Crahn.")
				ENDDIALOG()
			else
				GENDERCHECK()
					if (result==1) then
						SAY("Excellent work, Brother, here, accept these %REWARD_MONEY() credits, as a token of the Brotherhood's continued faith in your abilities. Now begone and speak to no one of what has occurred.")
						SAY("Your efforts please Golon Kalah greatly, he has asked me personally to give you these %REWARD_MONEY() credits, as a gesture of his appreciation, Brother. Now begone and speak to no one of what has occurred.")
						SAY("Your efforts are not in vain Brother, accept these %REWARD_MONEY() credits, as a token of the Brotherhood's appreciation. Now begone and speak to no one of what has occurred.")  
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					else
						SAY("Excellent work, Sister, here, accept these %REWARD_MONEY() credits, as a token of the Brotherhood's continued faith in your abilities. Now begone and speak to no one of what has occurred.")
						SAY("Your efforts please Golon Kalah greatly, he has asked me personally to give you these %REWARD_MONEY() credits, as a gesture of his appreciation, Sister. Now begone and speak to no one of what has occurred.")
						SAY("Your efforts are not in vain Sister, accept these %REWARD_MONEY() credits, as a token of the Brotherhood's appreciation. Now begone and speak to no one of what has occurred.") 
						ACTIVATEDIALOGTRIGGER(1)
						ENDDIALOG()
					end
			end
	NODE(4)
		SAY("Good bye.")
		ENDDIALOG()
end
						
		
			