function DIALOG()

	NODE(0)
		SAY("Ils l'ont abattu! C'est l'enfer, ces bots. Allez pas l�-dedans, ils vont vous mettre en pi�ces!")
		ANSWER("A ce point?",1)	
		ANSWER("Je sais, je sais. Mais j'ai un kit m�dical!",10)	

	NODE(1)
		SAY("Tu parles! Ils nous envoy�s � la mort!")
		ANSWER("Comment est-ce qu'il s'en sort?",2)		
				
	NODE(2)	
		SAY("Il va mal! Et on a pas de kit m�dical. Y a personne pour nous aider!")
		ANSWER("Vous voulez que j'aille vous en chercher un?",3)
				
	NODE(3)
		SAY("Vous feriez �a pour nous? Je vous paierai bien!")
		ANSWER("Ouais, ouais. On en parlera plus tard. Je reviens tout de suite.",4)
		
	NODE(4)	
		SAY("D�p�chez-vous! Il ne va pas tenir longtemps!")
		ENDDIALOG()


	NODE(10)
		TAKEITEM(35)
		if (result==1) then
			SAY("Excellent. Donnez-moi �a! On peut peut-�tre encore le sauver.")
			ANSWER("Attendez! Et mon argent?",11)	
		else
			SAY("C'est pas le moment de faire des blagues. Donnez-moi un kit m�dical, ou bien laissez-moi tranquille!")
			ENDDIALOG()
		end		
		
	NODE(11)
		GIVEMONEY(550)
		SAY("Tenez, voil� 550 cr�dits. Vous nous avez bien aid�s.")
		ANSWER("Merci, et bonne chance.",4)
		
	NODE(4)	
		SAY("Prenez soin de vous.")
		ENDDIALOG()
end
