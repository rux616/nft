--************************
--name   : SINGLE_AG_TG_02.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/09/08
--lang   : de
--desc	 : terminal mission
--npc    :
--************************
--changelog:
--2004/09/08(0.1): recheck(Ferron)
--YYYY/MM/DD(0.0)
--************************

function DIALOG()

	NODE(0)
		SAY("Hey Freund, bist du wegen dem Job hier oder nicht?")
		SAY("Mach es kurz, was willst du?")
		SAY("Ich hoffe, du hast einen guten Grund mich zu stoeren.")
		SAY("Also hier haben wir... oh warte, vergessen. Ich bin kein Fremdenfuehrer, also was zum Teufel willst du?")
		SAY("Zeit ist Geld, Freund. Ich hab von beidem wenig. Also was willst du?")
		SAY("Hmmm... du siehst wie ein wagemutiger Typ aus. Willst du was ueber den Job wissen?")
		
		ANSWER("Ich bin wegen dem Job hier. Was genau muss ich machen?",1)
		ANSWER("Gib mir einfach die Details des Jobs und ich bin schon wieder weg.",1)
		ANSWER("Ich wollte zu dem, der den Saeuberungsjob vergibt. Wenn du das bist, gib mir die Details.",1)
		ANSWER("Oh, ich denke, du bist nicht der, nach dem ich gesucht habe.",4)
		ANSWER("Ich denke, ich verschwende deine Zeit. Falsche Person.",4)
		ANSWER("Oops, ich suche nach jemand anderem.",4)
	NODE(1)
		SAY("Grossartig! Toll! SUPER! Hier ist deine Mission, Jackass. Schau dich in der Gegend hier um und finde %TARGET_VALUE() %TARGET_NPCNAME(0). Schick sie zur Hoelle. Dann, auch wenn es mich schmerzt das zu sagen, komm zu mir zurueck und ich gebe dir dein Geld.")
		SAY("Warum zum Teufel trifft es immer mich? Ich will zum Geheimdienst, aber nein... diese verdammte Guardianverwaltung denkt, ich hab ein Problem mit Wutausbruechen! Ich zeig den gleich mal einen verdammten Wutausbruch!! ... Oh, immer noch da? Ok, toete %TARGET_VALUE() %TARGET_NPCNAME(0); sie sollten nicht schwer hier in der Gegend zu finden seien. Und Chummer, ich wollte, dass der Job schon gestern erledigt ist. Du verstehst mich? Vergiss nicht, dir hier deinen Lohn abzuholen.")
		SAY("Ich haette schon vor ein paar Tagen jemanden gebraucht, der diese verdammten Viecher umnietet. Ein wenig spaet jetzt, oder? Nun, falls du diese Viecher immer noch findest, erledige %TARGET_VALUE() %TARGET_NPCNAME(0) davon. Wenn du damit fertig bist, werd ich dich ausbezahlen.")
		SAY("Das hier ist verdammt einfach, was ja passt, weil du aussiehst, wie jemand, der aus Spass seinen Kopf gegen die Wand schlaegt. %TARGET_VALUE() %TARGET_NPCNAME(0) toeten, dann zu mir kommen, dann Geld bekommen? Verstanden? Gut, los!")
		SAY("Okay, so laeuft es ab. Finde %TARGET_VALUE() %TARGET_NPCNAME(0). Nachdem du sie aufgespuert hast... verwandle sie in Hackfleisch oder in das, woraus auch immer die bestehen. Wenn du das geschafft hast, komm hierher zurueck. Oh, hier noch ein kostenloser Ratschlag: versuch die Trips mit den GenReps auf ein Minimum zu reduzieren. Du siehst nicht aus, wie jemand, der mit zuviel Intelligenz gesegnet ist und ich hoerte, dass diese wahnsinnigen Monks die Teile so entwickelt haben, dass sie einem mit der Zeit das Gehirn zu Brei verwandeln.")
		SAY("Du siehst aus, als ob du Gewalt liebst. Sei froh, dieser Job verlangt genau danach. Bringe %TARGET_VALUE() %TARGET_NPCNAME(0) um und bereite denen soviel Schmerzen, wie du willst. Wenn du fertig bist, kriegst du von mir deine Creds. Nun zisch ab, ich hab zu tun.")
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()
	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(0)
			if (result==0) then
				SAY("Du kannst unmoeglich fertig sein. Beende den Job bevor du wiederkommst.")
				SAY("Ich kaempfe schon lange fuer den Guardian, aber niemand war bisher so schnell wie du. Achso, du bist noch nicht fertig?! Dann erledige endlich diesen verdammten Job.")
				SAY("Neocron wird nicht befreit, wenn wir hier nur rumsitzen und reden. Also mach deine Arbeit und lass mich meine machen!")
				ENDDIALOG()
			else
				SAY("Nun, du hast den Job erledigt! Ich denke, es ist immer noch Hoffnung fuer die Freiheit. Hier sind deine %REWARD_MONEY() Credits fuer die Arbeit und vergiss nicht, wiederzukommen, wenn du weitere Jobs suchst.")
				SAY("Heute ist ein Tag voller Ueberraschungen! Ich haette nicht gedacht, dass du das hinbekommst. Okay, fair ist fair: hier sind deine %REWARD_MONEY() Credits und denk dran, der Guardian hat noch viel mehr Jobs zu vergeben, wenn du interessiert bist")
				SAY("Jeden Tag erlebt man was neues. Okay, nimm die %REWARD_MONEY() Credits fuer deine Hilfe. Nun zisch ab, ich hab zu tun!")
				SAY("Denke, ich hab dich unterschaetzt, Kumpel. Tschuldigung, wenn ich vorhin etwas grob war, aber die Dinge haben sich... alle sind hier etwas angespannt. Egal, hier ist dein Lohn, %REWARD_MONEY() Creds, fuer die Arbeit. Schau bei den Terms vorbei, wenn du weitere Arbeit suchst. Der Guardian kann Leute gebrauchen, die Dinge zu Ende bringen koennen.")
				SAY("Du hast den Job erledigt, nicht wahr? Gut, hier sind die %REWARD_MONEY() Credits. Freiheit fuer die Menschen!")
				SAY("Job erledigt? Gut. Ich hab die %REWARD_MONEY() Credits ueberwiesen. Wenn du mehr Geld brauchst, schau auf den Terms nach Arbeit. Ich bin sicher, dass der Guardian was Lukratives im Angebot hat.")
				ACTIVATEDIALOGTRIGGER(1)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Und warum kommst du dann her und kaust mir ein Ohr ab? Verschwinde!")
		SAY("Du verschwindest hier besser, bevor ich mir darueber klar werden, wie dumm das gerade war.")
		SAY("Dann verschwinde!")
		ENDDIALOG()
end
