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
-- Fraktion wird �berpr�ft
		if(result==-2)then 
				SAY("Tu viens pour un gros flingue?")
			
				ANSWER("Exactement. Donnovan t'a pr�venu?",2)
		else
			SAY("J'ai rien pour toi.")
			ENDDIALOG()
		end
NODE(1)
	CANDOEPICRUN(15,0)
-- Fraktion wird �berpr�ft
		if(result==-2)then 
			GETTIMER()
			if(result>180)then
				SAY("Tu aimes les trucs qui p�tent?")
			
				ANSWER("Exactement. Donnovan t'a pr�venu?",2)
			else
				SAY("Hola, minute. Attends la prochaine livraison des Anges D�chus, j'ai plus du tout de grenades.")
				ENDDIALOG()
			end
		else
			SAY("J'ai rien pour toi.")
			ENDDIALOG()
		end
	NODE(2)
		SAY("Tout est en ordre. Tiens, voil� 10 Freedom Strike.")

		ANSWER("Justement, je venais pour �a.",3)
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
		SAY("Tiens, voil�. Pour la prochaine fourn�e, il va falloir attendre une livraison des Anges D�chus.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()

end