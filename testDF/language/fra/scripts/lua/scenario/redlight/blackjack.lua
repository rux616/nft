function DIALOG()

	NODE(0)
		
		SAY("Hep, vous voulez tenter votre chance? Vous allez voir, vous allez bien vous amuser!")
		SAY("Venez jouer � un jeu o� vous avez de vraies chances de gagner, allez approchez!")
		SAY("Vous, venez affronter mes cartes! Venez par ici!")
		
		ANSWER("Cool. J'essaie.",1)
		ANSWER("Qu'est-ce que je dois faire?",1)
		ANSWER("Comment �a se passe?",1)
		
		ANSWER("Un blackjack? Je connais les r�gles! C'est parti!",3)
		
		ANSWER("Je ne joue pas, c'est contre mes principes.",100)
		ANSWER("Pas question. Vous n'en avez qu'apr�s mon fric!",100)
		
	
	NODE(1)
		SAY("Il y a une petite variante par rapport aux r�gles classiques. La r�gle : on tire des cartes chacun notre tour, et on essaie de se rapprocher de 21. Celui qui est le plus pr�s de 21 l'emporte! Et si on d�passe 21, on perd. Alors, on commence?")
		ANSWER("D'accord! Combien on mise, et combien on gagne?",2)
		ANSWER("Trouvez-vous un autre pigeon.",100)

	NODE(2)
		SAY("Vous misezce que vous voulez, et si vous gagnez, vous remportez le double! Si vous faites un blackjack, vosu remportez le triple, c'est � dire si vous faites 21 avec seulement deux cartes. Si c'est moi qui fais un blackjack, vous me payez le double.")
		ANSWER("Ca me va.",3)
		ANSWER("Nann, trop dangereux!",100)

	NODE(3)
	if (node==state) then
		var1=0
		var3=0
		
		cardcount=0
		cardcount2=0
		
		pstop=0
		nstop=0
		
		einsatz=0
		RAND(5)
		
		tmpeinsatz1 = (result+1)*1000
		tmpeinsatz2 = (result+2)*1000
		tmpeinsatz3 = (result+3)*1000
		tmpeinsatz4 = (result+4)*1000
		
		SAY("Vous misez combien?")
		ANSWER("Je mise "..tmpeinsatz1..". Voil� le fric.",15)
		ANSWER("Je mise "..tmpeinsatz2..". Voil� le fric.",16)
		ANSWER("Je mise "..tmpeinsatz3..". Voil� le fric.",17)
		ANSWER("Je mise "..tmpeinsatz4..". Voil� le fric.",18)
		ANSWER("10 creds?",19)
	end

	NODE(4)
	if (node==state) then
		if (pstop == 0 ) then
			SAY("Prenez une carte.")
			SAY("Tirez.")
			SAY("A vous.")
			SAY("Voil� une carte.")
			SAY("Prenez-en une.")
			SAY("Tirez-en une.")
			SAY("Voil�.")
			SAY("Voil�, prenez.")
			cardcount=cardcount+1
			RAND(13)
			if( result==0 ) then
				ANSWER("2 de t�fle.",10)
				ANSWER("2 de coeur.",10)
				ANSWER("2 de pique.",10)
				ANSWER("2 de carreau.",10)
				var1 = var1 + 2
			else
				if( result==1 ) then
					ANSWER("3 de tr�fle.",10)
					ANSWER("3 de coeur.",10)
					ANSWER("3 de pique.",10)
					ANSWER("3 de carreau.",10)
					var1 = var1 + 3
				else
					if( result==2 ) then
						ANSWER("4 de tr�fle.",10)
						ANSWER("4 de coeur.",10)
						ANSWER("4 de pique.",10)
						ANSWER("4 de carreau.",10)
						var1 = var1 + 4
					else
						if( result==3 ) then
							ANSWER("5 de tr�fle.",10)
							ANSWER("5 de coeur.",10)
							ANSWER("5 de pique.",10)
							ANSWER("5 de carreau.",10)
							var1 = var1 + 5
						else
							if( result==4 ) then
								ANSWER("6 de tr�fle.",10)
								ANSWER("6 de coeur.",10)
								ANSWER("6 de pique.",10)
								ANSWER("6 de carreau.",10)
								var1 = var1 + 6
							else
								if( result==5 ) then
									ANSWER("7 de tr�fle.",10)
									ANSWER("7 de coeur",10)
									ANSWER("7 de pique.",10)
									ANSWER("7 de carreau.",10)
									var1 = var1 + 7
								else
									if( result==6 ) then	
										ANSWER("8 de tr�fle.",10)
										ANSWER("8 de coeur",10)
										ANSWER("8 de pique.",10)
										ANSWER("8 de carreau.",10)
										var1 = var1 + 8
									else
										if( result==7 ) then	
											ANSWER("9 de tr�fle.",10)
											ANSWER("9 de coeur.",10)
											ANSWER("9 de pique.",10)
											ANSWER("9 de carreau.",10)
											var1 = var1 + 9
										else
											if( result==8 ) then
												ANSWER("As de coeur, pour 1 point.",5)
												ANSWER("As de pique, pour 1 point.",5)
												ANSWER("As de carreau, pour 1 points.",5)
												ANSWER("As de tr�fle, pour 1 point.",5)
												ANSWER("As de coeur, pour 11 points.",6)
												ANSWER("As de pique, pour 11 points.",6)
												ANSWER("As de carreau, pour 11 points.",6)
												ANSWER("As de tr�fle, pour 11 points.",6)
											else
												if( result>8) then	
													ANSWER("10 de tr�fle.",10)
													ANSWER("10 de coeur.",10)
													ANSWER("10 de pique.",10)
													ANSWER("10 de carreau.",10)
													
													ANSWER("Valet de tr�fle.",10)
													ANSWER("Valet de coeur.",10)
													ANSWER("Valet de pique.",10)
													ANSWER("Valet de carreau.",10)
													
													ANSWER("Dame de tr�fle.",10)
													ANSWER("Dame de coeur.",10)
													ANSWER("Dame de pique.",10)
													ANSWER("Dame de carreau.",10)
													
													ANSWER("Roi de tr�fle.",10)
													ANSWER("Roi de coeur.",10)
													ANSWER("Roi de pique.",10)
													ANSWER("Roi de carreau.",10)
													var1 = var1 + 10
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		else
			SAY("Vous avez arr�t�.")
			SAY("Vous avez stopp� l�.")
			SAY("C'est fini pour vous.")
			SAY("Plus de cartes pour vous.")
			ANSWER("Je sais, mais on continue.",21)
			ANSWER("Je m'en fiche, on continue.",21)
			ANSWER("C'est moi qui d�cide. On continue.",21)
		end
						
	end	


