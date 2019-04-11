--************************
--name   : SINGLE_DEL_BT_02.lua
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
		SAY("Ja Runner, wie kann ich helfen?")
		SAY("Gruesse Buerger, was kann ich fuer Sie tun?")
		SAY("Hallo Runner, was kann ich für Sie tun?")
		
		ANSWER("Ich hab einen Lieferjob am BioTech Terminal angenommen. Was soll geliefert werden?",1)
		ANSWER("Ich bin wegen einem Botenjob hier. Den hab ich am BioTech Terminal angenommen.",1)
		ANSWER("Entschuldigung, ich dachte, Sie waeren jemand anderes. Bye.",4)

	NODE(1)
		GIVEQUESTITEM(91)
		SAY("Eine Gruppe Techniker braucht diesen Recycler. %NPC_NAME(1) wird Sie in %NPC_WORLD(1) treffen, um die Ware entgegen zu nehmen.  Die Techs brauchen den Recycler, um Ihre Arbeit fortsetzen zu koennen, also beeilen Sie sich bitte. Bei mir erhalten Sie danach Ihr Geld.")
		SAY("%NPC_NAME(1) ist ein BioTech Angestellter, der in %NPC_WORLD(1) arbeitet.  Bitte bringen Sie ihm diesen Recycler so schnell wie moeglich.  Ich werde Sie danach fuer den Job bezahlen.")
		SAY("Ok Runner, sie kennen sich bestimmt in %NPC_WORLD(1) aus. Bringen Sie diesen Recycler zu %NPC_NAME(1), einem unserer Techniker.  Die Arbeit kann ohne dieses Geraet nicht fortgesetzt werden, also beeilen Sie sich bitte. Bei mir erhalten Sie dann Ihr Geld fuer den Job.")
		ACTIVATEDIALOGTRIGGER(0)
		SETNEXTDIALOGSTATE(2)
		ENDDIALOG()

	NODE(2)	
		ISMISSIONTARGETACCOMPLISHED(1)
			if (result==0) then
				SAY("Runner, warum sind Sie schon wieder zurueck? %NPC_NAME(1) wartet immer noch auf den Recycler. Gehen Sie jetzt und machen Ihren Job!")
				SAY("Verdammt! Was suchen Sie hier noch? Der Recycler soll nach %NPC_WORLD(1). Und jetzt raus mit Ihnen!")
				ENDDIALOG()
			else
				SAY("Gute Arbeit, Runner.  BioTech ist mit Ihrer Leistung zufrieden.  Hier sind die %REWARD_MONEY() Credits. Ich hoffe, wir sehen uns mal wieder.")
				SAY("Sehr gut. Hier sind die versprochenen %REWARD_MONEY() Credits.  Ich hoffe, wir arbeiten mal wieder zusammen.") 
				ACTIVATEDIALOGTRIGGER(2)
				ENDDIALOG()
			end
	NODE(3)
		TAKEQUESTITEM(91)
			if (result==0) then
				SAY("Wo ist der Recycler? Sie sollten mir doch einen liefern. Holen Sie ihn schon!")
				SAY("Was?  Sie haben den Recycler nicht? Dann holen Sie ihn und bringen ihn her.")
				ENDDIALOG()
			else	
				SAY("Ah ja, der Recycler.  Endlich kann ich den Muell hier in was Brauchbares verwandeln und meine Arbeit fortsetzen.  Gut gemacht. Gehen Sie zu %NPC_NAME(0) zurueck, um sich die Bezahlung abzuholen.")
				SAY("Der Recycler, endlich!  Gute Arbeit, Runner. Nun melden Sie sich wieder bei %NPC_NAME(0) und kassieren die Bezahlung.")
				SAY("Endlich bringen Sie mir den Recycler. Das wird mir weiterhelfen. Danke, Runner.")
				ACTIVATEDIALOGTRIGGER(1)	
				SETNEXTDIALOGSTATE(5)
				ENDDIALOG()
			end
	NODE(4)
		SAY("Bye.")
		SAY("Kommen Sie zurueck, wenn Sie wissen, was Sie wollen.")
		ENDDIALOG()
	NODE(5)
		SAY("Hey was machen Sie noch hier? Los gehen Sie zu %NPC_NAME(0) um Ihre Belohnung abzuholen.")
		ENDDIALOG()
end

