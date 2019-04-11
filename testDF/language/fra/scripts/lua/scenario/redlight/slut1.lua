function DIALOG()

--Geschlechterspaltung		
	NODE(0)
		GENDERCHECK()
		if (result==0) then
			SAY("Salut mon chou, tu veux me tenir chaud?")
			
			ANSWER("T'as pas froid, habillée comme ça, ma puce?",10)
			ANSWER("Faut que je m'en aille.",100)
		else
			SAY("Salut ma belle, qu'est-ce que tu dirais d'une nuit rien qu'à nous?")
			ANSWER("J'ai l'air d'une gouine, espèce de salope?",102)
		end

--Männer
	NODE(10)
		SAY("Pas quand je vois un bel étalon dans ton genre. Tu m'emmènes faire un tour de cheval?")
		ANSWER("Ouais, c'est quoi ton prix?",11)
		ANSWER("Euh.. j'sais pas trop... C'est combien?",11)
		ANSWER("Laisse tomber, beauté. Laisse tomber...",101)
	NODE(11)
		SAY("Une branlette sur place, 1.000 crédits, l'amour pour 5.000, et la totale pour 25.000.")
		ANSWER("Euh... Une branlette, ici sur l'trottoir?",12)
	NODE(12)
		SAY("Bien sûr mon coeur, je ferai tout pour te rendre heureux.")
		ANSWER("Quand on m'parle comme ça, ça m'fait tout drôle... ",13)
	NODE(13)
		SAY("Alors?")
		ANSWER("Allez, c'est parti!",14)
	NODE(14)
		SAY("*se frotte langoureusement et glisse la main discrètement dans le pantalon, et commence à faire son affaire*")
		ANSWER("...hmm... ouah...",15)
	NODE(15)
		SAY("*se frotte contre le runner, et lui murmure à l'oreille* Tu vois cette poupée là-bas? Je crois qu'elle est en train de nous mater...")
		ANSWER("Hmmmmoui vas-y continue, continue...",16)
	NODE(16)
		SAY("Tu aimes ce que je te fais?")
		ANSWER("T'arrête pas, change pas de main, j'sens qu'ça vient... Ouais! OUAIS!!!!*ouvre de grands yeux, le corps secoué de spasmes*",17)
	NODE(17)
		TAKEMONEY(1000)
		SAY("*Se recule en souriant* Alors mon chou, c'était comment?")
		ANSWER("J'en reviens pas... Et tout ça sur le trottoir! Du service de première classe! Tiens, voilà ton argent.",18)
	NODE(18)
		SAY("Contente que ça t'aie plu. Si tu veux revenir un soir...")
		ENDDIALOG()
	

-- Dialog Ausstiege			
	NODE(100)
		SAY("Reviens quand tu veux, mon beau. Je te ferai du boulot de première classe.")
		ENDDIALOG()	

	NODE(101)
		SAY("Réfléchis-y, mon beau. J'attends ici, rien que pour toi.")
		ENDDIALOG()

	NODE(102)
		SAY("D'accord! Si c'est pas ton truc, c'est pas une raison pour t'énerver!")
		ENDDIALOG()

end