--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--0,D,Hontoka
--1,D,Pater Morpheus
--2,D,Jenna
--Items->NONE

--Startnode, Person
--0,Human Resource
--50,Hontoka
--100,Pater Morpheus
--150,Jenna

-----------------------------------------------------
--Human Resource Director

NODE(0)
	SAY("Something came up again. Do you remember the murder of Defries? Well, its seems that this was not supposed to be the end. There was another murder of a CityAdmin employee of a similar rank to Defries.")
	
	ANSWER("CONTINUE",1)
NODE(1)
	SAY("I hope this will not spread even further. In any case, the NCPD has allocated all available forces to the investigation of this case.")
	
	ANSWER("CONTINUE",2)
NODE(2)
	SAY("It does not seem that easy to solve this mystery, since all investigations usually stop in a dead end. Come on, it cannot be possible that there are so many enemies of the CityAdmin to justify such a lengthy investigation...")
	
	ANSWER("I believe you underestimate that.",3)
NODE(3)
	SAY("The main enemy is the Twilight Guardian. They constantly try to disrupt the authority of the CityAdmin, but that is nothing new. Apart from the Twilight Guardian there is only Crahn, Tsunami and the Black Dragon left.")
	
	ANSWER("CONTINUE",4)
NODE(4)
	SAY("But Tsunami and Black Dragon are too occupied with their own business and their rivalry. And Crahn is only a remnant of their broken government. They still mourn their loss of power.")
	
	ANSWER("But you underestimate the personal motivations that could lead people to despise the CityAdmin.",5)
NODE(5)
	SAY("I believe you are wrong there, the CityAdmin is fully supported by its citizens. Some citizens even control Neocron together with Reza. But that is not why I wanted to speak with you. The NCPD is very taxed at the moment.")
	
	ANSWER("CONTINUE",6)
NODE(6)
	SAY("That is why the CityAdmin decided to allow Runners to investigate into that as well and thus help the NCPD. Information about various contacts have been forwarded to me and I have subsequently assigned the appropriate resulting missions to several Runners.")
	
	ANSWER("CONTINUE",7)
NODE(7)
	SAY("Unfortunately those Runners who volunteer for such a task or who are qualified enough are a rare breed. That is why I thought about you.")
	
	ANSWER("You are telling me that I am not qualified enough?! And now you are asking me because you have no other Runners left?!!",8)
NODE(8)
	SAY("My reasoning is not subject to a debate. Even if you do not seem to accept it, there are Runners that are better suited for such a job than you are. I did not want to express it in such a harsh manner, however.")
	
	ANSWER("CONTINUE",9)
NODE(9)
	SAY("If you decide not to follow up this assignment I will of course have to make a note in your file. You should have learned to control your temperament by now.")
	
	ANSWER("Alright, I am cool. What is the assignment all about?",10)
	ANSWER("I am not yet in the mood for another task.",13)
NODE(10)
	SAY("NCPD has informed us that a certain contact person of the Tsunamis with the name of Hontoka is interested in selling information to us. It could be important for the murder case but since the information is offered by a Tsunami I do not know how reliable it will be. I doubt it to be honest.")
	
	ANSWER("CONTINUE",11)
NODE(11)
	SAY("But the CityAdmin would not be where it is today if it did not take all possibilities into consideration. You can find him in the Industrial district 02. If you get enough information talk to officer Jenna afterwards. I assume you already met her.")
	STARTMISSION()
	SETNEXTDIALOGSTATE(12)
	ENDDIALOG()	

NODE(12)
	SAY("Focus on the assignment. Hontoka is still waiting in Industrial 02 for you. If you have enough information go and visit the NCPD.")
	ENDDIALOG()

NODE(13)
	SAY("Why don't you rest a little and come back when you feel that you are ready for a new assignment.")
	ENDDIALOG()		

-----------------------------------------------------
--Hontoka