-- Fall Spieler zieht AS
	NODE(5)
	if (node==state) then
		var1 = var1 + 1	
		SAY("D'accord.")
		ANSWER("Quel est le compte?",10)
	end
	
	NODE(6)
	if (node==state) then
		var1 = var1 + 11	
		SAY("11? Bien.")
		ANSWER("Vous avez compt�?",10)
	end

--Spielauswertung Spieler

	NODE(10)
	if (node==state) then
		if (var1 == 21) then
			if (cardcount==2) then
				GIVEMONEY(einsatz*3)
				SAY("BLACKJACK!! 21 avec 2 cartes, on voit pas �a tous les jours! Et voil�, vous triplez votre mise. Vous voulez remettre �a?")
				ANSWER("Cool! On en refait une!",3)
				ANSWER("Je vais m'arr�ter. La chance, faut pas en abuser.",102)
			else
				GIVEMONEY(einsatz*2)
				SAY("Ouah! Pile 21! On voit pas �a tous les jours. Tenez, voil� votre argent. On en refait une?")
				ANSWER("On en refait une, ouais!",3)
				ANSWER("Non, je m'arr�te. J'ai pas d'argent � gaspiller.",102)
			end
		else	
			if (var1 > 21) then
				SAY("Pas de chance, vous avez d�pass� 21! On en refait une?")
				ANSWER("Evidemment! C'est reparti!",3)
				ANSWER("Je m'arr�te l�.",102)
			else
				if (var1 < 21) then
					if (var1 < 12) then
						SAY("Ca fait "..var1..".")
						SAY(""..var1.." points.")
						SAY("Vous avez "..var1..".")
						SAY("Vous avez pour l'instant "..var1..".")
						SAY("Ca vous fait "..var1.." points.")
						ANSWER("Okay. A vous.",21)
						ANSWER("Votre tour.",21)
						ANSWER("Jouez.",21)
						ANSWER("C'est � vous.",21)
						ANSWER("A vous de jouer.",21)
					else
						if (var1 < 17) then
							SAY("Vous avez "..var1..". Quand vous avez plus de 17 points, vous pouvez vous arr�ter l�.")
							SAY("Ca vous fait "..var1.." points. Quand vous avez plus de 17, vous pouvez arr�ter d'acheter.")
							SAY("Vous pouvez arr�ter quand vous avez plus de 17. Pour l'instant, vous avez "..var1..".")
							ANSWER("On continue.",21)
							ANSWER("Je sais, on continue!",21)
							ANSWER("Yep. Continuez.",21)
							ANSWER("Je connais les r�gles, on continue",21)
						else
							if (nstop==0) then
								SAY("Ca vous fait "..var1..". Vous continuez?")
								SAY("Vous avez "..var1.." points. Un autre tirage?")
								SAY("Ca fait "..var1..". Encore?")
								ANSWER("Evidemment.",21)
								ANSWER("J'arr�te. A vous.",20)
							else
								if (var1 > var3) then
									GIVEMONEY(einsatz * 2)
									SAY("Vous avez gagn�! Voil� votre fric.")
									ANSWER("Sympa! J'en refais une.",3)
									ANSWER("Excellent! J'arr�te avant de tout perdre.",102)
								else
									SAY("Vous avez "..var1..", et moi "..var3..". Vous devez continuer.")
									ANSWER("Ok.",4)
								end
							end	
						end
					end
				end
			end
		end
	end



