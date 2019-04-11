function DIALOG()

	NODE(0)
	
	
		SAY("Welcome to Twilight Guardian, Runner. Choose freedom and become one of us.")
		
		ANSWER("Well, yes... I actually wanted to get some information before I decide.",1)
		ANSWER("Hmm, tell me something about yourselfs! Why should I join you? What do you have to offer?",1)
		   ANSWER("Yes!!! I join! DOWN WITH REZA!!!!",2)
		   ANSWER("Sounds cool, where do I sign up?",2)
	        ANSWER("Gotta go!",3)
	        ANSWER("Go to hell you damned terrorists! I want nothing to do with that.",3)
	        
	        
	NODE(1)
	
	
		SAY("The TG consists of freedom loving individuals that don't want to be suppressed by a totalitarian and useless government. We rather die than throw ourselves at the feet of those swine. I can see it in your eyes, deep inside you admire us for our courage. This is you opportunity to become one of us - use it!")
		
		ANSWER("Hmm, that sounds damned good. I'm also fed up with this government, that's why I'll join.",2)
		ANSWER("I can follow up on these ideas. I'm your man.",2)
		ANSWER("Wow! Thanks for opening my eyes. Now I have a reason to live for.",2)
		     ANSWER("Sounds good as a basic idea. But it's a little too much, as far as I am concerned. Actually I am quite happy with what I have.",3)
		     ANSWER("Go to hell, you bloody terrorists! I want nothing to do with that!!!",3)
		     ANSWER("Gotta go.",3)
		    
		    
	NODE(2)
	
	
		SAY("A wise decision my friend. You won't be sorry. Go and see our contact person at TG headquarters.")
		ENDDIALOG()
		
	NODE(3)
	
	
		SAY(""As you wish. If you ever change your mind, you are welcome to come back.")
		ENDDIALOG()
		



end