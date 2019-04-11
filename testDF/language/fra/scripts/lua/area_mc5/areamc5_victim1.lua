function DIALOG()

	NODE(0)
		SAY("Ils l'ont abattu! C'est l'enfer, ces bots. Allez pas là-dedans, ils vont vous mettre en pièces!")
		ANSWER("A ce point?",1)	
		ANSWER("Je sais, je sais. Mais j'ai un kit médical!",10)	

	NODE(1)
		SAY("Tu parles! Ils nous envoyés à la mort!")
		ANSWER("Comment est-ce qu'il s'en sort?",2)		
				
	NODE(2)	
		SAY("Il va mal! Et on a pas de kit médical. Y a personne pour nous aider!")
		ANSWER("Vous voulez que j'aille vous en chercher un?",3)
				
	NODE(3)
		SAY("Vous feriez ça pour nous? Je vous paierai bien!")
		ANSWER("Ouais, ouais. On en parlera plus tard. Je reviens tout de suite.",4)
		
	NODE(4)	
		SAY("Dépêchez-vous! Il ne va pas tenir longtemps!")
		ENDDIALOG()


	NODE(10)
		TAKEITEM(35)
		if (result==1) then
			SAY("Excellent. Donnez-moi ça! On peut peut-être encore le sauver.")
			ANSWER("Attendez! Et mon argent?",11)	
		else
			SAY("C'est pas le moment de faire des blagues. Donnez-moi un kit médical, ou bien laissez-moi tranquille!")
			ENDDIALOG()
		end		
		
	NODE(11)
		GIVEMONEY(550)
		SAY("Tenez, voilà 550 crédits. Vous nous avez bien aidés.")
		ANSWER("Merci, et bonne chance.",4)
		
	NODE(4)	
		SAY("Prenez soin de vous.")
		ENDDIALOG()
end
