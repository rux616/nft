--new
--Twilight Guardian

function DIALOG()
NODE(0)
--CANDOEPICRUN(factionid, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(factionid, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(15,0)
-- Fraktion wird überprüft
		if(result==-2)then 
				SAY("Tu viens pour un gros flingue?")
			
				ANSWER("Exactement. Donnovan t'a prévenu?",2)
		else
			SAY("J'ai rien pour toi.")
			ENDDIALOG()
		end
NODE(1)
	CANDOEPICRUN(15,0)
-- Fraktion wird überprüft
		if(result==-2)then 
			GETTIMER()
			if(result>180)then
				SAY("Tu aimes les trucs qui pètent?")
			
				ANSWER("Exactement. Donnovan t'a prévenu?",2)
			else
				SAY("Hola, minute. Attends la prochaine livraison des Anges Déchus, j'ai plus du tout de grenades.")
				ENDDIALOG()
			end
		else
			SAY("J'ai rien pour toi.")
			ENDDIALOG()
		end
	NODE(2)
		SAY("Tout est en ordre. Tiens, voilà 10 Freedom Strike.")

		ANSWER("Justement, je venais pour ça.",3)
	NODE(3)
		RESETTIMER()
		GIVEITEM(9484,255)
		GIVEITEM(9484,255)
		GIVEITEM(9484,255)
		GIVEITEM(9484,255)
		GIVEITEM(9484,255)
		GIVEITEM(9484,255)
		GIVEITEM(9484,255)
		GIVEITEM(9484,255)
		GIVEITEM(9484,255)
		GIVEITEM(9484,255)
		SAY("Tiens, voilà. Pour la prochaine fournée, il va falloir attendre une livraison des Anges Déchus.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()

end