--Einsatz wird bestimmt

	NODE(15)
	if (node==state) then
		einsatz=tmpeinsatz1
		if (einsatz < 3000) then
			TAKEMONEY(einsatz)
			SAY("C'est pas lourd! Avec si peu, je me donnerais m�me pas la peine de jouer. Mais c'est comme vous voulez.")
			ANSWER("Arr�tez de bavarder et donnez-moi une carte.",4)
		else	
			if (einsatz > 5000) then
				TAKEMONEY(einsatz)
				SAY("Ah, avec une mise pareille, �a commence � devenir int�ressant!")
				ANSWER("Je fais jamais les choses � moiti�. C'est parti.",4)
			else	
				TAKEMONEY(einsatz)
				SAY("Le fric est sur la table, on commence!")
				ANSWER("C'est parti!",4)
			end
		end
		if (result==0) then
			SAY("D�sol�, sans argent, pas de partie.")
			ENDDIALOG()
		end
	end
	
	NODE(16)
	if (node==state) then
		einsatz=tmpeinsatz2
		if (einsatz < 3000) then
			TAKEMONEY(einsatz)
			SAY("C'est pas lourd! Avec si peu, je me donnerais m�me pas la peine de jouer. Mais c'est comme vous voulez.")
			ANSWER("Arr�tez de bavarder et donnez-moi une carte.",4)
		else	
			if (einsatz > 5000) then
				TAKEMONEY(einsatz)
				SAY("Ah, avec une mise pareille, �a commence � devenir int�ressant!")
				ANSWER("Je fais jamais les choses � moiti�. C'est parti.",4)
			else	
				TAKEMONEY(einsatz)
				SAY("Le fric est sur la table, on commence!")
				ANSWER("C'est parti!",4)
			end
		end
		if (result==0) then
			SAY("D�sol�, sans argent, pas de partie.")
			ENDDIALOG()
		end
	end
	
	NODE(17)
	if (node==state) then
		einsatz=tmpeinsatz3
		if (einsatz < 3000) then
			TAKEMONEY(einsatz)
			SAY("C'est pas lourd! Avec si peu, je me donnerais m�me pas la peine de jouer. Mais c'est comme vous voulez.")
			ANSWER("Arr�tez de bavarder et donnez-moi une carte.",4)
		else	
			if (einsatz > 5000) then
				TAKEMONEY(einsatz)
				SAY("Ah, avec une mise pareille, �a commence � devenir int�ressant!")
				ANSWER("Je fais jamais les choses � moiti�. C'est parti.",4)
			else	
				TAKEMONEY(einsatz)
				SAY("Le fric est sur la table, on commence!")
				ANSWER("C'est parti!",4)
			end
		end
		if (result==0) then
			SAY("D�sol�, sans argent, pas de partie.")
			ENDDIALOG()
		end
	end
	
	NODE(18)
	if (node==state) then
		einsatz=tmpeinsatz4
		if (einsatz < 3000) then
			TAKEMONEY(einsatz)
			SAY("C'est pas lourd! Avec si peu, je me donnerais m�me pas la peine de jouer. Mais c'est comme vous voulez.")
			ANSWER("Arr�tez de bavarder et donnez-moi une carte.",4)
		else	
			if (einsatz > 5000) then
				TAKEMONEY(einsatz)
				SAY("Ah, avec une mise pareille, �a commence � devenir int�ressant!")
				ANSWER("Je fais jamais les choses � moiti�. C'est parti.",4)
			else	
				TAKEMONEY(einsatz)
				SAY("Le fric est sur la table, on commence!")
				ANSWER("C'est parti!",4)
			end
		end
		if (result==0) then
			SAY("D�sol�, sans argent, pas de partie.")
			ENDDIALOG()
		end
	end
	
	NODE(19)
		SAY("C'est pas pour les gamins, c'est pour les grands!")
		ANSWER("D'accord, d'accord, je vais miser plus...",3)
		ANSWER("C'est trop cher pour moi, je m'en vais.",100)
	
	
