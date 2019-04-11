function DIALOG()

	NODE(0)
		SAY("Yo! What`s up.")
		
		ANSWER("Are you the pimp of these two lovelies?",1)
		ANSWER("Gotta go.",100)

--Geschlechterspaltung		
	NODE(1)
		GENDERCHECK()
		if (result==1) then
			SAY("Yeah! Right dog! Fancy a weird number?")
			ANSWER("Weird? How do you mean?",10)
		else
			SAY("Right, little one! You coming for a weird number?")
			ANSWER("I need cash!",20)
			ANSWER("Uhh… I`ll go for it. What`s so special about it?",25)
			ANSWER("I am not into that stuff man!",102)
		end

--Männer
	NODE(10)
		SAY("I have the hottest broads in the hood. Nothing for beginners. First class bargains!")
		ANSWER("Sounds sharp! What they got to offer?",11)
	NODE(11)
		SAY("First of all the right mixture! No Taboos! Each of my bitches has some hot little mutations. Multiple tits, a couple of different cunts, superlong and split tongues. Whatever you want. The freak factor is not too great. I don`t take to the extreme.")
		ANSWER("My god that's mad! I've always been looking for something like that. How much?",12)
		ANSWER("How nuts can one get? To collect mutant broads. You've got some kind of damage, man!",101)
	NODE(12)
		SAY("The price is secondary man. Fun takes first place. If you haven`t done it, you don`t know what possibilities there are. What a tongue. 15 inches long! I can just feel it...mjam!")
		ANSWER("Yes. Yes. Stop it! Just say. How much?",13)
	NODE(13)
		SAY("Randy service askes for prices accordingly, man. It starts off from 200.000 Credits. For that I can...")
		ANSWER("200.000?! You are mad! Who`s gonna pay that?",14)
	NODE(14)
		SAY("As I said before: Randy service askes for prices acc....")
		ANSWER("Forget it brother! I rather jack off!",15)
	NODE(15)
		SAY("Every man for himself, eh?")
		ENDDIALOG()
	
--Frauen		
	NODE(20)
		SAY("Soooo? What do we have here?")
		ANSWER("I want to be in the business. Pass on some square deals to me, ya'know.",21)
	NODE(21)
		SAY("Hahahah... she wants to offer herself. Hahah...")
		ANSWER("What`s there to laugh about?!",22)
	NODE(22)
		SAY("Sorry, little one, but you are absolutely average. I can`t use it and I can`t deal with it. I`ve only got 1st class broads here. All with add-ons.")
		ANSWER("Add-ons?",23)
	NODE(23)
		SAY("Each of my bitches has some hot little mutations. Multiple tits, multiple and different cunts. Super long and split tongues. Whatever you want. If you haven`t done it, you don`t know what possibilities there are. Such a tongue... 15 inches long... split... I can just feel it...mjam!")
		ANSWER("Sounds great! How much?",24)
		ANSWER("Yech! I better go before you come!",103)
	NODE(24)
		SAY("Lookee there. The little one is dead keen! But it is too expensive for you anyway! So buzz off, little one.")
		ENDDIALOG()



	NODE(25)
		SAY("Each of my bitches has some hot little mutations. Multiple tits, multiple and different cunts. Super long and split tongues. Whatever you want. If you haven`t done it, you don`t know what possibilities there are. Such a tongue...15 inches long...split... I can just feel it...mjam!")
		ANSWER("Sound great! How much?",26)
		ANSWER("Freak! I better go, before you come.",103)
	NODE(26)
		SAY("Randy service askes for prices accordingly, man. It starts off from 200 000 Credits. For that I can...")
		ANSWER("200 Grand! Are you nuts? Who`s gonna pay that?",27)
	NODE(27)
		SAY("As I said before: Randy service askes for prices acc....")
		ANSWER("Forget it! I rather play with myself!",28)
	NODE(28)
		SAY("As you like it, Sweetie.")
		ENDDIALOG()
		
-- Dialog Ausstiege			
	NODE(100)
		SAY("Cool man! Whenever you feel like a weird number, just come past!")
		ENDDIALOG()	

	NODE(101)
		SAY("Cool Man. No reason to cry. If you don't like it just piss off!")
		ENDDIALOG()

	NODE(102)
		SAY("No reason to go off you rocker. You don't like it? So fuck off!")
		ENDDIALOG()
		
	NODE(103)
		SAY("Hahaha... just move on Baby!")
		ENDDIALOG()
		
end