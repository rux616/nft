function DIALOG()
----------------------------------------------------
-- Script start

	NODE(1)
		SAY("Que puis-je faire pour vous?")
		SAY("Puis-je vous aider?")
		-- example for answer:
		ANSWER("Je veux acheter quelque chose!",3) -- answer text, resulting node 
		ANSWER("Je veux te botter le cul!",5) -- answer text, resulting node 
		ANSWER("Merci, je ne fais que regarder.",2) -- answer text, resulting node 

	NODE(2)
		SAY("Ok.");
		ENDDIALOG()

	NODE(5)
		SAY("Ne me faites pas de mal!")
		SAY("Ne me touchez pas, pitié!")
		ENDDIALOG()


	NODE(3)
		SAY("Que désirez-vous?")
		-- example for answer:
		ANSWER("Que voulez-vous dire?!",3)
		ANSWER("bah... rien!",2) 


-- Script end
----------------------------------------------------
end