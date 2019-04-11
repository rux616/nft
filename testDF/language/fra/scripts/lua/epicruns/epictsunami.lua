--new
--Tsunami

function DIALOG()
NODE(0)
--CANDOEPICRUN(8, epicmissionid)
--EPICMISSIONERROR_WRONGFACTION		-1
--EPICMISSIONERROR_FULLYACCOMPLISHED	-2
--EPICMISSIONERROR_MISSIONMISSIONS		-3
--EPICMISSIONERROR_ALREADYFINISHED		-4
--EPICMISSIONERROR_WRONGSKILLLEVEL		-5
--EPICRUNFINISHED(8, epicmissionid)
--STARTMISSION( missionid aus missionbase def)

	CANDOEPICRUN(8,0)
-- Fraktion wird überprüft
		if(result==-1)then 
			SAY("Tu n'es pas des nôtres, va-t-en. A moins que tu veuilles nous rejoindre?")
			
			ANSWER("Justement, ça m'intéresse.",301)
			ANSWER("Pas question. Au revoir.",300)
			ENDDIALOG()
		else
-- Alle Missionen erfüllt? wird geprüft
			CANDOEPICRUN(8,0)
			if(result==-2)then
				SAY("La seule manière de nous aider maintenant est de fonder ton propre clan.")
				ENDDIALOG()
			else
-- Abfrage ob Skillevel stimmt und dann ob die Mission schon erfüllt wurde
				CANDOEPICRUN(8,0)
				if(result==-5)then
					SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 10)")
					ENDDIALOG()
				else
						CANDOEPICRUN(8,0)
				        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------2
						CANDOEPICRUN(8,1)
						if(result==-5)then
							SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 20)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,1)
				        		if(result==-4)then
-------------------------------------------------------------------------------------------------------------------3
						CANDOEPICRUN(8,2)
						if(result==-5)then
							SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 30)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,2)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------4
						CANDOEPICRUN(8,3)
						if(result==-5)then
							SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 35)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,3)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------5
						CANDOEPICRUN(8,4)
						if(result==-5)then
							SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 40)")
							ENDDIALOG()
						else
								CANDOEPICRUN(8,4)
						        if(result==-4)then
-------------------------------------------------------------------------------------------------------------------6
						CANDOEPICRUN(8,5)
				if(result==-5)then
					SAY("Tu n'es pas assez compétent pour cette mission. Reviens plus tard (prochaine mission au niveau 45)")
					ENDDIALOG()
				else
								CANDOEPICRUN(8,5)
				        if(result==-4)then
						SAY("La seule manière de nous aider maintenant est de fonder ton propre clan.")
						ENDDIALOG()
					else
--Mission 6 wird hier gestartet
		SAY("On a encore quelques problèmes à résoudre. Va te reposer un peu en attendant.")
		
		ANSWER("Alors je vais aller voir Foster et tirer cette affaire au clair. Quand on veut que quelque chose soit fait, mieux vaut le faire soi-même.",251)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------6
					else
--Mission 5 wird hier gestartet
		SAY("Les membres de Tsunami sur lesquels nous avons des doutes ne sont pas désirés tant qu'on n'a pas fait le ménage dans cette histoire.")
		
		ANSWER("Bon, c'est dommage. Je pense que je vais devoir compter sur l'offre de Black Lily, après tout.",201)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------5
					else
--Mission 4 wird hier gestartet
		SAY("On entend de plus en plus de rumeurs au sujet d'un espion dans nos rangs. ces rumeur se répandent, et personne ne semble en mesure de les enrayer efficacement. Les gens ne se font plus confiance, ça n'est plus comme avant. Véronique a été mise au courant, et sa réponse a été une liste de tous les membres les plus loyaux de Tsunami.")
		
		ANSWER("CONTINUER",151)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------4
					else