--NPC Spiel
	NODE(20)
	if (node==state) then
		pstop = 1	
		SAY("C'est fini.")
		ANSWER("Ouaip.",21)
	end
			
--NPC zieht Karte
	NODE(21)
	if (node==state) then
		if (nstop==0) then
			cardcount2=cardcount2+1
			RAND(13)
			if( result==0 ) then
				SAY("2 de tr�fle.")
				SAY("2 de coeur.")
				SAY("2 de pique.")
				SAY("2 de carreau.")
				var3 = var3 + 2
				ANSWER("Ca fait combien?",24)
			else
				if( result==1 ) then
					SAY("3 de tr�fle.")
					SAY("3 de coeur.")
					SAY("3 de pique.")
					SAY("3 de carreau.")
					var3 = var3 + 3
					ANSWER("Ca fait combien?",24)
				else
					if( result==2 ) then
						SAY("4 de tr�fle.")
						SAY("4 de coeur.")
						SAY("4 de pique.")
						SAY("4 de carreau.")
						var3 = var3 + 4
						ANSWER("Ca fait combien?",24)
					else
						if( result==3 ) then
							SAY("5 de tr�fle.")
							SAY("5 de coeur.")
							SAY("5 de pique.")
							SAY("5 de carreau.")
							var3 = var3 + 5
							ANSWER("Ca fait combien?",24)
						else
							if( result==4 ) then
								SAY("6 de tr�fle.")
								SAY("6 de coeur.")
								SAY("6 de pique.")
								SAY("6 de carreau.")
								var3 = var3 + 6
								ANSWER("Ca fait combien?",24)
							else
								if( result==5 ) then
									SAY("7 de tr�fle.")
									SAY("7 de coeur.")
									SAY("7 de pique.")
									SAY("7 de carreau.")
									var3 = var3 + 7
									ANSWER("Ca fait combien?",24)
								else
									if( result==6 ) then	
										SAY("8 de tr�fle.")
										SAY("8 de coeur.")
										SAY("8 de pique.")
										SAY("8 de carreau.")
										var3 = var3 + 8
										ANSWER("Ca fait combien?",24)
									else
										if( result==7 ) then	
											SAY("9 de tr�fle.")
											SAY("9 de coeur.")
											SAY("9 de pique.")
											SAY("9 de carreau.")
											var3 = var3 + 9
											ANSWER("Ca fait combien?",24)
										else
											if( result==8 ) then
												SAY("As de tr�fle.")
												SAY("As de coeur.")
												SAY("As de pique.")
												SAY("As de carreau")
												ANSWER("On le compte comment?",23)
											else
												if( result>8) then	
													SAY("Valet de tr�fle.")
													SAY("Valet de coeur.")
													SAY("Valet de pique.")
													SAY("Valet de carreau.")
													SAY("10 de tr�fle.")
													SAY("10 de coeur.")
													SAY("10 de pique.")
													SAY("10 de carreau.")
													SAY("Dame de tr�fle.")
													SAY("Dame de coeur.")
													SAY("Dame de pique.")
													SAY("Dame de carreau.")
													SAY("Roi de tr�fle.")
													SAY("Roi de coeur.")
													SAY("Roi de pique.")
													SAY("Roi de carreau.")
													var3 = var3 + 10
													ANSWER("Ca fait combien?",24)
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		else
			SAY("J'ai fini, � vous....")
			SAY("J'arr�te, � vous....")
			SAY("A vous, je ne tire plus rien.")
			ANSWER("D'accord.",4)
		end	
	end

