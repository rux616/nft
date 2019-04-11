--new
function DIALOG()
--Trigger
--Triggernumber,Type,Person
--6(0),killNPC,Tangent Direx of Operations McMillan
--1,D,McMillan


--Startnode, Person
--0 Human Resource
--50 McMillan


-----------------------------------------------------
--Human Resource Director

	NODE(0)
		SAY("Go and see McMillan. He sounded very excited when he asked for you.")
		STARTMISSION()
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
		
	NODE(1)
		SAY("I believe you should really meet with McMillan.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(2)
		SAY("Do you really think I am just standing here to tell you bullshit?? If I repeat something TWO times, I MEAN it!!!")
		ENDDIALOG()
		

-----------------------------------------------------
--McMillan

	NODE(50)
		SAY("Finally we have the rumourmonger himself. It is the director of operations at Tangent Technologies. We are so close to resolving this whole sad chapter. But that is only possible with your help.")
		
		ANSWER("CONTINUE",51)

	NODE(51)
		SAY("For this job we need somebody who is utterly loyal to BioTech and also very experienced at what he does. Our choice was obvious, you fulfill all these criteria. I believe you can be entrusted with this mission.")
		
		ANSWER("I feel honored and will try to do my best.",52)
	NODE(52)
		SAY("In order to close this chapter as fast as possible Seymour Jordan himself has authorized drastic measures. We simply cannot wait for the CityAdmin to take action against him.")
		
		ANSWER("CONTINUE",53)
	NODE(53)
		SAY("That is the reason why he should be killed. That should be a very strong warning to those who are involved. But for that we need an absolute loyal runner like you.")
		
		ANSWER("Alright, I will kill the director of operations of Tangent for the sake of BioTechs wellfare.",54)
	NODE(54)
		SAY("You are really admirable. You can find him in his favourite restaurant in Via Rosso Sec-3, but there is a catch. If you succeed we cannot give you any more missions. You surely understand why since you will be infamous throughout Neocron. But you will always be a member with a high esteem here at BioTech.")
		
		ANSWER("CONTINUE",55)
	NODE(55)
		
		SAY("To make certain you succeed BioTech developed a special implant that combines several powers and will support you in the assassination. This implant is not available through vendors but you already got it for free. Good luck.")
		SETNEXTDIALOGSTATE(56)
		ENDDIALOG()

--Spieler bring den Director of Operations von Tangent um Trigger 6 (0)
		
	NODE(56)
		ISMISSIONTARGETACCOMPLISHED(0)
		if(result==0)then
			SAY("You are supposed to flatline the Tangetn Director of Operations.")
			ENDDIALOG()
		else
			GIVEMONEY(100000)
			SAY("Congratulations, this warning will hopefully be strong enough for Tangent. You have done a great service for BioTech. At the end I would also like to give you these 100,000 Credits personally as a reward. It was authorized straight from the top. Good luck on your way into the future and think about founding a clan to further support BioTech as excellent as you already did.")
			EPICRUNFINISHED(5,5)
			ACTIVATEDIALOGTRIGGER(1)
			ENDDIALOG()
		end	

end