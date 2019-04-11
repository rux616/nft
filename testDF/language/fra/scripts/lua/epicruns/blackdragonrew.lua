--new
--Tsunami

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

	CANDOEPICRUN(9,5)
-- Fraktion wird überprüft
		if(result==-2)then 
			SAY("Tu veux des drogues?")
			
			ANSWER("Ouaip. Lucy t'a mis au courant?",2)
		else
			SAY("Désolé runner, j'ai rien pour toi. Les drogues sont uniquement pour nos dealers.")
			ENDDIALOG()
		end
NODE(1)
	CANDOEPICRUN(9,5)
-- Fraktion wird überprüft
		if(result==-2)then 
			GETTIMER()
			if(result>180)then
				SAY("Tu veux que je te file des drogues en douce?")
			
				ANSWER("Exactement. Lucy t'a expliqué?",2)
			else
				SAY("Attends, sois discret. Si j'en sors d'autres maintenant, ils vont se douter de quelque chose. Attends un peu et reviens.")
				ENDDIALOG()
			end
		else
			SAY("Désolé runner, j'ai rien pour toi. Les drogues sont uniquement pour nos dealers.")
			ENDDIALOG()
		end
	NODE(2)
		SAY("D'accord. J'ai du Paratemol Forte, du Destrosol Forte, du Whiteflash et du X-Strong.")

		ANSWER("Je prends du Destrosol Forte.",3)
		ANSWER("Je prends du Paratemol Forte.",4)
		ANSWER("Je prends du Whiteflash.",5)
		ANSWER("Je prends du X-Strong.",6)
	NODE(3)
		RESETTIMER()
		GIVEITEM(723)
		GIVEITEM(723)
		GIVEITEM(723)
		SAY("Voilà, mais attends un peu avant de repasser.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(4)
		RESETTIMER()
		GIVEITEM(722)
		GIVEITEM(722)
		GIVEITEM(722)
		SAY("Voilà, mais attends un peu avant de repasser.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(5)
		RESETTIMER()
		GIVEITEM(720)
		GIVEITEM(720)
		GIVEITEM(720)
		SAY("Voilà, mais attends un peu avant de repasser.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
	NODE(6)
		RESETTIMER()
		GIVEITEM(721)
		GIVEITEM(721)
		GIVEITEM(721)
		SAY("Voilà, mais attends un peu avant de repasser.")
		SETNEXTDIALOGSTATE(1)
		ENDDIALOG()
end