--Fall:NPC zieht AS
	NODE(23)
	if (node==state) then
		if (var3 < 10) then
			var3 = var3 + 11	
			SAY("Ca vaut 11.")
			SAY("11 points.")
			SAY("11 points, c'est parfait.")
			ANSWER("Quel est le score",24)
			ANSWER("Va pour 11 points. Quel est le score?",24)
		else
			if (var3 == 10) then
                 		if (cardcount2==2) then
                 			TAKEMONEY(einsatz)
					var3 = var3 + 11	
					SAY("11! Blackjack! Vous me devez "..einsatz.."!")
					ANSWER("Vous avez eu de la veine! Allez, une autre!",3)
					ANSWER("Vous avez trop de chance, j'arr�te l�.",102)
             			else
             				SAY("Ca vaut 1, �videmment! Et �a me fait 21 exactement!")
             				ANSWER("Exact. Vous �tes bon! Allez, une autre!",3)
							ANSWER("Vous avez trop de chance, j'arr�te l�.",102)
		        	end
			else
				if (var3 < 19) then
					var3 = var3 + 1	
					SAY("Ca vaut 1, �videmment! Sinon je d�passe les 21!")
					SAY("Pas 11. Je prends 1.")
					ANSWER("Ca fait combien?",24)	
				else
					if (var3 == 20) then
						var3 = var3 + 1	
						SAY("1, �videmment, �a me fait 21 exactement!")
						ANSWER("Exact. Vous �tes bon! Allez, une autre!",3)
						ANSWER("Vous avez trop de chance, j'arr�te l�.",102)
					end
				end
			end
		end
	end
	
--Allgemeine Spielauswertung NPC

	NODE(24)
	if (node==state) then
		if (var3 == 21) then
			if (cardcount2 == 2) then
				TAKEMONEY(einsatz)
				SAY("11!!! Blackjack! Vous me devez "..einsatz.."!")
				ANSWER("Exact. Vous �tes bon! Allez, une autre!",3)
				ANSWER("Vous avez trop de chance, j'arr�te l�.",102)
			else
				SAY("J'ai gagn�! J'ai fait 21!")
				ANSWER("Exact. Vous �tes bon! Allez, une autre!",3)
				ANSWER("Vous avez trop de chance, j'arr�te l�.",102)
			end
		else	
			if (var3 > 21) then
				GIVEMONEY(einsatz * 2)
				SAY("Grrr..."..var1.." � "..var3..". Vous avez gagn�, voil� votre argent. On en refait une?")
				ANSWER("Evidemment!",3)
				ANSWER("Je m'arr�te l�.",102)
			else
				if (var3 < 17) then
					SAY(""..var1.." � "..var3..".")
					SAY("C'est "..var1.." � "..var3..".")
					SAY("Le score? "..var1.." � "..var3..".")
					ANSWER("On continue.",4)
					ANSWER("Continuons.",4)
					ANSWER("On encha�ne!",4)
					ANSWER("C'est reparti...",4)
					ANSWER("On remet �a.",4)
				else
					if (var3 < var1) then
						SAY("Hmmm..."..var1.." � "..var3.." Continuez, vous �tes devant moi.")
						ANSWER("Okay. On we go.",21)
					else
						if (var1 == var3) then
							SAY(""..var1.." � "..var3..". Egalit�. On doit continuer.")
							var1=0
							var3=0
							ANSWER("On continue!",4)
							ANSWER("D'accord.",4)
							ANSWER("Ca marche.",4)
							ANSWER("C'est reparti.",4)
							ANSWER("On remet �a.",4)
						else
							if (pstop==1) then
								SAY(""..var1.." � "..var3..". je gagne. On en refait une?")
								ANSWER("Evidemment!",3)
				ANSWER("Je m'arr�te l�.",102)	
							else
								SAY(""..var1.." � "..var3..". Je m'arr�te, trop risqu�. Continuez si vous voulez.")
								nstop=1
								ANSWER("On continue!",4)
							end
						end
					end
				end
			end
		end
	end

	
-- Dialog Ausstiege 
	NODE(100)
		SAY("Mais quel rasoir! Allez-vous en, avant de me ruiner mon businness.")
		SAY("Si vous voulez pas jouer, allez vous faire foutre!")
		ENDDIALOG()

	NODE(102)
		SAY("Quand vous voulez.")
		SAY("A la prochaine!")
		ENDDIALOG()

end