--Mission 3 wird hier gestartet
		SAY("Voici des informations vitales au sujet du Dragon Noir et de ProtoPharm. Nous savons où ça va se passer, et quand. Mais si on empêche la rencontre, ça ne leur fera pas bien mal. Ils n'auront qu'à la faire à un autre endroit. Alors il faut tuer le représentant de ProtoPharm, et maquiller ça pour qu'ils croient que c'est un Dragon Noir qui l'a descendu.")
		
		ANSWER("Oui, mais comment? ProtoPharm n'est pas stupide, ils sauront faire la différence entre un Dragon Noir et un Tsunami.",101)
		ANSWER("J'ai eu assez de défis pour aujourd'hui, ça sera sans moi.",103)

						
					end
				end	
-------------------------------------------------------------------------------------------------------------------3
							else
--Mission 2 wird hier gestartet
		SAY("Quelle coincidence! Tu arrives juste au moment où on a besoin de toi. On a quelques problèmes avec le Dragon Noir en ce moment. Il y a eu un affrontement juste devant le club Véronique. Ils ont osé nous attaquer avec des armes à feu. On les a mis en fuite en un rien de temps, mais ils ont fait passer un message avec cette attaque. Ils nous ont attaqué sur nos propres terres. Alors il faut faire quelque chose. Tu es prêt?")
		
		ANSWER("Le Dragon Noir m'énerve en ce moment. Oui, j'accepte d'aller tuer ces rats moi-même, si c'est ce que vous attendez de moi.",51)
		ANSWER("En ce moment, ça ne m'arrange pas, je n'ai pas le temps de vous aider.",56)
						
					end
				end	
-------------------------------------------------------------------------------------------------------------------2
					else