NODE(50)
	SAY("Are you the contact person form the CityAdmin?")
	
	ANSWER("Yes, I was told you have information for us. I hope it will pay off to make this long trip just to meet you.",51)
NODE(51)
	SAY("I believe it will. Do you really think I would meet you in a place like this if it wasn't?")
	
	ANSWER("Alright, what have you got?",52)
NODE(52)
	SAY("Not so fast!! I think I can expect some kind of compensation for this information since it might help to solve a murder. It should be worth something.")
	
	ANSWER("Who told you about the murder?",53)
NODE(53)
	SAY("That is common knowledge by now. The walls in Neocron have eyes and ears even if many of them are from Reza and his CityAdmin.")
	
	ANSWER("Reza is not what we are discussing here. Concentrate on the topic. What do you want for it then?",54)
NODE(54)
		SAY("Hehee. That is the beauty about it. I just want a small Datacube. Small and unimportant. Then I will tell you what I know. Don't keep me waiting too long.")
		SETNEXTDIALOGSTATE(55)
		ENDDIALOG()
	
NODE(55)
	TAKEITEM(1501)
	if(result==0)then
		SAY("Hurry and bring a datacube to me.")
		ENDDIALOG()
	else
		SAY("Do you have it?")
	
		ANSWER("Yes, take it and then tell me your story,",56)
	end
NODE(56)
	SAY("Datacubes are very fascinating. You can track them back to every individual owner, did you know that? Hehee. That was also an invention of the CityAdmin to keep a closer eye on their citizens.")
	
	ANSWER("CONTINUE",57)
NODE(57)
	SAY("But I shall tell you what information I gathered. There is supposed to be a meeting between Crahn and Twilight Guardian and I believe you should closely follow their movements.")
	
	ANSWER("Could that be a little bit more precise?",58)
NODE(58)
	SAY("Alright, Runner. Visit Father Morpheus in the Crest Village. I have heard the meeting is about the exchange of information. Even if that is only partially true. Do you want to know what they really exchange?")
	
	ANSWER("Don't keep me in suspense, tell me.",59)
NODE(59)
	SAY("Crahn is selling information about important CityAdmin employees. Guess what this information is used for...")
	
	ANSWER("The murder...",60)
NODE(60)
	SAY("Not bad, a CityAdmin Runner with a brain and who can use it. Visit Father Morpheus. He will not be pleased to be visited by a CityAdmin but you might get some more information. And now get lost, it would not look good if I was seen talking to a CityAdmin.")
	SETNEXTDIALOGSTATE(61)
	ACTIVATEDIALOGTRIGGER(0)
	ENDDIALOG()
	
NODE(61)
	SAY("Father Morpheus can be found in Crest Village. I don't have more to say, so bugger off!")
	ENDDIALOG()

-----------------------------------------------------
--Padre Morpheus

NODE(100)
	ISMISSIONTARGETACCOMPLISHED(0)
	if(result==0)then
		SAY("I have no wish to speak to you.")
		ENDDIALOG()
	else
		SAY("Hrmph. What do you desire?")
	
		ANSWER("You are Father Morpheus, yes? I have a few questions.",101)
	end
NODE(101)
	SAY("Who are you to assault me with your questions?")
	
	ANSWER("I am from CityAdmin. That should be reason enough for you to answer my question.",102)
NODE(102)
	SAY("You still have much to learn and I feel the chaos in your mind. The CityAdmin? A Runner of the CityAdmin would not visit a Father of the Crahn faction unless he hopes to gain something from that. Maybe I will have what you desire already here.")
	
	ANSWER("Very well. Is it true that Crahn has records about CityAdmin employees?",103)
NODE(103)
	SAY("Everybody makes a mental note of somebody he met, why shouldn't we do that too? Yes, we have information about you. Crahn has given us the gift to catch the most secret thoughts out of the very heads of other people.")
	
	ANSWER("You are even admitting it! Isn't there anything left that hasn't got Crahn fingerprints all over it? Have you given this information to the Twilight Guardian?",104)
