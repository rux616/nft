--single_ag_breed
--

function DIALOG()

	NODE(0)
		GENDERCHECK()
			if (result==1) then -- Male
				SAY("Salut mec, �a va comme tu veux ?")
				SAY("'lut mec, je peux faire quoi pour toi ?")
				SAY("Yo mec, j'peux t'aider ?")
		        	
				ANSWER("Je suis l� pour l'extermination. Le probl�me de vermines, un truc comme �a. Qu'est-ce que je dois faire ?",1)
				ANSWER("J'ai accept� un job d'extermination, et on m'a dit d'aller vous voir, qu'est-ce que je fais maintenant ?",1)
				ANSWER("Je suis l� pour l'extermination. Alors, qui c'est que je dois tuer ?",1)
				ANSWER("'mec', tu dis ? J'ai d� me tromper d'endroit. Bye.",4)
				ANSWER("'mec' ? T'as d� me confondre avec un autre. Bye.",4)
			
			else -- Female
				SAY("Salut m'zelle, �a va comme tu veux ?")
				SAY("'lut m'zelle, je peux faire quoi pour toi ?")
				SAY("Yo m'zelle, j'peux t'aider ?")
		        	
				ANSWER("Je suis l� pour l'extermination. Le probl�me de vermines, un truc comme �a. Qu'est-ce que je dois faire ?",1)
				ANSWER("J'ai accept� un job d'extermination, et on m'a dit d'aller vous voir, qu'est-ce que je fais maintenant ?",1)
				ANSWER("Je suis l� pour l'extermination. Alors, qui c'est que je dois tuer ?",1)
				ANSWER("M'zelle, tu dis ? J'ai d� me tromper d'endroit. Bye.",4)
				ANSWER("M'zelle ? Tu as d� me confondre avec une autre. Bye.",4)
			end

	NODE(1)
		SAY("T'attends pas � de la grande aventure, ce sera plus un entra�nement. J'ai besoin que tu tues, j'sais pas... %TARGET_VALUE(0,1) %TARGET_NPCNAME(0). Ouais, et reviens apr�s pour toucher ton fric. Ou bien reviens jamais si t'en veux pas, c'est pas mon probl�me.")
		SAY("Super, je t'attendais. Ce sera tout simple, faut tuer %TARGET_VALUE(0,1) saloperies de %TARGET_NPCNAME(0). Reviens une fois que tu as fini pour toucher ton fric. Ou bien reviens pas et tu toucheras rien du tout, m'en fiche.")
SAY("OK, c'est tout simple, t'auras juste � chasser un peu. On va dire que tu tueras, je sais pas, moi...  des %TARGET_NPCNAME(0). Ouais, disons %TARGET_VALUE(0,1). Tue-les, et reviens pour toucher ton fric. Allez, on se bouge, la chasse aux %TARGET_NPCNAME(0) est ouverte !")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("H� toi, qu'est-ce que tu fais ici ? Si tu veux pas finir ton job, d�gage, moi je m'en fiche. Et m'emb�te plus.")
				SAY("C'est pas vrai ! Mais tu fais quoi ici ? Va tuer les %TARGET_NPCNAME(0), et va te faire du fric, tu assimiles �a ?")
				SAY("H�, si tu veux pas de fric, pas de probl�me. Si tu veux ton fric, alors va tuer les %TARGET_NPCNAME(0). C'est pas dur. Alors arr�te de me faire perdre mon temps.")
				ENDDIALOG()
			else
				SAY("Bon travail. J'esp�re que tu as pas trop sali tes chaussures. Tiens, voil� %REWARD_MONEY() cr�dits. Maintenant, d�gage.")
				SAY("Bien jou�, voil� tes %REWARD_MONEY() cr�dits. Pas mal, les mont�es d'adr�naline, hein ? Enfin bon, j'ai plein de trucs � faire, moi. On se reverra � l'occasion.") 
				SAY("Tiens, revoil� le d�ratiseur fou ! Tu t'es bien amus� ? Tiens, voil� tes %REWARD_MONEY() cr�dits. On se croisera peut-�tre au Pussy Club un de ces jours et tu me paieras un coup � boire, hein ? HA ! Allez, � la prochaine.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		GENDERCHECK()
			if (result==1) then -- Male
			SAY("Bien. Bon retour chez toi, frangin.")
			SAY("Sache que la vie est courte, frangin, comme disait je sais plus qui. Et sache que tu me fais perdre mon temps.")
			
			else
			SAY("Bien. Bon retour chez toi, frangine.")
			SAY("Sache que la vie est courte, frangine, comme disait je sais plus qui. Et sache que tu me fais perdre mon temps.")

			end
		ENDDIALOG()
end
