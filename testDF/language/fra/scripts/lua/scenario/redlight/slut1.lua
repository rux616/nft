function DIALOG()

--Geschlechterspaltung		
	NODE(0)
		GENDERCHECK()
		if (result==0) then
			SAY("Salut mon chou, tu veux me tenir chaud?")
			
			ANSWER("T'as pas froid, habill�e comme �a, ma puce?",10)
			ANSWER("Faut que je m'en aille.",100)
		else
			SAY("Salut ma belle, qu'est-ce que tu dirais d'une nuit rien qu'� nous?")
			ANSWER("J'ai l'air d'une gouine, esp�ce de salope?",102)
		end

--M�nner
	NODE(10)
		SAY("Pas quand je vois un bel �talon dans ton genre. Tu m'emm�nes faire un tour de cheval?")
		ANSWER("Ouais, c'est quoi ton prix?",11)
		ANSWER("Euh.. j'sais pas trop... C'est combien?",11)
		ANSWER("Laisse tomber, beaut�. Laisse tomber...",101)
	NODE(11)
		SAY("Une branlette sur place, 1.000 cr�dits, l'amour pour 5.000, et la totale pour 25.000.")
		ANSWER("Euh... Une branlette, ici sur l'trottoir?",12)
	NODE(12)
		SAY("Bien s�r mon coeur, je ferai tout pour te rendre heureux.")
		ANSWER("Quand on m'parle comme �a, �a m'fait tout dr�le... ",13)
	NODE(13)
		SAY("Alors?")
		ANSWER("Allez, c'est parti!",14)
	NODE(14)
		SAY("*se frotte langoureusement et glisse la main discr�tement dans le pantalon, et commence � faire son affaire*")
		ANSWER("...hmm... ouah...",15)
	NODE(15)
		SAY("*se frotte contre le runner, et lui murmure � l'oreille* Tu vois cette poup�e l�-bas? Je crois qu'elle est en train de nous mater...")
		ANSWER("Hmmmmoui vas-y continue, continue...",16)
	NODE(16)
		SAY("Tu aimes ce que je te fais?")
		ANSWER("T'arr�te pas, change pas de main, j'sens qu'�a vient... Ouais! OUAIS!!!!*ouvre de grands yeux, le corps secou� de spasmes*",17)
	NODE(17)
		TAKEMONEY(1000)
		SAY("*Se recule en souriant* Alors mon chou, c'�tait comment?")
		ANSWER("J'en reviens pas... Et tout �a sur le trottoir! Du service de premi�re classe! Tiens, voil� ton argent.",18)
	NODE(18)
		SAY("Contente que �a t'aie plu. Si tu veux revenir un soir...")
		ENDDIALOG()
	

-- Dialog Ausstiege			
	NODE(100)
		SAY("Reviens quand tu veux, mon beau. Je te ferai du boulot de premi�re classe.")
		ENDDIALOG()	

	NODE(101)
		SAY("R�fl�chis-y, mon beau. J'attends ici, rien que pour toi.")
		ENDDIALOG()

	NODE(102)
		SAY("D'accord! Si c'est pas ton truc, c'est pas une raison pour t'�nerver!")
		ENDDIALOG()

end