NODE(104)
	SAY("What if I say yes? Will there be an uproar from the CityAdmin? Will they annihilate us and the Twilight Guardian? I don't think so. Maybe I could help you better if I better understood what precisely you want.")
	
	ANSWER("Don't play dumb with me! The two CityAdmin employees that were killed in cold blood are already known everywhere.",105)
NODE(105)
	SAY("That proves nothing! It only proves that even CityAdmin employees are not invincible but mortal, like the rest of us. Was that everything? CityAdmin?")
	
	ANSWER("You don't seem to like the CityAdmin very  much.",106)
NODE(106)
	SAY("I only see how Reza is ruining Neocron. Everything that was carefully created by us is systematically destroyed. Everything within Neocron is getting worse each day.")
	
	ANSWER("That is very arrogant and would cost your life within the boundaries of Neocron. You are lucky to be in the Wastelands. And after all it was you who destroyed everything! Your dictatorship almost ruined Neocron! It was our luck that Reza freed us of that cruel situation.",107)
NODE(107)
	SAY("How naive. You really believe that Reza is your saviour? Back when the psi monk government was still operational everything was in order. It was only when Reza and his CityAdmin took over that everything started going downhill. The Outzone was the first to fall. At one time the Outzone was a striving and lively place full of busy people.")
	
	ANSWER("CONTINUE",108)
NODE(108)
	SAY("Today it is a monument to the unbelievable incapability of the government and therefore Reza himself.")
	
	ANSWER("Don't twist the facts! Who committed all these heineous experiments on humans?! Who held the citizens of Neocron under slave like conditions?! You! You bitching Crahn! Do you know what I think about your Crahn? I give a shit on Crahn! Without that asshole everything would be better!",109)
NODE(109)
	SAY("ENOUGH! To insult Crahn can only be revenged with your blood!")
	ATTACK()
	ENDDIALOG()
	


-----------------------------------------------------
--Officer Jenna

NODE(150)
	ISMISSIONTARGETACCOMPLISHED(1)
	if(result==0)then
		SAY("I am busy at the moment.")
		ENDDIALOG()
	else
		SAY("I have already been informed that you would help us once more with the investigation. Welcome on board. Could you find anything useful through the contact you were given?")
	
		ANSWER("It was a dead end. The only thing I got is that Crahn is selling information about CityAdmin employees to Twilight Guardian.",151)
	end
NODE(151)
	SAY("They did what?")
	
	ANSWER("Yeah, they sold information about CityAdmin employees to the Guardians.",152)
NODE(152)
	SAY("We knew that they have extensive information about us but we did not know that they are selling it . This alliance between Crahn and Twilight Guardian should have been taken more serious right from the beginning.")
	
	ANSWER("There is an alliance between those two? How can that be?",153)
NODE(153)
	SAY("Yes, there is an alliance. It is fragile but is kept together through their common goal I assume. In this case it is to get rid of the current government. I only have to think about it and I get dizzy.")
	
	ANSWER("CONTINUE",154)
NODE(154)
	SAY("At that time my parents have suffered strongly under the Crahn government. Another reason why I am working with the NCPD today. The reason why I would rather die before allowing Crahn to rule Neocron again.")
	
	ANSWER("But that is crazy, how would these two small groups ever be able to do that?",155)
NODE(155)
	SAY("Compare them with a virus which infests a healthy human. The virus is small in relation to the human but it will still kill him good.")
	
	ANSWER("CONTINUE",156)
NODE(156)
	GIVEMONEY(5000)
	SETNEXTDIALOGSTATE(157)
	SAY("Like two different kind of virus that you battle with appropriate methods. Don't fool yourself, they are a danger for Neocron. But what am I talking, there is so much to do. Here are your 5000 credits. Keep in shape, I am sure we could use your service again.")
	EPICRUNFINISHED(1,1)
	ACTIVATEDIALOGTRIGGER(2)
	ENDDIALOG()

NODE(157)
	SAY("Go away")
	ENDDIALOG()

end