--Mission 1 wird hier gestartet
		SAY("Tu es nouveau ici? Approche-toi, il faut qu'on parle.")
		
		ANSWER("J'écoute.",11)
						
					end
				end			
			end
		end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 1
	NODE(11)
		SAY("Un nouveau membre, on apprécie toujours. Tsunami est une grande organisation, tu t'en rendras compte bientôt. Nos membres gagnent beaucoup à travailler pour nous, mais il faut que tu saches qu'il y a pas mal de compétition ici. Tu te sens prêt à ça?")
		
		ANSWER("Evidemment. Je vais faire de mon mieux.",12)
	NODE(12)
		SAY("Alors tu vas certainement comprendre que si je faisais confiance à tout le monde sans réfléchir, je serais un tas de viande froide à l'heure qu'il est. Autant le dire tout de suite : je ne te fais pas confiance. Tu vas devoir me prouver que tu es digne de quelque chose. Me prouver que tu es loyal envers nous.")
		
		ANSWER("Je suis loyal en votre cause, ça ne fait pas de doute.",13)
	NODE(13)
		SAY("On va commencer par quelque chose de facile. On a pas envie de te perdre dans ta première mission. Mais si tu ne réussis pas cette mission, c'est la porte. C'est aussi simple que ça. Alors prépare-toi à agir.")
		
		ANSWER("J'aime pas échouer. Tu vas t'en rendre compte rapidement.",14)
	NODE(14)
		SAY("Tu sais peut-être déjà que le dirigeant de Tsunami s'appelle Véronique Duchamp. Elle tire toutes les ficelles ici, et c'est une sacrée vicieuse. S'il y a un gros coup en préparation, tu peux parier à coup sûr qu'elle est déjà là en coulisses. Et comme elle a sans arrêt plein de choses à faire, elle a besoin de s'appuyer sur des auxiliaires de temps en temps.")
		
		ANSWER("CONTINUER",15)
	NODE(15)
		GIVEITEM(9250)
		SAY("Une petite livraison. C'est simple, alors merde pas. Va porter ça à Maxime, c'est pour Eric Damnund en personne. C'est Maxime qui s'assurera de la suite du transfert. Elle fait des trajets entre Neocron et le Dôme d'York. Elle t'attend dans le secteur 10.")
		
		ANSWER("C'est du gâteau, ton affaire. Considère que c'est déjà fait.",16)
	NODE(16)
		SAY("Elle te donnera quelque chose en échange, que tu devras transmettre à Jester, un autre gars qui travaille pour nous, dans le secteur 07. Il bosse en freelance, et souvent il traîne dans les bars. Allez, fais ce que je t'ai dit.")
		STARTMISSION(3570)
		SETNEXTDIALOGSTATE(7)

		ENDDIALOG()
		
	NODE(17)
		SAY("C'est dur à comprendre ou quoi? Va dans le secteur 10, donne le paquet à Maxime, puis va livrer le paquet qu'elle te donnera à Jester dans le secteur 07. Ensuite, va parler à Taylor Gomez, dans le Secret Passage-2, près de notre QG secret à Neocron.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 2
	NODE(51)
		SAY("Non, pas tout de suite encore. Comme tu nous as prouvé que tu étais quelqu'un de sérieux, on va te confier quelque chose à faire. Notre priorité actuellement, c'est de rassembler des infos sur le Dragon Noir, sur ce qu'ils préparent contre nous. Et on veut aussi se venger de ce qu'ils nous ont fait.")
		
		ANSWER("L'importance de la menace?",52)
	NODE(52)
		SAY("Actuellement, il y a des affrontements presque quotidiens entre nos deux factions. Ils essaient de nous prendre des parts de marché en menaçant nos clients et nos danseuses. On peut pas les laisser continuer comme ça. On va leur apprendre qu'on cèdera pas, et qu'il en est pas question.")
		
		ANSWER("A part en tuer quelques uns, je vois rien d'efficace...",53)
	NODE(53)
		SAY("On a réussi à infiltrer un des nôtres dans leur hiérarchie. Elle s'appelle Leila. Tu lui porteras un petit paquet, ça l'aidera à foutre le bronx dans leur organisation.")
		
		ANSWER("Où est-ce que je le trouve, ce paquet?",54)
	NODE(54)
		SAY("C'est Jester qui l'a. Va lui prendre, et donne-le à Leila. Ils devraient pas apprécier la surprise, je pense. Pense à préciser à Leila que la cible doit être soit Gecko, soit Trond directement, c'est le big boss de cette bande de merdeux.")
		
		ANSWER("Où est-ce que je peux trouver Leila?",55)
	NODE(55)
		SAY("Pas loin du QG Dragon Noir, c'est l'endroit convenu. Une fois qu'elle a le tout, va confirmer la réussite à Taylor Gomez, dans notre QG secret à Neocron.")
		STARTMISSION(3571)
		SETNEXTDIALOGSTATE(7)
		ENDDIALOG()
		
	NODE(56)
		SAY("Tsunami ne te donne pas ses missions pour te faire plaisir. Le fait que tu refuses en dit pas mal sur ton manque d'implication chez nous.")
		ENDDIALOG()
		
	NODE(57)
		SAY("Ta mission est claire : va chercher le colis auprès de Jester, transmets-le à Leila et va faire ton rapport à Taylor Gomez.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 3
	NODE(101)
		SAY("Nous avons de bons amis dans les Fils de l'Anarchie. Il faut dire qu'ils aiment bien nos clubs. Je pense qu'il doit bien leur rester quelques armes qu'ils ont eues par le Dragon Noir. On peut se servir de ces armes pour bluffer ProtoPharm. Passe voir Happy Gil, il va te mettre au parfum.")
		
		ANSWER("Je sais comment parler à ce genre de gars.",102)
	NODE(102)
		SAY("Apres, faut que tu ailles voir Raymon au secteur 06. Il a des contacts dans ProtoPharm, et il aime beaucoup le fric. Ca sera pas difficile de le convaincre de travailler pour nous. Il va maquiller le meurtre pour que ça ait l'air fait par un Dragon. File-lui l'arme que Gil te donnera, et ensuite va tuer cet abruti de ProtoPharm, Cook. Lui, tu le trouveras au point de rendez-vous, dans l'Outzone.")
		STARTMISSION(3572)
		SETNEXTDIALOGSTATE(4)
	
		ENDDIALOG()
		
	NODE(103)
		SAY("Comme tu veux. Mais sache qu'ici on n'apprécie pas les lâcheurs.")
		
		ENDDIALOG()
	NODE(104)
		SAY("Alors en piste. Va voir le fils de l'Anarchie aux portes de la ville, et puis Raymon au secteur 06. Ensuite, va faire ton rapport a Taylor.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 4
	NODE(151)
		SAY("Cette liste contient les noms des personnes à qui on peut réellement faire confiance. Ca veut dire que de nombreux membres de seconde zone doivent être tenus à distance, et tu en fais partie. Je sais bien que tu fais partie de ceux qui ont beaucoup fait pour Tsunami récemment. Je pourrais essayer de te faire inscrire sur cette liste, mais pour ça il faudra tester ta loyauté une nouvelle fois. Il faut vraiment que tu saches ce que tu veux.")
		
		ANSWER("C'est des conneries, tout ça. J'ai prouvé ma loyauté de nombreuses fois. Je n'entre pas dans ces combines de merde.",154)
		ANSWER("J'ai déjà prouvé ma valeur, et s'il le faut à nouveau, je le referai.",152)
	NODE(152)
		SAY("Officiellement c'est vrai, mais il y a des fuites au sein de Tsunami. Ta mission n'a pas été la seule preuve qu'il y a une taupe parmi nous. Je sais que tu mets ta vie en danger, mais avec tous ces Genrep qu'on voit un peu partout, risquer sa vie, çe ne veut malheureusement plus dire grand-chose. Ce que tu as la possibilité de faire, c'est un contrat pour un de nos membres les plus importants, et ça te donnerait accès à cette liste.")
		
		ANSWER("Excellent. Je t'écoute.",153)
	NODE(153)
		SAY("Si tu es loyal, alors tu n'hésiteras pas. Sinon, on n'a pas besoin de toi. Va parler à Taylor Gomez au QG. Il m'a dit qu'il avait une mission pour toi. Apparemment, il pense que tu es loyal envers nous.")
		STARTMISSION(3573)
		SETNEXTDIALOGSTATE(5)
		ENDDIALOG()
		
	NODE(154)
		SAY("Mauvais choix. Tsunami n'est pas un club dont on peut entrer et sortir comme on veut. Mets-toi ça dans ta petite tête.")
		ENDDIALOG()
		
	NODE(155)
		SAY("Je ne pense pas que Gomez va t'attendre jusqu'à la fin des temps...")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 5
	NODE(201)
		SAY("Excuse-moi, mais la situation demande toute mon attention.")
		STARTMISSION(3574)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
		
	NODE(202)
		SAY("Ne me force pas à appeler la sécurité. Va parler à Leila, puisque c'est ce que tu as envie de faire.")
		ENDDIALOG()
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Tsunami 6
	NODE(251)
		SAY("Belles paroles. Mais si tu pouvais résoudre la situation, Tsunami apprécierait.")
		STARTMISSION(3575)
		SETNEXTDIALOGSTATE(150)
		ENDDIALOG()

end

-------------------------------------------
-------------------------------------------

--FRAKTIONSWECHSEL
	NODE(300)
		SAY("Je suis occupé, fiche-moi la paix.")
		ENDDIALOG()

	NODE(301)
		GETFACTIONSYMPATHY(8)
		if(result>49)then
			SAY("Content de l'apprendre. Ton statut chez nous est correct, tu peux venir si tu paies 300.000 crédits.")
	
			ANSWER("Sacrée somme.",302)
		else
			SAY("On veut pas de toi dans la faction, dégage.")
			ENDDIALOG()
		end
	NODE(302)
		SAY("Personne ne te prendra au sérieux si tu refuses ce genre de dépenses.")

		ANSWER("Compris, je paie.",303)
		ANSWER("Pas grave, je vais pas en faire un ulcère.",300)
	NODE(303)
		TAKEMONEY(300000)
		if(result==0)then
			SAY("Dommage que tu n'aies pas assez d'argent.")
			ENDDIALOG()
		else
			CHANGEFACTION(8)
			SAY("Bienvenue chez Tsunami.")
			ENDDIALOG()
		end
end